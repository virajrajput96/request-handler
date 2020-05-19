local BasePlugin = require "kong.plugins.base_plugin"
local requestHandler = BasePlugin:extend()


requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"

function HelloWorldHandler:new()
  HelloWorldHandler.super.new(self, "request-handler")
end

function HelloWorldHandler:access(conf)
  HelloWorldHandler.super.access(self)

   ngx.log(ngx.ERR, "successful request: ")
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 

end

return requestHandler
