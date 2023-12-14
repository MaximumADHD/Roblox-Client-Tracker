-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var19 = {}
var19.Status = require(var0.Src.Reducers.Status)
var19.History = require(var0.Src.Reducers.History)
return require(var0.Packages.Rodux).combineReducers(var19)
