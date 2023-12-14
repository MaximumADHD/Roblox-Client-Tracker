-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("StudioAssetServiceWrapper")
local var1 = {}
function var1.ShowSaveToRoblox(arg1)
end

function var0.new()
   local var15 = {}
   var15._service = game:GetService("StudioAssetService")
   return setmetatable(var15, var0)
end

function var0.mock()
   local var23 = {}
   var23._service = var1
   return setmetatable(var23, var0)
end

function var0.get(arg1)
   return arg1._service
end

return var0
