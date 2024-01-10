-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var19 = {}
var19.Clipboard = require(var0.Src.Reducers.Clipboard)
var19.Window = require(var0.Src.Reducers.Window)
return require(var0.Packages.Rodux).combineReducers(var19)
