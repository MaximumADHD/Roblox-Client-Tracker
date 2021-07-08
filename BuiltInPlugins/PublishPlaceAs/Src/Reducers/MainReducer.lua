local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local ExistingGame = require(Plugin.Src.Reducers.ExistingGame)
local NewGameSettings = require(Plugin.Src.Reducers.NewGameSettings)
local Policy = require(Plugin.Src.Reducers.Policy)
local PublishedPlace = require(Plugin.Src.Reducers.PublishedPlace)
local Screen = require(Plugin.Src.Reducers.Screen)
local GroupsHavePermission = require(Plugin.Src.Reducers.GroupsHavePermission)

local MainReducer = Rodux.combineReducers({
	Screen = Screen,
	ExistingGame = ExistingGame,
	NewGameSettings = NewGameSettings,
	PublishedPlace = PublishedPlace,
	GroupsHavePermission = GroupsHavePermission,
	Policy = FFlagLuobuDevPublishLua and Policy or nil,
})

return MainReducer
