local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local DisplayOptions = require(script.Parent.DisplayOptions)
local GameStats = require(script.Parent.GameStats)

local Teams = require(script.Parent.Teams)
local TeamNames = require(script.Parent.TeamNames)
local TeamColors = require(script.Parent.TeamColors)

local Players = require(script.Parent.Players)
local PlayerStats = require(script.Parent.PlayerStats)
local PlayerTeam = require(script.Parent.PlayerTeam)
local PlayerIconInfo = require(script.Parent.PlayerIconInfo)
local PlayerRelationship = require(script.Parent.PlayerRelationship)

local Reducer = Rodux.combineReducers({
	displayOptions = DisplayOptions,
	gameStats = GameStats,

	teams = Teams,
	teamNames = TeamNames,
	teamColors = TeamColors,

	players = Players,
	playerStats = PlayerStats,
	playerTeam = PlayerTeam,
	playerIconInfo = PlayerIconInfo,
	playerRelationship = PlayerRelationship,
})

return Reducer
