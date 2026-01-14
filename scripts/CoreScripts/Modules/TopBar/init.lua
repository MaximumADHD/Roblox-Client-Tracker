--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")


local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddGuiInsetToDisplayStore = SharedFlags.FFlagAddGuiInsetToDisplayStore
local FFlagFixChromeConsoleNilRefs = SharedFlags.FFlagFixChromeConsoleNilRefs

local FFlagAddTopBarScrim = require(script.Flags.FFlagAddTopBarScrim)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local ReactSceneUnderstanding = require(CorePackages.Packages.ReactSceneUnderstanding)

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Signals = require(CorePackages.Packages.Signals)

local StyleConstants = UIBlox.App.Style.Constants
local Display = require(CorePackages.Workspace.Packages.Display)
local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local ChromeService
local TopBarScrim
if FFlagFixChromeConsoleNilRefs and ChromeEnabled then
	ChromeService = require(RobloxGui.Modules.Chrome.Service)
	TopBarScrim = require(script.Components.TopBarScrim)
end
local Constants = require(script.Constants)
local MenuNavigationPromptTokenMapper = require(script.TokenMappers.MenuNavigationPromptTokenMapper)

local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeSetCores = CoreGuiCommon.Flags.FFlagTopBarSignalizeSetCores
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagTopBarDeprecateGameInfoRodux = require(script.Flags.FFlagTopBarDeprecateGameInfoRodux)
local FFlagTopBarDeprecateGamepadNavigationDialogRodux = require(script.Flags.FFlagTopBarDeprecateGamepadNavigationDialogRodux)

local FFlagTopBarDeprecateChatRodux = require(script.Flags.FFlagTopBarDeprecateChatRodux)
local FFlagTopBarDeprecateDisplayOptionsRodux = require(script.Flags.FFlagTopBarDeprecateDisplayOptionsRodux)
local FFlagTopBarRefactor = require(script.Flags.FFlagTopBarRefactor)

if ChromeEnabled then
	local function SetGlobalGuiInset()
		-- set this prior to TopBarApp require
		local guiInsetTopLeft, guiInsetBottomRight = GuiService:GetGuiInset()
		GuiService:SetGlobalGuiInset(
			guiInsetTopLeft.X,
			Constants.ApplyDisplayScale(Constants.TopBarHeight),
			guiInsetBottomRight.X,
			guiInsetBottomRight.Y
		)
		if FFlagAddGuiInsetToDisplayStore then
			Display.GetDisplayStore().setGuiInset({
				left = guiInsetTopLeft.X,
				top = Constants.ApplyDisplayScale(Constants.TopBarHeight),
				right = guiInsetBottomRight.X,
				bottom = guiInsetBottomRight.Y
			})
		end
	end
	SetGlobalGuiInset()
	
	if not FFlagAddGuiInsetToDisplayStore then
		Signals.createEffect(function(scope)
			SetGlobalGuiInset()
		end)
	end
end

local TopBarApp = if FFlagTopBarRefactor then require(script.ComponentsV2.TopBarApp) else require(script.Components.TopBarApp)
local Reducer = require(script.Reducer)
local TopBarAppPolicy = require(script.TopBarAppPolicy)

if not FFlagFixChromeConsoleNilRefs then
	TopBarScrim = require(script.Components.TopBarScrim)
end

local SetSmallTouchDevice = require(script.Actions.SetSmallTouchDevice)
local SetInspectMenuOpen = require(script.Actions.SetInspectMenuOpen)
local SetGamepadMenuOpen = require(script.Actions.SetGamepadMenuOpen)
local SetGamepadNavigationDialogOpen = require(script.Actions.SetGamepadNavigationDialogOpen)
local UpdateUnreadMessagesBadge = require(script.Actions.UpdateUnreadMessagesBadge)

local GetCanChat = require(script.Thunks.GetCanChat)
local GetGameName = require(script.Thunks.GetGameName)

local registerSetCores = require(script.registerSetCores)

local GlobalConfig = require(script.GlobalConfig)

local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local FFlagAddMenuNavigationToggleDialog = SharedFlags.FFlagAddMenuNavigationToggleDialog
local FFlagGamepadNavigationDialogABTest = require(script.Flags.FFlagGamepadNavigationDialogABTest)

-- Cross Experience Voice
local GetFFlagEnableCrossExpVoice = SharedFlags.GetFFlagEnableCrossExpVoice
local CrossExperienceVoiceComponent = CrossExperienceVoice.Component

