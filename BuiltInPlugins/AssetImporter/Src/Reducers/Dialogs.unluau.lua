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
   local var38 = var1.Dictionary
   var38 = arg1
   local var40 = {}
   var40.showError = arg2.showError
   return var38.join(var38, var40)
end

function require(var2.SetShowPreview).name(arg1, arg2)
   local var47 = var1.Dictionary
   var47 = arg1
   local var49 = {}
   var49.showPreview = arg2.showPreview
   return var47.join(var47, var49)
end

function require(var2.SetShowProgress).name(arg1, arg2)
   local var56 = var1.Dictionary
   var56 = arg1
   local var58 = {}
   var58.showProgress = arg2.showProgress
   return var56.join(var56, var58)
end

function require(var2.SetUploading).name(arg1, arg2)
   local var65 = var1.Dictionary
   var65 = arg1
   local var67 = {}
   var67.uploading = arg2.uploading
   return var65.join(var65, var67)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
