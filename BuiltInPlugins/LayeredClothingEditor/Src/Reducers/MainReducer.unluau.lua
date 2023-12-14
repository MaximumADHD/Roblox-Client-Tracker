-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var39 = {}
var39.status = require(var0.Src.Reducers.Status)
var39.previewStatus = require(var0.Src.Reducers.PreviewStatus)
var39.selectItem = require(var0.Src.Reducers.SelectItem)
var39.controlsPanelBlocker = require(var0.Src.Reducers.ControlsPanelBlocker)
var39.previewAssets = require(var0.Src.Reducers.PreviewAssets)
var39.animation = require(var0.Src.Reducers.Animation)
return require(var0.Packages.Rodux).combineReducers(var39)
