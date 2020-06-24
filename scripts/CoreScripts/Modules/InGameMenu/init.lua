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
local OpenMenu = require(script.Thunks.OpenMenu)
local OpenNativeClosePrompt = require(script.Actions.OpenNativeClosePrompt)

local GlobalConfig = require(script.GlobalConfig)

local FFlagDisableAutoTranslateForKeyTranslatedContent = require(
	RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)
local isNewTopBarEnabled = require(RobloxGui.Modules.TopBar.isNewTopBarEnabled)

local FFlagTopBarNewGamepadMenu = require(RobloxGui.Modules.Flags.FFlagTopBarNewGamepadMenu)

local OpenChangedEvent = Instance.new("BindableEvent")
local RespawnBehaviourChangedEvent = Instance.new("BindableEvent")

local menuStore = createStore()

return {
	mountInGameMenu = function()
		registerSetCores(menuStore)
		bindMenuActions(menuStore)
		if FFlagTopBarNewGamepadMenu then
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

			if FFlagTopBarNewGamepadMenu then
				local newEnabled = newState.respawn.enabled
				local oldEnabled = oldState.respawn.enabled

				local newCallback = newState.respawn.customCallback
				local oldCallback = oldState.respawn.customCallback

				if newEnabled ~= oldEnabled and newCallback ~= oldCallback then
					RespawnBehaviourChangedEvent:Fire(newEnabled, newCallback)
				end
			end
		end)

		local topbarButtonContainer
		if not isNewTopBarEnabled() then
			topbarButtonContainer = Instance.new("Frame")
			topbarButtonContainer.BackgroundTransparency = 1
			topbarButtonContainer.Size = UDim2.new(0, 50 + 16 + 8, 1, 0)

			local buttonTree = Roact.createElement(OpenMenuButton, {
				onClick = function()
					menuStore:dispatch(OpenMenu)
				end,
			})
			Roact.mount(buttonTree, topbarButtonContainer, "OpenInGameMenu")
		end

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

		local menuTree = Roact.createElement("ScreenGui", {
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

		Roact.mount(menuTree, CoreGui, "InGameMenu")

		if not isNewTopBarEnabled() then
			return topbarButtonContainer
		end
		return
	end,

	openInGameMenu = function()
		menuStore:dispatch(OpenMenu)
	end,

	openReportDialog = function(player)
		menuStore:dispatch(OpenMenu)
		menuStore:dispatch(OpenReportDialog(player.UserId, player.Name))
	end,

	openGameSettingsPage = function()
		menuStore:dispatch(OpenMenu)
		menuStore:dispatch(SetCurrentPage("GameSettings"))
	end,

	openPlayersPage = function()
		menuStore:dispatch(OpenMenu)
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

	openNativeClosePrompt = function()
		menuStore:dispatch(OpenNativeClosePrompt())
	end,
}
