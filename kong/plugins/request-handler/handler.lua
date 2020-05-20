local basic_serializer = require "kong.plugins.log-serializers.basic"
local cjson = require "cjson"

local BasePlugin = require "kong.plugins.base_plugin"
local requestHandler = BasePlugin:extend()


requestHandler.PRIORITY = 2000
requestHandler.version = "0.1-1"

function requestHandler:new()
  requestHandler.super.new(self, "request-handler")
end


function requestHandler:log(conf)
  local host = conf.host
end


function requestHandler:access(conf)
  requestHandler.super.access(self)

     
  if string.match(host,"$") then
  ngx.log(ngx.ERR, "Bad request: ")
    ngx.header["request-handler"] = "Request-handler Bad Request"
    
  else
    ngx.log(ngx.ERR, "Successful request: ")

      ngx.header["request-handler"] = "Request-handler request successful!!!!!"

  end
 

end

return requestHandler
