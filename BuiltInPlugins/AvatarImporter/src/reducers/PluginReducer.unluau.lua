-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.src.Constants)
local var3 = var0.src.actions
local var31 = {}
var31.enabled = false
var31.screen = var2.SCREENS.AVATAR
var31.avatarType = nil
function require(var3.ClosePlugin).name(arg1, arg2)
   if arg1.screen == "force" then
      if arg2.force then
         local var46 = var1.Dictionary
         var46 = arg1
         local var48 = {}
         var48.enabled = false
         return var46.join(var46, var48)
      end
   end
   local var52 = var1.Dictionary
   var52 = arg1
   local var54 = {}
   var54.enabled = false
   return var52.join(var52, var54)
   return arg1
end

function require(var3.TogglePlugin).name(arg1)
   local var60 = var1.Dictionary
   var60 = arg1
   local var62 = {}
   var62.enabled = arg1.enabled
   var62.screen = var2.SCREENS.AVATAR
   return var60.join(var60, var62)
end

function require(var3.SetScreen).name(arg1, arg2)
   local var73 = var1.Dictionary
   var73 = arg1
   local var75 = {}
   var75.screen = arg2.screen
   return var73.join(var73, var75)
end

function require(var3.SetOriginalAvatarType).name(arg1, arg2)
   local var82 = var1.Dictionary
   var82 = arg1
   local var84 = {}
   var84.avatarType = arg2.avatarType
   return var82.join(var82, var84)
end

return require(var0.Packages.Rodux).createReducer(var31, {})
