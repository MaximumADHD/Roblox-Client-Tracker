-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Resources.Constants)
local var3 = {}
local var58 = {}
var58.places = {}
var58.parentGame = {}
var58.queryState = var2.QUERY_STATE.QUERY_STATE_NONE
var3.placeInfo = var58
local var63 = {}
var63.games = {}
var63.queryState = var2.QUERY_STATE.QUERY_STATE_NONE
var3.gameInfo = var63
var3.selectedGame = {}
local var68 = {}
local var69 = {}
var68.optInRegions = var69
var3.gameConfiguration = var68
var69 = var3
local var71 = {}
function var71.SetChooseGameQueryState(arg1, arg2)
   local var75 = var1.Dictionary
   var75 = arg1
   local var77 = {}
   var77.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   return var75.join(var75, var77)
end

function var71.SetSelectedGame(arg1, arg2)
   local var88 = var1.Dictionary
   var88 = arg1
   local var90 = {}
   var90.selectedGame = arg2.selectedGame
   return var88.join(var88, var90)
end

function var71.SetGameInfo(arg1, arg2)
   local var96 = var1.Dictionary
   var96 = arg1
   local var98 = {}
   var98.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   return var96.join(var96, var98)
end

function var71.SetPlaceInfo(arg1, arg2)
   local var109 = var1.Dictionary
   var109 = arg1
   local var111 = {}
   var111.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var109.join(var109, var111)
end

function var71.SetChoosePlaceQueryState(arg1, arg2)
   local var122 = var1.Dictionary
   var122 = arg1
   local var124 = {}
   var124.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var122.join(var122, var124)
end

function var71.ResetInfo(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.gameInfo = var1.Dictionary.join(arg1.gameInfo, arg2.gameInfo)
   var137.placeInfo = var1.Dictionary.join(arg1.placeInfo, arg2.placeInfo)
   return var135.join(var135, var137)
end

function var71.SetGameConfiguration(arg1, arg2)
   local var154 = var1.Dictionary
   var154 = arg1
   local var156 = {}
   var156.gameConfiguration = var1.Dictionary.join(arg1.gameConfiguration, arg2.gameConfiguration)
   return var154.join(var154, var156)
end

return require(var0.Packages.Rodux).createReducer(var69, var71)
