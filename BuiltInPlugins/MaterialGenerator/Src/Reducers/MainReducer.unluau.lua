-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var256 = {}
var256.AppStateReducer = require(var0.Src.Reducers.AppStateReducer)
var256.MaterialsReducer = require(var0.Src.Reducers.MaterialsReducer)
return require(var0.Packages.Rodux).combineReducers(var256)
