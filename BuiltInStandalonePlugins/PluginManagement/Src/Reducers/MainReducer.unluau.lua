-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var62 = {}
var62.PluginInfo = require(var0.Src.Reducers.PluginInfo)
var62.PluginPermissions = require(var0.Src.Reducers.PluginPermissions)
var62.Management = require(var0.Src.Reducers.Management)
return require(var0.Packages.Rodux).combineReducers(var62)
