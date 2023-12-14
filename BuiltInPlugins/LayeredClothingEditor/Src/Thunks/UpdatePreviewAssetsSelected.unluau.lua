-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.AvatarToolsShared).Util.AccessoryAndBodyToolShared
local var3 = var2.PreviewConstants
local var4 = var2.PreviewConstantsInterface
local var5 = require(var0.Src.Actions.SetPreviewAssetsSelected)
local var6 = require(var0.Src.Util.AnalyticsGlobals)
local var7 = require(var0.Packages.Framework).Util.deepCopy
local function var8(arg1, arg2, arg3, arg4)
   if arg2 then
      if arg3 then
         arg4 = arg4 or {}
         table.insert(arg4, arg1)
         return arg4
      end
      local var0 = arg1
      return {}
   end
   if arg4 then
      local var44 = var1
      local var45 = var44.List
      var45 = arg4
      var44 = arg1
      return var45.removeValue(var45, var44)
   end
   return nil
end

local function fun0(arg1)
   local var51 = var3.TABS_KEYS
   local var0 = arg1[var51.Avatars]
   if not var0 then
      return false
   end
   var51 = var0
   if next(var51) then
      return true
   end
   return false
end

return function(arg1, arg2)
   return function(arg1, arg2, arg3, arg4)
      if arg2 then
         if arg3 then
            arg4 = arg4 or {}
            table.insert(arg4, arg1)
            return arg4
         end
         local var0 = arg1
         return {}
      end
      if arg4 then
         local var73 = var1
         local var74 = var73.List
         var74 = arg4
         var73 = arg1
         return var74.removeValue(var74, var73)
      end
      return nil
   end
end
