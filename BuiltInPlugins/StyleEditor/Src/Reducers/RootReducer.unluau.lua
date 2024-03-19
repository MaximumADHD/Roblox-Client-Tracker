-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var29 = {}
var29.Asset = require(var0.Src.Reducers.Asset)
var29.Clipboard = require(var0.Src.Reducers.Clipboard)
var29.SessionStats = require(var0.Src.Reducers.SessionStats)
var29.Window = require(var0.Src.Reducers.Window)
return require(var0.Packages.Rodux).combineReducers(var29)
