local typedefs = require "kong.db.schema.typedefs"


return {
  
  no_consumer = true,
  fields = {
        { protocols = typedefs.protocols_http },
         { config = {
        type = "record",
        fields = {
          { host = typedefs.host({ required = true }), },
          { tls = { type = "boolean", default = false }, },
          { tls_sni = { type = "string" }, },
          },
        },
      },
    }
  }


