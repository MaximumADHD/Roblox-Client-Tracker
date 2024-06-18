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
   local var70 = var1.Dictionary
   var70 = arg1
   local var77 = {}
   var77.showError = arg2.showError
   return var70.join(var70, var77)
end

function require(var2.SetShowPreview).name(arg1, arg2)
   local var103 = var1.Dictionary
   var103 = arg1
   local var105 = {}
   var105.showPreview = arg2.showPreview
   return var103.join(var103, var105)
end

function require(var2.SetShowProgress).name(arg1, arg2)
   local var116 = var1.Dictionary
   var116 = arg1
   local var118 = {}
   var118.showProgress = arg2.showProgress
   return var116.join(var116, var118)
end

function require(var2.SetShowQueue).name(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.showQueue = arg2.showQueue
   return var135.join(var135, var137)
end

function require(var2.SetShowWarning).name(arg1, arg2)
   local var150 = var1.Dictionary
   var150 = arg1
   local var154 = {}
   var154.showWarning = arg2.showWarning
   return var150.join(var150, var154)
end

function require(var2.SetUploading).name(arg1, arg2)
   local var179 = var1.Dictionary
   var179 = arg1
   local var183 = {}
   var183.uploading = arg2.uploading
   return var179.join(var179, var183)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
