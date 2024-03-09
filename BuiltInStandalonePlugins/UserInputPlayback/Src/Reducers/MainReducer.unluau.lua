-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.EventTypeEnabledReducer)
local var55 = {}
var55.recordTab = require(var0.Src.Reducers.RecordTabReducer)
var55.recordTabFilter = var1.makeReducerForName("recordTabFilter")
var55.playbackTab = require(var0.Src.Reducers.PlaybackTabReducer)
var55.playbackTabFilter = var1.makeReducerForName("playbackTabFilter")
var55.common = require(var0.Src.Reducers.CommonReducer)
return require(var0.Packages.Rodux).combineReducers(var55)
