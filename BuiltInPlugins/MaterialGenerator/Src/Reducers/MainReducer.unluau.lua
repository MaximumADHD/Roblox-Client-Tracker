-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var303 = {}
var303.AppStateReducer = require(var0.Src.Reducers.AppStateReducer)
var303.MaterialsReducer = require(var0.Src.Reducers.MaterialsReducer)
return require(var0.Packages.Rodux).combineReducers(var303)
