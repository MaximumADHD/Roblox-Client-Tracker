local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalizationService = game:GetService("LocalizationService")
local RunService = game:GetService("RunService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Rodux = require(Modules.Common.Rodux)
local RoactRodux = require(Modules.Common.RoactRodux)

local Promise = require(Modules.LuaApp.Promise)
local Localization = require(Modules.LuaApp.Localization)
local RoactServices = require(Modules.LuaApp.RoactServices)
local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)
local RoactLocalization = require(Modules.LuaApp.Services.RoactLocalization)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)
local FlagSettings = require(Modules.LuaApp.FlagSettings)

local AppRouter = require(Modules.LuaApp.Components.AppRouter)
local AppReducer = require(Modules.LuaApp.AppReducer)

local RobloxEventReceiver = require(Modules.LuaApp.RobloxEventReceiver)

local Constants = require(Modules.LuaApp.Constants)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)
local SetLocalUserId = require(Modules.LuaApp.Actions.SetLocalUserId)
local SetFetchedGamesPageData = require(Modules.LuaApp.Actions.SetFetchedGamesPageData)
local SetFetchedHomePageData = require(Modules.LuaApp.Actions.SetFetchedHomePageData)
local SetUserMembershipType = require(Modules.LuaApp.Actions.SetUserMembershipType)
local AddUser = require(Modules.LuaApp.Actions.AddUser)
local ApiFetchUsersThumbnail = require(Modules.LuaApp.Thunks.ApiFetchUsersThumbnail)
local Analytics = require(Modules.Common.Analytics)
local Networking = require(Modules.LuaApp.Http.Networking)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local ApiFetchAllUsersFriends = require(Modules.LuaApp.Thunks.ApiFetchAllUsersFriends)
local BottomBar = require(Modules.LuaApp.Components.BottomBar)
local UserModel = require(Modules.LuaApp.Models.User)

-- flag dependencies
local diagCounterPageLoadTimes = settings():GetFVariable("LuaAppsDiagPageLoadTimeGames")
local UseLuaHomePage = FlagSettings.IsLuaHomePageEnabled()
local UseLuaGamesPage = FlagSettings.IsLuaGamesPageEnabled()

local App = Roact.Component:extend("App")

function App:init()
	self.state = {
		store = Rodux.Store.new(AppReducer)
	}

	self._analytics = Analytics.new()
	self._network = Networking.new()
	self._localization = Localization.new(LocalizationService.RobloxLocaleId)
	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
		self._localization:SetLocale(newLocale)
	end)
end

function App:didMount()
	RunService:setThrottleFramerateEnabled(true)

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

	local localPlayer = Players.LocalPlayer
	local userId = tostring(localPlayer.UserId)

	self.state.store:Dispatch(AddUser(UserModel.fromData(userId, localPlayer.Name, false)))
	self.state.store:Dispatch(ApiFetchUsersThumbnail(
		self._network, {userId}, Constants.AvatarThumbnailTypes.HeadShot, Constants.AvatarThumbnailSizes.Size150x150
	))

	local updateLocalPlayer = function()
		self.state.store:Dispatch(SetLocalUserId(userId))
		self.state.store:Dispatch(SetUserMembershipType(userId, localPlayer.MembershipType))
	end
	updateLocalPlayer()
	Players.LocalPlayer:GetPropertyChangedSignal("Name"):Connect(updateLocalPlayer)
	Players.LocalPlayer:GetPropertyChangedSignal("MembershipType"):Connect(updateLocalPlayer)

	-- start loading information for the Games Page
	if UseLuaGamesPage then
		local startTime = tick()
		self.state.store:Dispatch(
			ApiFetchGamesData(self._network, Constants.GameSortGroups.Games)
		):andThen(function(result)
			local endTime = tick()
			local deltaMs = (endTime - startTime) * 1000

			self._analytics.Diag:reportStats(diagCounterPageLoadTimes, deltaMs)
			self.state.store:Dispatch(SetFetchedGamesPageData(true))
		end)
	end

	-- start loading information for Home Page
	if UseLuaHomePage then
		Promise.all({
			self.state.store:Dispatch(ApiFetchAllUsersFriends(self._network, Constants.AvatarThumbnailTypes.AvatarThumbnail)),
			self.state.store:Dispatch(ApiFetchGamesData(self._network, Constants.GameSortGroups.HomeGames)),
		}):andThen(function(result)
			self.state.store:Dispatch(SetFetchedHomePageData(true))
		end)
	end

end

function App:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.state.store,
	}, {
		services = Roact.createElement(RoactServices.ServiceProvider, {
			services = {
				[RoactAnalytics] = self._analytics,
				[RoactLocalization] = self._localization,
				[RoactNetworking] = self._network,
			}
		}, {
			PageWrapper = Roact.createElement("Folder", {}, {
				RobloxEventReceiver = Roact.createElement(RobloxEventReceiver),
				BottomBar = Roact.createElement(BottomBar, {
					displayOrder = 4,
				}),
				AppRouter = Roact.createElement(AppRouter),
			})
		}),
	})
end

function App:willUnmount()
	RunService:setThrottleFramerateEnabled(false)

	if self.bottomBarSizeListener then
		self.bottomBarSizeListener:Disconnect()
	end

	if self.viewportSizeListener then
		self.viewportSizeListener:Disconnect()
	end
end

return App