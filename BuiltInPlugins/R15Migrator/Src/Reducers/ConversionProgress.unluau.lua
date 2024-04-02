-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local function fun0()
   local var0 = {}
   var0.isSuccessfullyPublished = false
   var0.experienceData = nil
   return var0
end

local var132 = {}
var132.isSuccessfullyPublished = false
var132.experienceData = nil
function require(var2.SuccessfullyPublished).name(arg1, arg2)
   local var140 = var1.Dictionary
   var140 = arg1
   local var142 = {}
   var142.isSuccessfullyPublished = arg2.isSuccessfullyPublished
   return var140.join(var140, var142)
end

function require(var2.SetExperienceData).name(arg1, arg2)
   local var149 = var1.Dictionary
   var149 = arg1
   local var151 = {}
   var151.experienceData = arg2.experienceData or var1.None
   return var149.join(var149, var151)
end

return require(var0.Packages.Rodux).createReducer(var132, {})
