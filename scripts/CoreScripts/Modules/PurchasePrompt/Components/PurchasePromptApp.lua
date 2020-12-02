local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Rodux = PurchasePromptDeps.Rodux
local RoactRodux = PurchasePromptDeps.RoactRodux
local UIBlox = PurchasePromptDeps.UIBlox
local StyleProvider = UIBlox.Style.Provider

local Reducer = require(Root.Reducers.Reducer)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local PremiumPrompt = require(script.Parent.PremiumPrompt.PremiumPrompt)
local PurchasePrompt = require(script.Parent.PurchasePrompt.PurchasePrompt)
local EventConnections = require(script.Parent.Connection.EventConnections)
local LayoutValuesProvider = require(script.Parent.Connection.LayoutValuesProvider)
local provideRobloxLocale = require(script.Parent.Connection.provideRobloxLocale)

local DarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local Gotham = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local PurchasePromptApp = Roact.Component:extend("PurchasePromptApp")

function PurchasePromptApp:init()
	local initialState = {}

	local network = Network.new()
	local analytics = Analytics.new()
	local platformInterface = PlatformInterface.new()
	local externalSettings = ExternalSettings.new()

	self.state = {
		store = Rodux.Store.new(Reducer, initialState, {
			Thunk.middleware({
				[Network] = network,
				[Analytics] = analytics,
				[PlatformInterface] = platformInterface,
				[ExternalSettings] = externalSettings,
			}),
		}),
		isTenFootInterface = externalSettings.isTenFootInterface(),
	}
end

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
				PurchasePrompt = Roact.createElement(LayoutValuesProvider, {
					isTenFootInterface = self.state.isTenFootInterface,
					render = function()
						return Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
						}, {
							PremiumPromptUI = Roact.createElement(PremiumPrompt),
							PurchasePromptUI = Roact.createElement(PurchasePrompt),
							EventConnections = Roact.createElement(EventConnections),
						})
					end
				})
			})
		})
	end)
end

return PurchasePromptApp
