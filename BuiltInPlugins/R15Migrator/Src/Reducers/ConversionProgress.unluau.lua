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

local var133 = {}
var133.isSuccessfullyPublished = false
var133.experienceData = nil
function require(var2.SuccessfullyPublished).name(arg1, arg2)
   local var141 = var1.Dictionary
   var141 = arg1
   local var143 = {}
   var143.isSuccessfullyPublished = arg2.isSuccessfullyPublished
   return var141.join(var141, var143)
end

function require(var2.SetExperienceData).name(arg1, arg2)
   local var150 = var1.Dictionary
   var150 = arg1
   local var152 = {}
   var152.experienceData = arg2.experienceData or var1.None
   return var150.join(var150, var152)
end

return require(var0.Packages.Rodux).createReducer(var133, {})
