local typedefs = require "kong.db.schema.typedefs"


return {
  
  name = "request-handler",
  fields = {
        { protocols = typedefs.protocols_http },
         { config = {
        type = "record",
        fields = {
          { host = typedefs.host({ required = true }), },
	        { port = typedefs.port({ required = true }), },
          { tls = { type = "boolean", default = false }, },
          { tls_sni = { type = "string" }, },
          },
        },
      },
    }
  }
