local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local DisplayOptions = require(script.Parent.DisplayOptions)
local ScreenSize = require(script.Parent.ScreenSize)
local Settings = require(script.Parent.Settings)
local GameStats = require(script.Parent.GameStats)

local Teams = require(script.Parent.Teams)
local TeamNames = require(script.Parent.TeamNames)
local TeamColors = require(script.Parent.TeamColors)

local Players = require(script.Parent.Players)
local PlayerStats = require(script.Parent.PlayerStats)
local PlayerTeam = require(script.Parent.PlayerTeam)
local PlayerIconInfo = require(script.Parent.PlayerIconInfo)
local PlayerRelationship = require(script.Parent.PlayerRelationship)

local PlayerDropDown = require(script.Parent.PlayerDropDown)
local PlayerKeys = require(script.Parent.PlayerKeys)

local Reducer = Rodux.combineReducers({
	displayOptions = DisplayOptions,
	screenSize = ScreenSize,
	settings = Settings,
	gameStats = GameStats,

	teams = Teams,
	teamNames = TeamNames,
	teamColors = TeamColors,

	players = Players,
	playerStats = PlayerStats,
	playerTeam = PlayerTeam,
	playerIconInfo = PlayerIconInfo,
	playerRelationship = PlayerRelationship,

	playerDropDown = PlayerDropDown,
})

local DerivedReducer = function(state, action)
	local newState = Reducer(state, action)

	-- PlayerKeys is derived from other aspects of the store's state.
	newState.playerKeys = PlayerKeys(state and state.playerKeys or nil, action, newState)

	return newState
end

return DerivedReducer
