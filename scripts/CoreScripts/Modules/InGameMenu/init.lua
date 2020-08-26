local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local LocalizationProvider = require(script.Localization.LocalizationProvider)

local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local bindMenuActions = require(script.SetupFunctions.bindMenuActions)
local registerSetCores = require(script.SetupFunctions.registerSetCores)
local requestGameInfo = require(script.SetupFunctions.requestGameInfo)
local requestGameSourceLanguage = require(script.SetupFunctions.requestGameSourceLanguage)
local requestLocaleInfo = require(script.SetupFunctions.requestLocaleInfo)
local requestGameNameAndDescription = require(script.SetupFunctions.requestGameNameAndDescription)
local createStore = require(script.createStore)

local OpenMenuButton = require(script.Components.OpenMenuButton)
local App = require(script.Components.App)

local Localization = require(script.Localization.Localization)

local SetLocaleId = require(script.Actions.SetLocaleId)
local OpenReportDialog = require(script.Actions.OpenReportDialog)
local SetInspectMenuEnabled = require(script.Actions.SetInspectMenuEnabled)
local SetCurrentPage = require(script.Actions.SetCurrentPage)
local SetScreenSize = require(script.Actions.SetScreenSize)
local SetMenuIconTooltipOpen = require(script.Actions.SetMenuIconTooltipOpen)
local OpenMenu = require(script.Thunks.OpenMenu)
local InGameMenuPolicy = require(script.InGameMenuPolicy)

local GlobalConfig = require(script.GlobalConfig)
local Constants = require(script.Resources.Constants)

local FFlagDisableAutoTranslateForKeyTranslatedContent = require(
	RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)

local isNewGamepadMenuEnabled = require(RobloxGui.Modules.Flags.isNewGamepadMenuEnabled)

local GetFFlagUseRoactPolicyProvider = require(RobloxGui.Modules.Flags.GetFFlagUseRoactPolicyProvider)
local GetFFlagInstrumentMenuOpenMethods = require(RobloxGui.Modules.Flags.GetFFlagInstrumentMenuOpenMethods)

local OpenChangedEvent = Instance.new("BindableEvent")
local RespawnBehaviourChangedEvent = Instance.new("BindableEvent")

local menuStore = createStore()

return {
	mountInGameMenu = function()
		registerSetCores(menuStore)
		bindMenuActions(menuStore)
		if isNewGamepadMenuEnabled() then
			requestGameNameAndDescription(menuStore)
		else
			requestGameInfo(menuStore)
			requestGameSourceLanguage(menuStore)
			requestLocaleInfo(menuStore)
		end

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

			if isNewGamepadMenuEnabled() then
				local newEnabled = newState.respawn.enabled
				local oldEnabled = oldState.respawn.enabled

				local newCallback = newState.respawn.customCallback
				local oldCallback = oldState.respawn.customCallback

				if newEnabled ~= oldEnabled and newCallback ~= oldCallback then
					RespawnBehaviourChangedEvent:Fire(newEnabled, newCallback)
				end
			end
		end)

		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

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

		local menuTree
		if GetFFlagUseRoactPolicyProvider() then
			menuTree = Roact.createElement("ScreenGui", {
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 1,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent,
				[Roact.Change.AbsoluteSize] = function(rbx)
					menuStore:dispatch(SetScreenSize(rbx.AbsoluteSize))
				end
			}, {
				StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = menuStore,
				}, {
					PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
						policy = { InGameMenuPolicy.Mapper },
					}, {
						ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
							style = appStyle,
						}, {
							LocalizationProvider = Roact.createElement(LocalizationProvider, {
								localization = localization,
							}, {
								InGameMenu = Roact.createElement(App),
							}),
						}),
					}),
				})
			})
		else
			menuTree = Roact.createElement("ScreenGui", {
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 1,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent,
				[Roact.Change.AbsoluteSize] = function(rbx)
					menuStore:dispatch(SetScreenSize(rbx.AbsoluteSize))
				end
			}, {
				StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = menuStore,
				}, {
					ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
						style = appStyle,
					}, {
						LocalizationProvider = Roact.createElement(LocalizationProvider, {
							localization = localization,
						}, {
							InGameMenu = Roact.createElement(App),
						}),
					}),
				})
			})
		end

		Roact.mount(menuTree, CoreGui, "InGameMenu")

		return
	end,

	openInGameMenu = function()
		if GetFFlagInstrumentMenuOpenMethods() then
			menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.TopbarButton))
		else
			menuStore:dispatch(OpenMenu)
		end
	end,

	openReportDialog = function(player)
		if GetFFlagInstrumentMenuOpenMethods() then
			menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.ReportAbuseTriggered))
		else
			menuStore:dispatch(OpenMenu)
		end

		menuStore:dispatch(OpenReportDialog(player.UserId, player.Name))
	end,

	openGameSettingsPage = function()
		if GetFFlagInstrumentMenuOpenMethods() then
			menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.SettingsTriggered))
		else
			menuStore:dispatch(OpenMenu)
		end

		menuStore:dispatch(SetCurrentPage("GameSettings"))
	end,

	openPlayersPage = function()
		if GetFFlagInstrumentMenuOpenMethods() then
			menuStore:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.PlayersTriggered))
		else
			menuStore:dispatch(OpenMenu)
		end

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
