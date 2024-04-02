-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var302 = {}
var302.AppStateReducer = require(var0.Src.Reducers.AppStateReducer)
var302.MaterialsReducer = require(var0.Src.Reducers.MaterialsReducer)
return require(var0.Packages.Rodux).combineReducers(var302)
