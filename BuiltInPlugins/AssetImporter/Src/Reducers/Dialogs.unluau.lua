-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var3 = {}
var3.showError = false
var3.showPreview = false
var3.showProgress = false
var3.uploading = false
function require(var2.SetShowError).name(arg1, arg2)
   local var328 = var1.Dictionary
   var328 = arg1
   local var330 = {}
   var330.showError = arg2.showError
   return var328.join(var328, var330)
end

function require(var2.SetShowPreview).name(arg1, arg2)
   local var337 = var1.Dictionary
   var337 = arg1
   local var339 = {}
   var339.showPreview = arg2.showPreview
   return var337.join(var337, var339)
end

function require(var2.SetShowProgress).name(arg1, arg2)
   local var346 = var1.Dictionary
   var346 = arg1
   local var348 = {}
   var348.showProgress = arg2.showProgress
   return var346.join(var346, var348)
end

function require(var2.SetShowQueue).name(arg1, arg2)
   local var355 = var1.Dictionary
   var355 = arg1
   local var357 = {}
   var357.showQueue = arg2.showQueue
   return var355.join(var355, var357)
end

function require(var2.SetShowWarning).name(arg1, arg2)
   local var364 = var1.Dictionary
   var364 = arg1
   local var366 = {}
   var366.showWarning = arg2.showWarning
   return var364.join(var364, var366)
end

function require(var2.SetUploading).name(arg1, arg2)
   local var373 = var1.Dictionary
   var373 = arg1
   local var375 = {}
   var375.uploading = arg2.uploading
   return var373.join(var373, var375)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
