-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("Settings")
function var0.new(arg1)
   local var0 = {}
   var0.settings = arg1
   setmetatable(var0, var0)
   return var0
end

function var0.get(arg1)
   return arg1.settings
end

return var0
