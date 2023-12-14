-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.constants).AssetType
local var1 = {}
var1.__index = var1
function var1.new(arg1, arg2, arg3)
   local var10 = {}
   var10.id = arg1
   var10.url = arg2
   var10._type = arg3
   return setmetatable(var10, var1)
end

function var1.IsA(arg1, arg2)
   if arg2 == "AnimationInstance" then
      if arg1._type ~= var0.RobloxAsset then
         local var0 = true
         if arg1._type ~= var0.AnimationInstance then
            if arg1._type ~= var0.AssetIdString then
               local var0 = false
            end
            local var0 = true
         end
      end
      return true
   end
   if arg1._type ~= arg2 then
      local var0 = false
   end
   return true
end

return var1
