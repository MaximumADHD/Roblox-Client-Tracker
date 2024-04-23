--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local GetFFlagSwitchInExpTranslationsPackage = require(RobloxGui.Modules.Flags.GetFFlagSwitchInExpTranslationsPackage)

local Localization
local LocalizationProvider
if GetFFlagSwitchInExpTranslationsPackage() then
	Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
else
	Localization = require(script.Localization.Localization)
	LocalizationProvider = require(script.Localization.LocalizationProvider)
end

local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local bindMenuActions = require(script.SetupFunctions.bindMenuActions)
local registerSetCores = require(script.SetupFunctions.registerSetCores)
local requestGameNameAndDescription = require(script.SetupFunctions.requestGameNameAndDescription)
local createStore = require(script.createStore)

local App = require(script.Components.App)
local FocusHandlerContextProvider = require(script.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local initVoiceChatStore = require(RobloxGui.Modules.VoiceChat.initVoiceChatStore)
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local SetLocaleId = require(script.Actions.SetLocaleId)
local SetInspectMenuEnabled = require(script.Actions.SetInspectMenuEnabled)
local SetCurrentPage = require(script.Actions.SetCurrentPage)
local SetScreenSize = require(script.Actions.SetScreenSize)
local SetMenuIconTooltipOpen = require(script.Actions.SetMenuIconTooltipOpen)
local SetRespawning = require(script.Actions.SetRespawning)
local OpenMenu = require(script.Thunks.OpenMenu)
local CloseMenu = require(script.Thunks.CloseMenu)
local InGameMenuPolicy = require(script.InGameMenuPolicy)

local GlobalConfig = require(script.GlobalConfig)
local Constants = require(script.Resources.Constants)

local GetFFlagIGMGamepadSelectionHistory = require(script.Flags.GetFFlagIGMGamepadSelectionHistory)

local OpenChangedEvent = Instance.new("BindableEvent")
local RespawnBehaviourChangedEvent = Instance.new("BindableEvent")

local menuStore = createStore()

return {
	mountInGameMenu = function()
		registerSetCores(menuStore)
		bindMenuActions(menuStore)
		requestGameNameAndDescription(menuStore)

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

		menuStore.changed:connect(function(newState, oldState)
			if newState.isMenuOpen ~= oldState.isMenuOpen then
				OpenChangedEvent:Fire(newState.isMenuOpen)
			end

			local newEnabled = newState.respawn.enabled
			local oldEnabled = oldState.respawn.enabled

			local newCallback = newState.respawn.customCallback
			local oldCallback = oldState.respawn.customCallback

			if newEnabled ~= oldEnabled and newCallback ~= oldCallback then
				RespawnBehaviourChangedEvent:Fire(newEnabled, newCallback)
			end
		end)

		local localization = Localization.new(LocalizationService.RobloxLocaleId)
		menuStore:dispatch(SetLocaleId(LocalizationService.RobloxLocaleId))
		LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
			localization:SetLocale(LocalizationService.RobloxLocaleId)
			menuStore:dispatch(SetLocaleId(LocalizationService.RobloxLocaleId))
		end)

		menuStore:dispatch(SetInspectMenuEnabled(GuiService:GetInspectMenuEnabled()))
		GuiService.InspectMenuEnabledChangedSignal:Connect(function(enabled)
			menuStore:dispatch(SetInspectMenuEnabled(enabled))
		end)

		initVoiceChatStore(menuStore)
		local themeProvider = renderWithCoreScriptsStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				CursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
							and Roact.createElement(FocusHandlerContextProvider, {}, {
								InGameMenu = Roact.createElement(App),
							})
						or nil,
					InGameMenu = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(App) or nil,
				}),
			}),
		})
		local menuTree = Roact.createElement("ScreenGui", {
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = Constants.DisplayOrder.RootMenu,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			AutoLocalize = false,
			[Roact.Change.AbsoluteSize] = function(rbx)
				menuStore:dispatch(SetScreenSize(rbx.AbsoluteSize))
			end,
		}, {
			StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = menuStore,
			}, {
				PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
					policy = { InGameMenuPolicy.Mapper },
				}, {
					ThemeProvider = themeProvider,
				}),
			}),
		})

		local hasInternalPermission = UserSettings().GameSettings:InStudioMode()
			and game:GetService("StudioService"):HasInternalPermission()
		local root = Roact.mount(menuTree, CoreGui, "InGameMenu")
		if hasInternalPermission then
			local DeveloperTools = require(CorePackages.DeveloperTools)
			local inspector = DeveloperTools.forCoreGui("InGameMenu", {
				rootInstance = "InGameMenu",
			})
			inspector:addRoactTree("Roact tree", root, Roact)
		end

		return
	end,

	openInGameMenu = function(pageKey)
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.TopbarButton, pageKey))
	end,

	closeInGameMenu = function()
		CloseMenu(menuStore)
	end,

	openReportDialog = function(player, componentName)
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.ReportAbuseTriggered, Constants.ReportDialogKey))
		local source = if componentName ~= nil then componentName else Constants.AnalyticsInGameMenuName
		TrustAndSafety.openReportDialogForPlayer(player, source)
	end,

	openGameSettingsPage = function()
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.SettingsTriggered))
		menuStore:dispatch(SetCurrentPage("GameSettings"))
	end,

	openGameLeavePage = function()
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.GamepadLeaveGame))
		menuStore:dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
	end,

	openCharacterResetPage = function()
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.GamepadResetCharacter))
		menuStore:dispatch(SetCurrentPage(Constants.MainPagePageKey))
		menuStore:dispatch(SetRespawning(true))
	end,

	openPlayersPage = function()
		menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.PlayersTriggered))
		menuStore:dispatch(SetCurrentPage("Players"))
	end,

	getOpenChangedEvent = function()
		return OpenChangedEvent
	end,

	getOpen = function()
		return menuStore:getState().isMenuOpen
	end,

	getRespawnBehaviour = function()
		local state = menuStore:getState()
		return state.respawn.enabled, state.respawn.customCallback
	end,

	getRespawnBehaviourChangedEvent = function()
		return RespawnBehaviourChangedEvent
	end,

	setMenuIconTooltipOpen = function(open)
		menuStore:dispatch(SetMenuIconTooltipOpen(open))
	end,
}
