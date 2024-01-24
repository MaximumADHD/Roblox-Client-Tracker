-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AnimationConversion.constants)
local function var3()
   local var0 = {}
   var0.selection = {}
   var0.animations = {}
   var0.status = var2.Status.NotStarted
   var0.processResult = ""
   return var0
end

local var28 = {}
function var28.SetSelection(arg1, arg2)
   local var32 = var1.Dictionary
   var32 = arg1
   local var34 = {}
   var34.selection = arg2.selection
   return var32.join(var32, var34)
end

function var28.SetAnimations(arg1, arg2)
   local var40 = var1.Dictionary
   var40 = arg1
   local var42 = {}
   var42.animations = arg2.animations
   return var40.join(var40, var42)
end

function var28.SetStatus(arg1, arg2)
   local var48 = var1.Dictionary
   var48 = arg1
   local var50 = {}
   var50.status = arg2.status
   return var48.join(var48, var50)
end

function var28.SetReplaceProcessResult(arg1, arg2)
   local var56 = var1.Dictionary
   var56 = arg1
   local var58 = {}
   var58.processResult = arg2.processResult
   return var56.join(var56, var58)
end

function var28.ResetAllAnimationConversion(arg1)
   local var63 = var1.Dictionary
   var63 = arg1
   return var63.join(var63, var3())
end

return require(var0.Packages.Rodux).createReducer(var3(), var28)
