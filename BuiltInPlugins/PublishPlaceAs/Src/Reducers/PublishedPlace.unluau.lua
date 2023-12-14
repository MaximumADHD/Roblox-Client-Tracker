-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
var2.isPublishing = false
local var14 = {}
var14.id = 0
var14.name = ""
var14.parentGameName = ""
var14.parentGameId = 0
var14.settings = {}
local var20 = ""
var14.message = var20
var2.publishInfo = var14
var20 = var2
local var22 = {}
function var22.SetIsPublishing(arg1, arg2)
   local var26 = var1.Dictionary
   var26 = arg1
   local var28 = {}
   var28.isPublishing = arg2.isPublishing
   return var26.join(var26, var28)
end

function var22.SetPublishInfo(arg1, arg2)
   local var34 = var1.Dictionary
   var34 = arg1
   local var36 = {}
   var36.publishInfo = var1.Dictionary.join(arg1.publishInfo, arg2.publishInfo)
   return var34.join(var34, var36)
end

function var22.ResetInfo(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   var49.publishInfo = var1.Dictionary.join(arg1.publishInfo, arg2.publishInfo)
   var49.isPublishing = arg2.isPublishing
   return var47.join(var47, var49)
end

return require(var0.Packages.Rodux).createReducer(var20, var22)
