-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var18 = {}
var18.plugin = require(var0.src.reducers.PluginReducer)
var18.error = require(var0.src.reducers.ErrorReducer)
return require(var0.Packages.Rodux).combineReducers(var18)
