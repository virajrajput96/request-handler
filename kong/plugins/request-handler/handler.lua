local BasePlugin = require "kong.plugins.base_plugin"
local requestHandler = BasePlugin:extend()


requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"

function requestHandler:new()
  requestHandler.super.new(self, "request-handler")
end

function requestHandler:access(conf)
  requestHandler.super.access(self)

   ngx.log(ngx.ERR, "successful request: ")
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
 

end

return requestHandler
