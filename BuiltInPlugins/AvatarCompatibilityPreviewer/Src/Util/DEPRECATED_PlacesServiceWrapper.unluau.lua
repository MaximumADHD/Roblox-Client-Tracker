-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("PlacesServiceWrapper")
local var1 = {}
function var1.StartPlaySolo(arg1)
end

function var0.new()
   local var19 = {}
   var19._service = game:GetService("PlacesService")
   return setmetatable(var19, var0)
end

function var0.mock()
   local var27 = {}
   var27._service = var1
   return setmetatable(var27, var0)
end

function var0.get(arg1)
   return arg1._service
end

return var0
