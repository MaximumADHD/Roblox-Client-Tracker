local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local RunService = game:GetService("RunService")

local Rodux = require(Modules.Common.Rodux)
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local AppReducer = require(Modules.LuaApp.AppReducer)
local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)
local SetPagePaused = require(Modules.LuaApp.Actions.SetPagePaused)

local GamesMaster = {}
GamesMaster.__index = GamesMaster

function GamesMaster.new()
	local self = {}
	setmetatable(self, GamesMaster)

	if game.Players.NumPlayers == 0 then
		game.Players.PlayerAdded:Wait()
	end

	-- Reduce render quality to optimize performance
	settings().Rendering.QualityLevel = 1

	self._store = Rodux.Store.new(AppReducer)
	self._started = false

	local connector = RoactRodux.connect(function(store, props)
		local state = store:GetState()

		return {
			gameSorts = state.GameSorts,
			games = state.Games,
		}
	end)

	self._root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self._store,
	}, {
		App = Roact.createElement("ScreenGui", {}, {
			GamesHub = Roact.createElement(connector(GamesHub)),
		}),
	})

	return self
end

function GamesMaster:Start()
	RunService:setThrottleFramerateEnabled(true)

	if not self._started then
		self._started = true
		Roact.reify(self._root, CoreGui, "GamesHub")
		return
	end

	self._store:Dispatch(SetPagePaused(false))
end

function GamesMaster:Stop()
	RunService:setThrottleFramerateEnabled(false)

	self._store:Dispatch(SetPagePaused(true))
end

return GamesMaster