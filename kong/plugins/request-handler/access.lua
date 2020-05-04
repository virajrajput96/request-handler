local _M = {}

function _M.execute()
  if (string.match(str, ";") or string.match(kong.request.get_scheme(),"$") or string.match(kong.request.get_host(),"$") or string.match(kong.request.get_port(),"$") or string.match(kong.request.get_forwarded_scheme(),"$") or string.match(kong.request.get_forwarded_host(),"$") or string.match(kong.request.get_forwarded_port(),"$") or string.match(kong.request.get_http_version(),"$") or string.match(kong.request.get_method(),"$") or string.match(kong.request.get_path(),"$") or string.match(kong.request.get_raw_query(),"$") or string.match(kong.request.get_raw_query(),"$")) then
  print ("400,Bad Request")
  print ("Request can not contain '$'")
else
  print ("200,OK")
    print ("Request Sucessful.")
end
  
end
return _M