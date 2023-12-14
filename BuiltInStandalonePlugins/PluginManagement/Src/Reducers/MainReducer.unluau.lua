-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var47 = {}
var47.PluginInfo = require(var0.Src.Reducers.PluginInfo)
var47.PluginPermissions = require(var0.Src.Reducers.PluginPermissions)
var47.Management = require(var0.Src.Reducers.Management)
return require(var0.Packages.Rodux).combineReducers(var47)
