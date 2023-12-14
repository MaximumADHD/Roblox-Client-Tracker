-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var24 = {}
var24.Example = require(var0.Src.Reducers.Example)
var24.DraftsServiceStatus = require(var0.Src.Reducers.DraftsServiceStatus)
var24.Drafts = require(var0.Src.Reducers.DraftsReducer)
return require(var0.Packages.Rodux).combineReducers(var24)
