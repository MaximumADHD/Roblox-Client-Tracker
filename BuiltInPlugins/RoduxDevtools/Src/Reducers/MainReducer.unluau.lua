-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent
local var11 = {}
var11.selectedIndex = require(var0.SelectedIndexReducer)
var11.searchTerm = require(var0.SearchTermReducer)
var11.events = require(var0.EventsReducer)
return require(script.Parent.Parent.Parent.Packages.Rodux).combineReducers(var11)
