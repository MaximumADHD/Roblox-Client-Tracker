local Root = script.Parent.Parent

local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Rodux = PurchasePromptDeps.Rodux
local RoactRodux = PurchasePromptDeps.RoactRodux
local UIBlox = PurchasePromptDeps.UIBlox
local StyleProvider = UIBlox.Style.Provider
local IAPExperience = require(CorePackages.IAPExperience)
local LocaleProvider =  IAPExperience.Locale.LocaleProvider

local Reducer = require(Root.Reducers.Reducer)
local ABTest = require(Root.Services.ABTest)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local EventConnections = require(script.Parent.Connection.EventConnections)
local LayoutValuesProvider = require(script.Parent.Connection.LayoutValuesProvider)
local provideRobloxLocale = require(script.Parent.Connection.provideRobloxLocale)
local PurchasePromptPolicy = require(Root.Components.Connection.PurchasePromptPolicy)

local ProductPurchaseContainer = require(script.Parent.ProductPurchase.ProductPurchaseContainer)
local RobuxUpsellContainer = require(script.Parent.RobuxUpsell.RobuxUpsellContainer)
local PremiumUpsellContainer = require(script.Parent.PremiumUpsell.PremiumUpsellContainer)

local DarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local Gotham = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local InGameMenu = script.Parent.Parent.Parent.InGameMenuV3
local InGameMenuConstants = require(InGameMenu.Resources.Constants)
local Modules = CoreGui.RobloxGui.Modules
local GetFFlagEnableInGameMenuV3 = require(Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)
local isNewInGameMenuEnabled = require(Modules.isNewInGameMenuEnabled)

local PurchasePromptApp = Roact.Component:extend("PurchasePromptApp")

function PurchasePromptApp:init()
	local initialState = {}

	local abTest = ABTest.new()
	local network = Network.new()
	local analytics = Analytics.new()
	local platformInterface = PlatformInterface.new()
	local externalSettings = ExternalSettings.new()

	self.state = {
		store = Rodux.Store.new(Reducer, initialState, {
			Thunk.middleware({
				[ABTest] = abTest,
				[Network] = network,
				[Analytics] = analytics,
				[PlatformInterface] = platformInterface,
				[ExternalSettings] = externalSettings,
			}),
		}),
		isTenFootInterface = externalSettings.isTenFootInterface(),
	}
end

local shouldIncludeDisplayOrder = GetFFlagEnableInGameMenuV3() and isNewInGameMenuEnabled()
function PurchasePromptApp:render()
	return provideRobloxLocale(function()
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = self.state.store,
		}, {
			StyleProvider = Roact.createElement(StyleProvider, {
				style = {
					Theme = DarkTheme,
					Font = Gotham,
				},
			}, {
				LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
					isTenFootInterface = self.state.isTenFootInterface,
				}, {
					PolicyProvider = Roact.createElement(PurchasePromptPolicy.Provider, {
						policy = { PurchasePromptPolicy.Mapper },
					}, {
						PurchasePrompt = Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
							DisplayOrder = shouldIncludeDisplayOrder and InGameMenuConstants.DisplayOrder.RobloxGui or nil,
						}, {
							LocaleProvider = Roact.createElement(LocaleProvider, {
								locale = LocalizationService.RobloxLocaleId
							}, {
								ProductPurchaseContainer = Roact.createElement(ProductPurchaseContainer),
								RobuxUpsellContainer = Roact.createElement(RobuxUpsellContainer),
								PremiumUpsellContainer = Roact.createElement(PremiumUpsellContainer),
							}),
							EventConnections = Roact.createElement(EventConnections),
						})
					})
				})
			})
		})
	end)
end

return PurchasePromptApp
