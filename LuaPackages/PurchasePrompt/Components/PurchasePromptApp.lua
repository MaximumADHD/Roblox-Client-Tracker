local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local Thunk = require(script.Parent.Parent.Thunk)

local EventConnections = require(script.Parent.Connection.EventConnections)
local PurchasePrompt = require(script.Parent.Presentation.PurchasePrompt)

local LayoutValuesProvider = require(script.Parent.Connection.LayoutValuesProvider)
local provideRobloxLocale = require(script.Parent.Connection.provideRobloxLocale)

local Network = require(script.Parent.Parent.Services.Network)
local Analytics = require(script.Parent.Parent.Services.Analytics)
local PlatformInterface = require(script.Parent.Parent.Services.PlatformInterface)
local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)
local LayoutValues = require(script.Parent.Parent.Services.LayoutValues)

local Reducer = require(script.Parent.Parent.Reducers.Reducer)

local preloadImageAssets = require(script.Parent.Parent.preloadImageAssets)

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
		layoutValues = LayoutValues.generate(externalSettings.isTenFootInterface()),
	}
end

function PurchasePromptApp:didMount()
	preloadImageAssets(self.state.layoutValues.Image)
end

function PurchasePromptApp:render()
	return provideRobloxLocale(function()
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = self.state.store,
		}, {
			PurchasePrompt = Roact.createElement(LayoutValuesProvider, {
				layoutValues = self.state.layoutValues,
				render = function()
					return Roact.createElement("ScreenGui", {
						AutoLocalize = false,
						IgnoreGuiInset = true,
					}, {
						PurchasePromptUI = Roact.createElement(PurchasePrompt),
						EventConnections = Roact.createElement(EventConnections),
					})
				end,
			})
		})
	end)
end

return PurchasePromptApp