package = "kong-plugin-conditional-upstream"

version = "0.1.0-1"
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/azumafuji/kong-plugin-conditional-upstream",
  tag = "0.1.0"
}

description = {
  summary = "Sets the upstream host based on the value of a header",
  homepage = "https://github.com/azumafuji/kong-plugin-conditional-upstream",
  license = "Apache"
}

dependencies = {
}

local pluginName = "conditional-upstream"  
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
