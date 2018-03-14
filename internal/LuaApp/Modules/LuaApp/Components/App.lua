local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Rodux = require(Modules.Common.Rodux)
local RoactRodux = require(Modules.Common.RoactRodux)

local Localization = require(Modules.LuaApp.Localization)
local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
local StringsLocale = require(Modules.LuaApp.StringsLocale)

local AppRouter = require(Modules.LuaApp.Components.AppRouter)
local AppReducer = require(Modules.LuaApp.AppReducer)

local AppPage = require(Modules.LuaApp.AppPage)
local SetAppPage = require(Modules.LuaApp.Actions.SetAppPage)

local SetLocalUser = require(Modules.LuaApp.Actions.SetLocalUser)
local Analytics = require(Modules.Common.Analytics)
local Networking = require(Modules.LuaApp.Http.Networking)
local ApiFetchGamesData = require(Modules.LuaApp.Thunks.ApiFetchGamesData)
local ApiFetchAllUsersFriends = require(Modules.LuaApp.Thunks.ApiFetchAllUsersFriends)

-- flag dependencies
local diagCounterPageLoadTimes = settings():GetFVariable("LuaAppsDiagPageLoadTimeGames")

local App = Roact.Component:extend("App")

function App:init()
	self.state = {
		store = Rodux.Store.new(AppReducer)
	}
	-- Setting the view size to consider bottom bar space.
	-- TODO Needs to be checked if this will be necessary after integrating
	-- Lua bottom bar.
	GuiService:SetGlobalGuiInset(0, 0, 0, UserInputService.BottomBarSize.Y)
	self.bottomBarSizeListener = UserInputService:GetPropertyChangedSignal("BottomBarSize"):Connect(function()
		GuiService:SetGlobalGuiInset(0, 0, 0, UserInputService.BottomBarSize.Y)
	end)

	self._localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
		self._localization:SetLocale(newLocale)
	end)

	if UserSettings().GameSettings:InStudioMode() then
		local keyToPageMapping = {
			[Enum.KeyCode.One] = AppPage.Home,
			[Enum.KeyCode.Two] = AppPage.Games,
			[Enum.KeyCode.Three] = AppPage.AvatarEditor,
			[Enum.KeyCode.Four] = AppPage.Chat,
		}
		print("")
		print("To switch between pages, use numbers on the keyboard:")
		print(".   1: Home Page")
		print(".   2: Games Page")
		print(".   3: Avatar Editor")
		print(".   4: Chat Page")
		print("")
		self.inputListenerForStudioMode = UserInputService.InputBegan:connect(function(inputObject, gameProcessedEvent)
			if keyToPageMapping[inputObject.KeyCode] then
				self.state.store:Dispatch(SetAppPage(keyToPageMapping[inputObject.KeyCode]))
			end
		end)
	end
end

function App:didMount()
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
	local startTime = tick()
	self.state.store:Dispatch(ApiFetchGamesData(self._networkImpl)):andThen(function(result)
		local endTime = tick()
		local deltaMs = (endTime - startTime) * 1000

		self._analytics.Diag:reportStats(diagCounterPageLoadTimes, deltaMs)
	end)

	self.state.store:Dispatch(ApiFetchAllUsersFriends(self._networkImpl))
end

function App:render()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.state.store,
	}, {
		localization = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = self._localization,
		}, {
			AppRouter = Roact.createElement(AppRouter),
		}),
	})
end

function App:willUnmount()
	self.bottomBarSizeListener:Disconnect()
	if UserSettings().GameSettings:InStudioMode() then
		self.inputListenerForStudioMode:Disconnect()
	end
end

return App