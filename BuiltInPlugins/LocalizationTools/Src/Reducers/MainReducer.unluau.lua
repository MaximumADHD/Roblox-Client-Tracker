-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var24 = {}
var24.PluginMetadata = require(var0.Src.Reducers.PluginMetadata)
var24.Message = require(var0.Src.Reducers.Message)
var24.CloudTable = require(var0.Src.Reducers.CloudTable)
return require(var0.Packages.Rodux).combineReducers(var24)
