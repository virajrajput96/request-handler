local _M = {}

function _M.execute(conf)
local host = "example.com"


  if string.match(host,"$") then
  ngx.log(ngx.ERR, "Bad request: ")
    ngx.header["request-handler"] = "Request-handler Bad Request"
    
  else
    ngx.log(ngx.ERR, "Successful request: ")
    ngx.header["request-handler"] = "Request-handler request successful!!!!!"

end  
end
return _M
