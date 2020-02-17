package = "request-intercept"

version = "0.1.0-1"

source = {
  url = "git://github.com/GreatWriter/request-intercept",
}

description = {
  summary = "Kong plugin to authenticate requests using http services.",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.request-intercept.handler"] = "src/handler.lua",
    ["kong.plugins.request-intercept.schema"] = "src/schema.lua"
  }
}