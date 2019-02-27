--[[
	Component that wraps its provided children with a store provider,
	a LayoutValues object, and a ScreenGui. Convenient for testing!
]]
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local LayoutValues = require(script.Parent.Parent.Services.LayoutValues)
local LayoutValuesProvider = require(script.Parent.Parent.Components.Connection.LayoutValuesProvider)

local LocalizationContextProvider = require(script.Parent.Parent.Components.Connection.LocalizationContextProvider)
local getLocalizationContext = require(script.Parent.Parent.Localization.getLocalizationContext)

local Reducer = require(script.Parent.Parent.Reducers.Reducer)

local UnitTestContainer = Roact.Component:extend("UnitTestContainer")

function UnitTestContainer:init()
	self.layoutValues = LayoutValues.generate(false)

	self.store = self.props.overrideStore or Rodux.Store.new(Reducer, {})

	local locale = self.props.overrideLocale or LocalizationService.RobloxLocaleId
	self.localizationContext = getLocalizationContext(locale)
end

function UnitTestContainer:render()
	assert(#self.props[Roact.Children] > 0,
		"UnitTestContainer: no children provided, nothing will be tested")

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PurchasePrompt = Roact.createElement(LocalizationContextProvider, {
			localizationContext = self.localizationContext,
			render = function()
				return Roact.createElement(LayoutValuesProvider, {
					layoutValues = self.layoutValues,
					render = function()
						return Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
						}, self.props[Roact.Children])
					end,
				})
			end,
		})
	})
end

return UnitTestContainer