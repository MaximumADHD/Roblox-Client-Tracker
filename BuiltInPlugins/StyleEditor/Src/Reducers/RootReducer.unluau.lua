-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var24 = {}
var24.Asset = require(var0.Src.Reducers.Asset)
var24.Clipboard = require(var0.Src.Reducers.Clipboard)
var24.Window = require(var0.Src.Reducers.Window)
return require(var0.Packages.Rodux).combineReducers(var24)
