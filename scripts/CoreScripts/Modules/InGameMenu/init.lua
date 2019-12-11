local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")

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
local createStore = require(script.createStore)

local OpenMenuButton = require(script.Components.OpenMenuButton)
local App = require(script.Components.App)

local Localization = require(script.Localization.Localization)

local SetLocaleId = require(script.Actions.SetLocaleId)
local OpenReportDialog = require(script.Actions.OpenReportDialog)
local SetInspectMenuEnabled = require(script.Actions.SetInspectMenuEnabled)
local SetCurrentPage = require(script.Actions.SetCurrentPage)
local OpenMenu = require(script.Thunks.OpenMenu)

local GlobalConfig = require(script.GlobalConfig)

local menuStore = createStore()

return {
	mountInGameMenu = function()
		registerSetCores(menuStore)
		bindMenuActions(menuStore)
		requestGameInfo(menuStore)
		requestGameSourceLanguage(menuStore)
		Roact.setGlobalConfig({
			propValidation = GlobalConfig.propValidation,
			elementTracing = GlobalConfig.elementTracing,
		})

		local topbarButtonContainer = Instance.new("Frame")
		topbarButtonContainer.BackgroundTransparency = 1
		topbarButtonContainer.Size = UDim2.new(0, 50 + 16 + 8, 1, 0)

		local buttonTree = Roact.createElement(OpenMenuButton, {
			onClick = function()
				menuStore:dispatch(OpenMenu)
			end,
		})
		Roact.mount(buttonTree, topbarButtonContainer, "OpenInGameMenu")

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

		return topbarButtonContainer
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
}