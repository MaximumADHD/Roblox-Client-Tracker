--[[
	Component that wraps its provided children with a store provider,
	a LayoutValues object, and a ScreenGui. Convenient for testing!
]]
local Root = script.Parent.Parent
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)
local Rodux = require(LuaPackages.Rodux)
local RoactRodux = require(LuaPackages.RoactRodux)
local UIBlox = require(LuaPackages.UIBlox)
local StyleProvider = UIBlox.Style.Provider

local LayoutValuesProvider = require(Root.Components.Connection.LayoutValuesProvider)
local LocalizationContextProvider = require(Root.Components.Connection.LocalizationContextProvider)
local getLocalizationContext = require(Root.Localization.getLocalizationContext)
local Reducer = require(Root.Reducers.Reducer)
local LayoutValues = require(Root.Services.LayoutValues)

local DarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local Gotham = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local UnitTestContainer = Roact.Component:extend("UnitTestContainer")

function UnitTestContainer:init()
	self.layoutValues = LayoutValues.new(false, false).layout
	self.store = self.props.overrideStore or Rodux.Store.new(Reducer, {})

	local locale = self.props.overrideLocale or LocalizationService.RobloxLocaleId
	self.localizationContext = getLocalizationContext(locale)
end

function UnitTestContainer:render()
	assert(self.props[Roact.Children] ~= nil and #self.props[Roact.Children] > 0,
		"UnitTestContainer: no children provided, nothing will be tested")

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PurchasePrompt = Roact.createElement(StyleProvider, {
			style = {
				Theme = DarkTheme,
				Font = Gotham,
			},
		}, {
			Roact.createElement(LocalizationContextProvider, {
				localizationContext = self.localizationContext,
				render = function()
					return Roact.createElement(LayoutValuesProvider, {
						isTenFootInterface = false,
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
	})
end

return UnitTestContainer