-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var24 = {}
var24.AssetConfigReducer = require(var0.Src.Reducers.AssetConfigReducer)
var24.GroupReducer = require(var0.Src.Reducers.GroupReducer)
var24.NetworkReducer = require(var0.Src.Reducers.NetworkReducer)
return require(var0.Packages.Rodux).combineReducers(var24)
