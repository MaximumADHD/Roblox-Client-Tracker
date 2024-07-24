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
local ToastLite = require(CorePackages.Workspace.Packages.ToastLite)
local Toast = ToastLite.Components.Toast

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
local SubscriptionPurchaseContainer = require(script.Parent.SubscriptionPurchase.SubscriptionPurchaseContainer)

local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)
local GetFFlagEnableToastLiteRender = require(Root.Flags.GetFFlagEnableToastLiteRender)
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local PurchasePromptApp = Roact.Component:extend("PurchasePromptApp")

function PurchasePromptApp:init()
	local initialState = {}

	local abTest = ABTest.new()
	local network = Network.new()
	local analytics = Analytics.new()
	local platformInterface = PlatformInterface.new()
	local externalSettings = ExternalSettings.new()

	self.state = {
		-- Remove store from state with FFlagEnableAvatarCreationFeePurchase
		store = if not GetFFlagEnableAvatarCreationFeePurchase() then Rodux.Store.new(Reducer, initialState, {
			Thunk.middleware({
				[ABTest] = abTest,
				[Network] = network,
				[Analytics] = analytics,
				[PlatformInterface] = platformInterface,
				[ExternalSettings] = externalSettings,
			}),
		}) else nil,
		isTenFootInterface = externalSettings.isTenFootInterface(),
	}
end

function PurchasePromptApp:renderWithStyle(children)
	return renderWithCoreScriptsStyleProvider(children)
end

function PurchasePromptApp:render()
	return provideRobloxLocale(function()
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = if GetFFlagEnableAvatarCreationFeePurchase() then self.props.store else self.state.store,
		}, {
			StyleProvider = self:renderWithStyle({
				LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
					isTenFootInterface = self.state.isTenFootInterface,
				}, {
					PolicyProvider = Roact.createElement(PurchasePromptPolicy.Provider, {
						policy = { PurchasePromptPolicy.Mapper },
					}, {
						PurchasePrompt = Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
						}, {
							LocaleProvider = Roact.createElement(LocaleProvider, {
								locale = LocalizationService.RobloxLocaleId,
							}, {
								ProductPurchaseContainer = Roact.createElement(ProductPurchaseContainer),
								RobuxUpsellContainer = Roact.createElement(RobuxUpsellContainer),
								PremiumUpsellContainer = Roact.createElement(PremiumUpsellContainer),
								SubscriptionPurchaseContainer = Roact.createElement(SubscriptionPurchaseContainer),
							}),
							EventConnections = Roact.createElement(EventConnections),
							Toast = if GetFFlagEnableToastLiteRender() then Roact.createElement(Toast) else nil
						}),
					}),
				}),
			}),
		})
	end)
end

return PurchasePromptApp
