local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)


local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local isNewGamepadMenuEnabled = require(RobloxGui.Modules.Flags.isNewGamepadMenuEnabled)

local GetFFlagUseRoactPolicyProvider = require(RobloxGui.Modules.Flags.GetFFlagUseRoactPolicyProvider)

local TopBarApp = require(script.Components.TopBarApp)
local Reducer = require(script.Reducer)
local Constants = require(script.Constants)
local TopBarAppPolicy = require(script.TopBarAppPolicy)

local SetSmallTouchDevice = require(script.Actions.SetSmallTouchDevice)
local SetInspectMenuOpen = require(script.Actions.SetInspectMenuOpen)

local GetCanChat = require(script.Thunks.GetCanChat)
local GetGameName = require(script.Thunks.GetGameName)

local registerSetCores = require(script.registerSetCores)

local GlobalConfig = require(script.GlobalConfig)

local TopBar = {}
TopBar.__index = TopBar

function TopBar.new()
	local self = setmetatable({}, TopBar)

	if GlobalConfig.propValidation then
		Roact.setGlobalConfig({
			propValidation = true,
		})
	end
	if GlobalConfig.elementTracing then
		Roact.setGlobalConfig({
			elementTracing = true,
		})
	end

	if not TenFootInterface:IsEnabled() then
		GuiService:SetGlobalGuiInset(0, Constants.TopBarHeight, 0, 0)
	end

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})
	registerSetCores(self.store)
	self.store:dispatch(GetCanChat)

	if isNewGamepadMenuEnabled() then
		self.store:dispatch(GetGameName)
	end

	if isNewInGameMenuEnabled() then
		-- Move to top of script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenu)
		InGameMenu.mountInGameMenu()
	end

	coroutine.wrap(function()
		self.store:dispatch(SetSmallTouchDevice(SettingsUtil.IsSmallTouchScreen()))
	end)()

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	if GetFFlagUseRoactPolicyProvider() then
		self.root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			PolicyProvider = Roact.createElement(TopBarAppPolicy.Provider, {
				policy = { TopBarAppPolicy.Mapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					TopBarApp = Roact.createElement(TopBarApp)
				})
			})
		})
	else
		self.root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				TopBarApp = Roact.createElement(TopBarApp)
			})
		})
	end

	self.element = Roact.mount(self.root, CoreGui, "TopBar")

	return self
end

function TopBar:setInspectMenuOpen(open)
	self.store:dispatch(SetInspectMenuOpen(open))
end

return TopBar.new()
