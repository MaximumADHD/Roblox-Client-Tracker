-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var24 = {}
var24.PluginInfo = require(var0.Src.Reducers.PluginInfo)
var24.PluginPermissions = require(var0.Src.Reducers.PluginPermissions)
var24.Management = require(var0.Src.Reducers.Management)
return require(var0.Packages.Rodux).combineReducers(var24)
