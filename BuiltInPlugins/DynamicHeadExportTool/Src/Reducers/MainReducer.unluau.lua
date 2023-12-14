-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var14 = {}
var14.PluginReducer = require(var0.Src.Reducers.PluginReducer)
return require(var0.Packages.Rodux).combineReducers(var14)