-- FTUX
local FTUX = RobloxGui.Modules.FTUX
local GetFFlagEnableVRFTUXExperience = require(FTUX.Flags.GetFFlagEnableVRFTUXExperience)
local GetFFlagDebugEnableVRFTUXExperienceInStudio = require(FTUX.Flags.GetFFlagDebugEnableVRFTUXExperienceInStudio)
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local IsFTUXExperience = require(FTUX.Utility.IsFTUXExperience)
local FTUXMenu = require(script.Parent.FTUX)
local isRunningInStudio = require(CorePackages.Workspace.Packages.AppCommonLib).isRunningInStudio

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

	if not TenFootInterface:IsEnabled() and not ChromeEnabled then
		GuiService:SetGlobalGuiInset(0, Constants.TopBarHeight, 0, 0)
	end

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})
	if not FFlagTopBarSignalizeSetCores	then
		registerSetCores(self.store)
	end
	
	if not FFlagTopBarDeprecateChatRodux then
		self.store:dispatch(GetCanChat)
	end

	if not FFlagTopBarDeprecateGameInfoRodux then
		self.store:dispatch(GetGameName)
	end

	if GetFFlagDebugEnableVRFTUXExperienceInStudio() then
		if isRunningInStudio() then
			FTUXMenu.mountFtuxMenu(PlatformEnum.QuestVR)
		end
	end

	if GetFFlagEnableVRFTUXExperience() then
		if IsFTUXExperience(PlatformEnum.QuestVR) then
			FTUXMenu.mountFtuxMenu(PlatformEnum.QuestVR)
		end
	end

	if isNewInGameMenuEnabled() then
		-- Move to top of script when removing isNewInGameMenuEnabled
		local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
		InGameMenu.mountInGameMenu()
	end

	if not FFlagTopBarDeprecateDisplayOptionsRodux then
		coroutine.wrap(function()
			self.store:dispatch(SetSmallTouchDevice(SettingsUtil:IsSmallTouchScreen()))
		end)()
	end

	local appStyleForAppStyleProvider = {
		themeName = StyleConstants.ThemeName.Dark,
		fontName = StyleConstants.FontName.Gotham,
	}

	local function wrapWithUiModeStyleProvider(children)
		return {
			UiModeStyleProvider = Roact.createElement(UiModeStyleProvider, {
				style = appStyleForAppStyleProvider,
			}, children),
		}
	end

	-- Nest Providers in reverse order of hierarchy
	local TopBarWithProviders = Roact.createElement(TopBarApp)

	if FFlagAddMenuNavigationToggleDialog or FFlagGamepadNavigationDialogABTest then
		TopBarWithProviders = Roact.createElement(DesignTokenProvider, {
			tokenMappers = {
				MenuNavigationPrompt = if FFlagGamepadNavigationDialogABTest
					then MenuNavigationPromptTokenMapper
					else nil,
			},
		}, {
			TopBarApp = TopBarWithProviders,
		})
	end
	

	local TopBarScrimScreenGui = (not FFlagFixChromeConsoleNilRefs or ChromeService) and FFlagAddTopBarScrim and React.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = -2,
	}, {
		TopBarScrim = React.createElement(TopBarScrim),
	})

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PolicyProvider = Roact.createElement(
			TopBarAppPolicy.Provider,
			{
				policy = { TopBarAppPolicy.Mapper },
			},
			wrapWithUiModeStyleProvider({
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new(LocalizationService.RobloxLocaleId),
				}, {
					ExperimentProvider = Roact.createFragment({
						RoactAppExperimentProvider = Roact.createElement(
							RoactAppExperiment.Provider,
							{ value = IXPService },
							{ 
								TopBarApp = TopBarWithProviders,
								TopBarScrim = TopBarScrimScreenGui,
							}
						),
						CrossExperienceVoice = GetFFlagEnableCrossExpVoice() and Roact.createElement(
							CrossExperienceVoiceComponent
						) or nil,
					}),
				}),
			})
		),
	})

	self.root = Roact.createElement(ReactSceneUnderstanding.SceneAnalysisProvider, nil, self.root)

	self.root = Roact.createElement(Songbird.ReportAudioPopupContext.Provider, nil, self.root)
	self.root = Roact.createElement(VoiceStateContext.Provider, nil, self.root)

	-- Root should be a Folder so that style provider stylesheet elements can be portaled properly; otherwise, they will attach to CoreGui
	self.root = Roact.createElement("Folder", {
		Name = "TopBarApp",
	}, self.root)

	self.element = Roact.mount(self.root, CoreGui, "TopBar")

	-- add binding
	if not GetFFlagSimpleChatUnreadMessageCount() and not FFlagTopBarDeprecateChatRodux then
		local TextChatService = game:GetService("TextChatService")
		TextChatService.MessageReceived:Connect(function()
			self.store:dispatch(UpdateUnreadMessagesBadge(1))
		end)
	end

	if FFlagGamepadNavigationDialogABTest and not FFlagTopBarDeprecateGamepadNavigationDialogRodux then
		local UserInputService = game:GetService("UserInputService")
		local connection = nil
		local function disconnectGamepadConnected()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
		if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) then
			self:setGamepadNavigationDialogOpen(true)
		else
			connection = UserInputService.GamepadConnected:Connect(function()
				self:setGamepadNavigationDialogOpen(true)
				disconnectGamepadConnected()
			end)
		end

		GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(disconnectGamepadConnected)
	end

	return self
end

function TopBar:setInspectMenuOpen(open)
	if FFlagTopBarSignalizeMenuOpen then 
		return 
	end
	self.store:dispatch(SetInspectMenuOpen(open))
end

function TopBar:setGamepadMenuOpen(open)
	self.store:dispatch(SetGamepadMenuOpen(open))
end

function TopBar:setGamepadNavigationDialogOpen(open)
	if not FFlagTopBarDeprecateDisplayOptionsRodux then
		self.store:dispatch(SetGamepadNavigationDialogOpen(open))
	end
end

return TopBar.new()
