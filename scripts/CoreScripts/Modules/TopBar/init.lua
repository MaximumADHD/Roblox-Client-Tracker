--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")


local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local ReactSceneUnderstanding = require(CorePackages.Packages.ReactSceneUnderstanding)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)

local StyleConstants = UIBlox.App.Style.Constants
local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local Constants = require(script.Constants)
local MenuNavigationPromptTokenMapper = require(script.TokenMappers.MenuNavigationPromptTokenMapper)

local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeSetCores = CoreGuiCommon.Flags.FFlagTopBarSignalizeSetCores
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen

if ChromeEnabled and (not TenFootInterface:IsEnabled() or FFlagAdaptUnibarAndTiltSizing) then
	-- set this prior to TopBarApp require
	local guiInsetTopLeft, guiInsetBottomRight = GuiService:GetGuiInset()
	GuiService:SetGlobalGuiInset(
		guiInsetTopLeft.X,
		Constants.TopBarHeight,
		guiInsetBottomRight.X,
		guiInsetBottomRight.Y
	)
end

local TopBarApp = require(script.Components.TopBarApp)
local Reducer = require(script.Reducer)
local TopBarAppPolicy = require(script.TopBarAppPolicy)

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
	self.store:dispatch(GetCanChat)

	self.store:dispatch(GetGameName)

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

	coroutine.wrap(function()
		self.store:dispatch(SetSmallTouchDevice(SettingsUtil:IsSmallTouchScreen()))
	end)()

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
							{ TopBarApp = TopBarWithProviders }
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
	if not GetFFlagSimpleChatUnreadMessageCount() then
		local TextChatService = game:GetService("TextChatService")
		TextChatService.MessageReceived:Connect(function()
			self.store:dispatch(UpdateUnreadMessagesBadge(1))
		end)
	end

	if FFlagGamepadNavigationDialogABTest then
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
	self.store:dispatch(SetGamepadNavigationDialogOpen(open))
end

return TopBar.new()
