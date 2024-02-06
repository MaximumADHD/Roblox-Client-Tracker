-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AnimationConversion.constants)
local function var3()
   local var0 = {}
   var0.selection = {}
   var0.animations = {}
   var0.status = var2.Status.NotStarted
   return var0
end

local var27 = {}
function var27.SetSelection(arg1, arg2)
   local var31 = var1.Dictionary
   var31 = arg1
   local var33 = {}
   var33.selection = arg2.selection
   return var31.join(var31, var33)
end

function var27.SetAnimations(arg1, arg2)
   local var39 = var1.Dictionary
   var39 = arg1
   local var41 = {}
   var41.animations = arg2.animations
   return var39.join(var39, var41)
end

function var27.SetStatus(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   var49.status = arg2.status
   return var47.join(var47, var49)
end

function var27.ResetAllAnimationConversion(arg1)
   local var54 = var1.Dictionary
   var54 = arg1
   return var54.join(var54, var3())
end

return require(var0.Packages.Rodux).createReducer(var3(), var27)
