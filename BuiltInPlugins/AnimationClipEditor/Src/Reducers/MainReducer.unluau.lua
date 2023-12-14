-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var70 = {}
var70.Status = require(var0.Src.Reducers.Status)
var70.AnimationData = require(var0.Src.Reducers.AnimationData)
var70.History = require(var0.Src.Reducers.History)
var70.Notifications = require(var0.Src.Reducers.Notifications)
return require(var0.Packages.Rodux).combineReducers(var70)
