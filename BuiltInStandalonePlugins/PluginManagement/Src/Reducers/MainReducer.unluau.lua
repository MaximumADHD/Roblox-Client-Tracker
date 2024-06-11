-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var155 = {}
var155.PluginInfo = require(var0.Src.Reducers.PluginInfo)
var155.PluginPermissions = require(var0.Src.Reducers.PluginPermissions)
var155.Management = require(var0.Src.Reducers.Management)
return require(var0.Packages.Rodux).combineReducers(var155)
