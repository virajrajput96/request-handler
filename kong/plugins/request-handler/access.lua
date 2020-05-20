local _M = {}

function _M.execute(conf)
host= kong.request.get_host()
  if not string.match(host,"$") then
  ngx.log(ngx.ERR, "successful request: ")
   ngx.header["request-handler"] = "Request-handler request successful!!!!!"
    else
    ngx.log(ngx.ERR,"--------------ByeDuniya-----------")
    ngx.header["request-handler"] = "Bad request!!!!!"
  end
  
end
return _M
