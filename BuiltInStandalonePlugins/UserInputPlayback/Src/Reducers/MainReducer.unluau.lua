-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.EventTypeEnabledReducer)
local var61 = {}
var61.recordTab = require(var0.Src.Reducers.RecordTabReducer)
var61.recordTabFilter = var1.makeReducerForName("recordTabFilter")
var61.playbackTab = require(var0.Src.Reducers.PlaybackTabReducer)
var61.playbackTabFilter = var1.makeReducerForName("playbackTabFilter")
var61.common = require(var0.Src.Reducers.CommonReducer)
return require(var0.Packages.Rodux).combineReducers(var61)
