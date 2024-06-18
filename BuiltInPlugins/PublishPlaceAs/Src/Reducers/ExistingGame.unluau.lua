-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Resources.Constants)
local var3 = {}
local var84 = {}
var84.places = {}
var84.parentGame = {}
var84.queryState = var2.QUERY_STATE.QUERY_STATE_NONE
var3.placeInfo = var84
local var89 = {}
var89.games = {}
var89.queryState = var2.QUERY_STATE.QUERY_STATE_NONE
var3.gameInfo = var89
var3.selectedGame = {}
local var94 = {}
local var95 = {}
var94.optInRegions = var95
var3.gameConfiguration = var94
var95 = var3
local var97 = {}
function var97.SetChooseGameQueryState(arg1, arg2)
   local var101 = var1.Dictionary
   var101 = arg1
   local var103 = {}
   var103.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   return var101.join(var101, var103)
end

function var97.SetSelectedGame(arg1, arg2)
   local var114 = var1.Dictionary
   var114 = arg1
   local var116 = {}
   var116.selectedGame = arg2.selectedGame
   return var114.join(var114, var116)
end

function var97.SetGameInfo(arg1, arg2)
   local var122 = var1.Dictionary
   var122 = arg1
   local var124 = {}
   var124.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   return var122.join(var122, var124)
end

function var97.SetPlaceInfo(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var135.join(var135, var137)
end

function var97.SetChoosePlaceQueryState(arg1, arg2)
   local var148 = var1.Dictionary
   var148 = arg1
   local var150 = {}
   var150.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var148.join(var148, var150)
end

function var97.ResetInfo(arg1, arg2)
   local var161 = var1.Dictionary
   var161 = arg1
   local var163 = {}
   var163.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   var163.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var161.join(var161, var163)
end

function var97.SetGameConfiguration(arg1, arg2)
   local var180 = var1.Dictionary
   var180 = arg1
   local var182 = {}
   var182.gameConfiguration = var1.Dictionary.join(arg1.gameConfiguration, arg2.gameConfiguration)
   return var180.join(var180, var182)
end

return require(var0.Packages.Rodux).createReducer(var95, var97)
