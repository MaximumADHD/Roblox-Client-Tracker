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
   local var44 = var1.Dictionary
   var44 = arg1
   local var46 = {}
   var46.showError = arg2.showError
   return var44.join(var44, var46)
end

function require(var2.SetShowPreview).name(arg1, arg2)
   local var53 = var1.Dictionary
   var53 = arg1
   local var55 = {}
   var55.showPreview = arg2.showPreview
   return var53.join(var53, var55)
end

function require(var2.SetShowProgress).name(arg1, arg2)
   local var62 = var1.Dictionary
   var62 = arg1
   local var64 = {}
   var64.showProgress = arg2.showProgress
   return var62.join(var62, var64)
end

function require(var2.SetShowQueue).name(arg1, arg2)
   local var71 = var1.Dictionary
   var71 = arg1
   local var73 = {}
   var73.showQueue = arg2.showQueue
   return var71.join(var71, var73)
end

function require(var2.SetShowWarning).name(arg1, arg2)
   local var80 = var1.Dictionary
   var80 = arg1
   local var82 = {}
   var82.showWarning = arg2.showWarning
   return var80.join(var80, var82)
end

function require(var2.SetUploading).name(arg1, arg2)
   local var89 = var1.Dictionary
   var89 = arg1
   local var91 = {}
   var91.uploading = arg2.uploading
   return var89.join(var89, var91)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
