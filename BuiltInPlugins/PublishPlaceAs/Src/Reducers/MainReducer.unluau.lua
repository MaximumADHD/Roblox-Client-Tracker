-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var49 = {}
var49.Screen = require(var0.Src.Reducers.Screen)
var49.ExistingGame = require(var0.Src.Reducers.ExistingGame)
var49.NewGameSettings = require(var0.Src.Reducers.NewGameSettings)
var49.PublishedPlace = require(var0.Src.Reducers.PublishedPlace)
var49.PublishInProgress = require(var0.Src.Reducers.PublishInProgress)
var49.GroupsHavePermission = require(var0.Src.Reducers.GroupsHavePermission)
var49.Policy = require(var0.Src.Reducers.Policy)
var49.SelectedGroup = require(var0.Src.Reducers.SelectedGroup)
return require(var0.Packages.Rodux).combineReducers(var49)
