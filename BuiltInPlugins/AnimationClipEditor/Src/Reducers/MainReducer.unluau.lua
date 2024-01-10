-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var29 = {}
var29.Status = require(var0.Src.Reducers.Status)
var29.AnimationData = require(var0.Src.Reducers.AnimationData)
var29.History = require(var0.Src.Reducers.History)
var29.Notifications = require(var0.Src.Reducers.Notifications)
return require(var0.Packages.Rodux).combineReducers(var29)
