-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = var0.Src.Actions
local var4 = {}
var4.assetConfigData = {}
var4.versionHistory = nil
var4.changed = {}
var4.assetId = nil
var4.assetName = nil
var4.instances = nil
var4.clonedInstance = nil
var4.assetTypeEnum = nil
var4.screenConfigs = {}
var4.isCatalogItemCreator = false
local var47 = require(var0.Src.Util.Constants).SCREENS
var4.currentScreen = var47.CONFIGURE_ASSET
var4.totalResults = 0
var4.resultsArray = {}
var4.filteredResultsArray = {}
var47 = var4
function require(var3.SetCurrentScreen).name(arg1, arg2)
   local var58 = var2.Dictionary
   var58 = arg1
   local var60 = {}
   var60.currentScreen = arg2.currentScreen
   return var58.join(var58, var60)
end

function require(var3.SetAssetConfigData).name(arg1, arg2)
   local var67 = var2.Dictionary
   var67 = arg1
   local var69 = {}
   var69.assetConfigData = arg2.assetConfigData
   return var67.join(var67, var69)
end

function require(var3.SetAssetName).name(arg1, arg2)
   local var76 = var2.Dictionary
   var76 = arg1
   local var78 = {}
   var78.assetName = arg2.assetName
   return var76.join(var76, var78)
end

function require(var3.AddChange).name(arg1, arg2)
   local var87 = var2.Dictionary
   var87 = arg1
   local var89 = {}
   arg2.setting = arg2.value
   var89.changed = var2.Dictionary.join(arg1.changed or {}, {})
   return var87.join(var87, var89)
end

function require(var3.ClearChange).name(arg1, arg2)
   local var104 = var2.Dictionary
   var104 = arg1
   local var106 = {}
   arg2.setting = var2.None
   var106.changed = var2.Dictionary.join(arg1.changed or {}, {})
   return var104.join(var104, var106)
end

function require(var3.UploadResult).name(arg1, arg2)
   local var122 = var2.Dictionary
   var122 = arg1
   local var124 = {}
   var124.uploadSucceeded = arg2.uploadSucceeded
   return var122.join(var122, var124)
end

return require(var1.Rodux).createReducer(var47, {})
