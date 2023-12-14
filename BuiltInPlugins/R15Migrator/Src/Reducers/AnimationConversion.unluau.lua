-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var19 = {}
var19.selection = {}
var19.animations = {}
var19.status = require(var0.Src.Util.AnimationConversion.constants).Status.NotStarted
var19.processResult = ""
local var25 = {}
function var25.SetSelection(arg1, arg2)
   local var29 = var1.Dictionary
   var29 = arg1
   local var31 = {}
   var31.selection = arg2.selection
   return var29.join(var29, var31)
end

function var25.SetAnimations(arg1, arg2)
   local var37 = var1.Dictionary
   var37 = arg1
   local var39 = {}
   var39.animations = arg2.animations
   return var37.join(var37, var39)
end

function var25.SetStatus(arg1, arg2)
   local var45 = var1.Dictionary
   var45 = arg1
   local var47 = {}
   var47.status = arg2.status
   return var45.join(var45, var47)
end

function var25.SetReplaceProcessResult(arg1, arg2)
   local var53 = var1.Dictionary
   var53 = arg1
   local var55 = {}
   var55.processResult = arg2.processResult
   return var53.join(var53, var55)
end

return require(var0.Packages.Rodux).createReducer(var19, var25)
