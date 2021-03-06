require 'webrick'
require 'erb'
server = WEBrick::HTTPServer.new(:Port=>8080)
server.mount_proc('/'){ |req, resp|
    File.open('notepad.txt', 'w'){ |f| f.write req.query["text"] } if req.query["text"]
    resp['Content-Type'] = 'text/html'
    template = %& <html><body><center><form method="post">
        <textarea name="text" rows="4" cols="40"><%=IO.read('notepad.txt')%></textarea><br/>
        <input type="submit" name="update" value="Save please"/>
        </form></center></body></html>&
    resp.body = ERB.new(template).result
}
server.start
