-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetImporter").Packages.Framework).Dash.assign
local function var1(arg1)
   if arg1 ~= Enum.NormalId.Top then
      if arg1 == "NormalId" then
         local var0 = {}
         var0.Top = true
         var0.Bottom = true
         return var0
      end
   end
   local var16 = {}
   var16.Top = true
   var16.Bottom = true
   return var16
   if arg1 ~= Enum.NormalId.Right then
      if arg1 == "NormalId" then
         local var0 = {}
         var0.Right = true
         var0.Left = true
         return var0
      end
   end
   local var24 = {}
   var24.Right = true
   var24.Left = true
   return var24
   local var2 = {}
   var2.Front = true
   var2.Back = true
   return var2
end

local function fun0(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var0(var0, var1(var38))
   return var0
end

local var2 = {}
function var2.WorldForward(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var0(var0, var1(var38))
   return var0
end

function var2.WorldUp(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var0(var0, var1(var38))
   return var0
end

function var2.RigType(arg1, arg2)
   if not arg2:IsAvatar() then
      local var0 = {}
      var0.R15 = true
      return var0
   end
   return {}
end

return function(arg1, arg2, arg3)
   if var2[arg1] then
      local var53 = var2
      var53 = arg2
      return var53[arg1](var53, arg3)
   end
   return nil
end
