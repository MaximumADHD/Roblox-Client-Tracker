local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local LocalizationService = game:GetService("LocalizationService")
local RunService = game:GetService("RunService")

local Rodux = require(Modules.Common.Rodux)
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Localization = require(Modules.LuaApp.Localization)
local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local AppReducer = require(Modules.LuaApp.AppReducer)
local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)

local Analytics = require(Modules.Common.Analytics)
local Networking = require(Modules.LuaApp.Http.Networking)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)

-- flag dependencies
local diagCounterPageLoadTimes = settings():GetFVariable("LuaAppsDiagPageLoadTimeGames")


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
	self._analytics = Analytics.new()
	self._networkImpl = Networking.new()
	self._store = Rodux.Store.new(AppReducer)
	self._started = false

	-- start loading information for the Games Page
	local startTime = tick()
	self._store:Dispatch(ApiFetchGamesData(self._networkImpl)):andThen(function(result)
		local endTime = tick()
		local deltaMs = (endTime - startTime) * 1000

		self._analytics.Diag:ReportStats(diagCounterPageLoadTimes, deltaMs)
	end)

	self._localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
		self._localization:SetLocale(newLocale)
	end)

	return self
end

function GamesMaster:Start()
	RunService:setThrottleFramerateEnabled(true)

	if not self._started then
		self._started = true
		local root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self._store,
		}, {
			localization = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = self._localization,
			}, {
				App = Roact.createElement("ScreenGui", {
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling}, {
					GamesHub = Roact.createElement(GamesHub),
				}),
			}),
		})

		Roact.reify(root, CoreGui, "GamesHub")
		return
	end
end

function GamesMaster:Stop()
	RunService:setThrottleFramerateEnabled(false)
end

return GamesMaster