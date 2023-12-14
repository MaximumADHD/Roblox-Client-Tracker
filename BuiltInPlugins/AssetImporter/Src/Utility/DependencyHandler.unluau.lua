-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Flags.getFFlagShowRigSettingsNoJoints)
local var2 = require(var0.Packages.Framework).Dash.assign
local function var3(arg1)
   if arg1 ~= Enum.NormalId.Top then
      if arg1 == "NormalId" then
         local var0 = {}
         var0.Top = true
         var0.Bottom = true
         return var0
      end
   end
   local var21 = {}
   var21.Top = true
   var21.Bottom = true
   return var21
   if arg1 ~= Enum.NormalId.Right then
      if arg1 == "NormalId" then
         local var0 = {}
         var0.Right = true
         var0.Left = true
         return var0
      end
   end
   local var29 = {}
   var29.Right = true
   var29.Left = true
   return var29
   local var2 = {}
   var2.Front = true
   var2.Back = true
   return var2
end

local function fun0(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var2(var0, var3(var43))
   return var0
end

local var4 = {}
function var4.WorldForward(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var2(var0, var3(var43))
   return var0
end

function var4.WorldUp(arg1)
   local var0 = {}
   local var1 = pairs(arg1)
   var2(var0, var3(var43))
   return var0
end

function var4.RigType(arg1, arg2)
   if var1() then
      if not arg2:IsAvatar() then
         local var0 = {}
         var0.R15 = true
         return var0
      end
   end
   return {}
end

return function(arg1, arg2, arg3)
   if var4[arg1] then
      local var60 = var4
      var60 = arg2
      return var60[arg1](var60, arg3)
   end
   return nil
end
