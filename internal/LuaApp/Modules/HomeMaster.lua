local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local RunService = game:GetService("RunService")

local Rodux = require(Modules.Common.Rodux)
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local AppReducer = require(Modules.LuaApp.AppReducer)
local HomePage = require(Modules.LuaApp.Components.Home.HomePage)
local SetPagePaused = require(Modules.LuaApp.Actions.SetPagePaused)

local HomeMaster = {}
HomeMaster.__index = HomeMaster

function HomeMaster.new()
	local self = {}
	setmetatable(self, HomeMaster)

	if game.Players.NumPlayers == 0 then
		game.Players.PlayerAdded:Wait()
	end

	-- Reduce render quality to optimize performance
	settings().Rendering.QualityLevel = 1

	self._store = Rodux.Store.new(AppReducer)
	self._started = false

	return self
end

function HomeMaster:Start()
	RunService:setThrottleFramerateEnabled(true)

	if not self._started then
		self._started = true
		local root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self._store,
		}, {
			App = Roact.createElement("ScreenGui", {}, {
				HomePage = Roact.createElement(HomePage),
			}),
		})
		Roact.reify(root, CoreGui, "HomePage")
		return
	end

	self._store:Dispatch(SetPagePaused(false))
end

function HomeMaster:Stop()
	RunService:setThrottleFramerateEnabled(false)

	self._store:Dispatch(SetPagePaused(true))
end

return HomeMaster