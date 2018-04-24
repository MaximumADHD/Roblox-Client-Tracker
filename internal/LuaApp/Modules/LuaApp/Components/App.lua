local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalizationService = game:GetService("LocalizationService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Rodux = require(Modules.Common.Rodux)
local RoactRodux = require(Modules.Common.RoactRodux)

local Promise = require(Modules.LuaApp.Promise)
local Localization = require(Modules.LuaApp.Localization)
local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
local StringsLocale = require(Modules.LuaApp.StringsLocale)

local AppRouter = require(Modules.LuaApp.Components.AppRouter)
local AppReducer = require(Modules.LuaApp.AppReducer)

local Constants = require(Modules.LuaApp.Constants)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)
local SetLocalUser = require(Modules.LuaApp.Actions.SetLocalUser)
local SetFetchedGamesPageData = require(Modules.LuaApp.Actions.SetFetchedGamesPageData)
local SetFetchedHomePageData = require(Modules.LuaApp.Actions.SetFetchedHomePageData)
local Analytics = require(Modules.Common.Analytics)
local Networking = require(Modules.LuaApp.Http.Networking)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local ApiFetchAllUsersFriends = require(Modules.LuaApp.Thunks.ApiFetchAllUsersFriends)
local BottomBar = require(Modules.LuaApp.Components.BottomBar)

-- flag dependencies
local diagCounterPageLoadTimes = settings():GetFVariable("LuaAppsDiagPageLoadTimeGames")
local UseTempRoactLuaVersionOfHomePage = settings():GetFFlag("UseTempRoactLuaVersionOfHomePage")
local UseTempRoactLuaVersionOfGamesPage = settings():GetFFlag("UseTempRoactLuaVersionOfGamesPage")

local App = Roact.Component:extend("App")

function App:init()
	self.state = {
		store = Rodux.Store.new(AppReducer)
	}

	self._localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
		self._localization:SetLocale(newLocale)
	end)
end

function App:didMount()
	local function checkDeviceOrientation(viewportSize)
		-- Hacky code awaits underlying mechanism fix.
		-- Viewport will get a 0,0,1,1 rect before it is properly set.
		if viewportSize.x <= 1 or viewportSize.y <= 1 then
			return
		end

		local deviceOrientation = viewportSize.x > viewportSize.y and
			DeviceOrientationMode.Landscape or DeviceOrientationMode.Portrait
		if self._deviceOrientation ~= deviceOrientation then
			self._deviceOrientation = deviceOrientation
			self.state.store:Dispatch(SetDeviceOrientation(self._deviceOrientation))
		end
	end

	--Setting the device orientation
	local camera = game.Workspace.CurrentCamera
	checkDeviceOrientation(camera.ViewportSize)
	self.viewportSizeListener = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		checkDeviceOrientation(camera.ViewportSize)
	end)

	local updateLocalPlayer = function()
		self.state.store:Dispatch(SetLocalUser(Players.LocalPlayer.Name, Players.LocalPlayer.MembershipType))
	end
	updateLocalPlayer()
	Players.LocalPlayer:GetPropertyChangedSignal("Name"):Connect(updateLocalPlayer)
	Players.LocalPlayer:GetPropertyChangedSignal("MembershipType"):Connect(updateLocalPlayer)

	-- Setup for GamesPage
	self._analytics = Analytics.new()
	self._networkImpl = Networking.new()

	-- start loading information for the Games Page
	if UseTempRoactLuaVersionOfGamesPage then
		local startTime = tick()
		self.state.store:Dispatch(
			ApiFetchGamesData(self._networkImpl, Constants.GameSortGroups.Games)
		):andThen(function(result)
			local endTime = tick()
			local deltaMs = (endTime - startTime) * 1000

			self._analytics.Diag:reportStats(diagCounterPageLoadTimes, deltaMs)
			self.state.store:Dispatch(SetFetchedGamesPageData(true))
		end)
	end

	-- start loading information for Home Page
	if UseTempRoactLuaVersionOfHomePage then
		Promise.all({
			self.state.store:Dispatch(ApiFetchAllUsersFriends(self._networkImpl)),
			self.state.store:Dispatch(ApiFetchGamesData(self._networkImpl, Constants.GameSortGroups.HomeGames)),
		}):andThen(function(result)
			self.state.store:Dispatch(SetFetchedHomePageData(true))
		end)
	end

end

function App:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.state.store,
	}, {
		localization = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = self._localization,
		}, {
			PageWrapper = Roact.createElement("Folder", {}, {
				BottomBar = Roact.createElement(BottomBar, {
					displayOrder = 4,
				}),
				AppRouter = Roact.createElement(AppRouter),
			})
		}),
	})
end

function App:willUnmount()
	if self.bottomBarSizeListener then
		self.bottomBarSizeListener:Disconnect()
	end

	if self.viewportSizeListener then
		self.viewportSizeListener:Disconnect()
	end
end

return App