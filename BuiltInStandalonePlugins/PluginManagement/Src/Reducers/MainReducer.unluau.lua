-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var127 = {}
var127.PluginInfo = require(var0.Src.Reducers.PluginInfo)
var127.PluginPermissions = require(var0.Src.Reducers.PluginPermissions)
var127.Management = require(var0.Src.Reducers.Management)
return require(var0.Packages.Rodux).combineReducers(var127)
