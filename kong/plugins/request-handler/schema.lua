local typedefs = require "kong.db.schema.typedefs"

return {
  name = "request-handler",
  no_consumer = true,
  fields = {
        { config = {
        type = "record",
        fields = {
          },
    }, }, },
  }


