local BasePlugin = require "kong.plugins.base_plugin"

local RequestHandler = BasePlugin:extend()

RequestHandler.PRIORITY = 2004

function RequestHandler:new()
  RequestHandler.super.new(self, "request-handler")
end

function RequestHandler:access()
  RequestHandler.super.access()
  
 if (string.match(kong.request.get_scheme(),"$") or string.match(kong.request.get_host(),"$") or string.match(kong.request.get_port(),"$") or string.match(kong.request.get_forwarded_scheme(),"$") or string.match(kong.request.get_forwarded_host(),"$") or string.match(kong.request.get_forwarded_port(),"$") or string.match(kong.request.get_http_version(),"$") or string.match(kong.request.get_method(),"$") or string.match(kong.request.get_path(),"$") or string.match(kong.request.get_raw_query(),"$") or string.match(kong.request.get_raw_query(),"$")) then
  ngx.log(ngx.ERR, "Request")
  ngx.header["Request-handler"] = "Successful Request!!!"
else
  ngx.log(ngx.ERR, "Bad Request")
  ngx.header["Request-Handler"] = "Bad Request!!!"
end
  
end
return RequestHandler
