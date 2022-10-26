--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local TopBarApp = require(script.Components.TopBarApp)
local Reducer = require(script.Reducer)
local Constants = require(script.Constants)
local TopBarAppPolicy = require(script.TopBarAppPolicy)

local SetSmallTouchDevice = require(script.Actions.SetSmallTouchDevice)
local SetInspectMenuOpen = require(script.Actions.SetInspectMenuOpen)
local SetGamepadMenuOpen = require(script.Actions.SetGamepadMenuOpen)
local UpdateUnreadMessagesBadge = require(script.Actions.UpdateUnreadMessagesBadge)

local GetCanChat = require(script.Thunks.GetCanChat)
local GetGameName = require(script.Thunks.GetGameName)

local registerSetCores = require(script.registerSetCores)

local GlobalConfig = require(script.GlobalConfig)

local TopBar: any = {}
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
		if game:GetEngineFeature("NotchSpaceSupportEnabled") then
			local localPlayer = Players.LocalPlayer
			local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

			local playerGuiChangedConn = playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function()
				if (playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait) then
					-- TODO: For now, The Gui bounds will be moved down by TopBarHeight * 2 to make sure they appear both under the Notch and the Top Bar's height.
					-- This will change when we figure out how to access proper safezone values.
					GuiService:SetGlobalGuiInset(0, Constants.TopBarHeight * 2, 0, 0)
				else
					GuiService:SetGlobalGuiInset(Constants.TopBarHeight, Constants.TopBarHeight, Constants.TopBarHeight, 0)
				end
			end)
		else
			GuiService:SetGlobalGuiInset(0, Constants.TopBarHeight, 0, 0)
		end
	end

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})
	registerSetCores(self.store)
	self.store:dispatch(GetCanChat)

	self.store:dispatch(GetGameName)

	if isNewInGameMenuEnabled() then
		-- Move to top of script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.mountInGameMenu()
	end

	coroutine.wrap(function()
		self.store:dispatch(SetSmallTouchDevice(SettingsUtil:IsSmallTouchScreen()))
	end)()

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PolicyProvider = Roact.createElement(TopBarAppPolicy.Provider, {
			policy = { TopBarAppPolicy.Mapper },
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				TopBarApp = Roact.createElement(TopBarApp),
			})
		})
	})

	self.element = Roact.mount(self.root, CoreGui, "TopBar")

	-- add binding
	local TextChatService = game:GetService("TextChatService")
	TextChatService.MessageReceived:Connect(function()
		self.store:dispatch(UpdateUnreadMessagesBadge(1))
	end)

	return self
end

function TopBar:setInspectMenuOpen(open)
	self.store:dispatch(SetInspectMenuOpen(open))
end

function TopBar:setGamepadMenuOpen(open)
	self.store:dispatch(SetGamepadMenuOpen(open))
end

return TopBar.new()
