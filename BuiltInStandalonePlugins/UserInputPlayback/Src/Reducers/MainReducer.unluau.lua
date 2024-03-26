-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.EventTypeEnabledReducer)
local var29 = {}
var29.recordTab = require(var0.Src.Reducers.RecordTabReducer)
var29.recordTabFilter = var1.makeReducerForName("recordTabFilter")
var29.playbackTab = require(var0.Src.Reducers.PlaybackTabReducer)
var29.playbackTabFilter = var1.makeReducerForName("playbackTabFilter")
var29.common = require(var0.Src.Reducers.CommonReducer)
return require(var0.Packages.Rodux).combineReducers(var29)
