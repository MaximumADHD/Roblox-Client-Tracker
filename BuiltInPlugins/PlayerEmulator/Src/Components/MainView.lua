--[[
	The top level container of the Player Emulator window.
	Contains LanuageSection, CountryRegionSection and PolicySection
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibrary = require(Plugin.Packages.UILibrary)
local Separator = UILibrary.Component.Separator

local LanguageSection = require(Plugin.Src.Components.LanguageSection)
local CountryRegionSection = require(Plugin.Src.Components.CountryRegionSection)
local PolicySection = require(Plugin.Src.Components.PolicySection)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")

	return Roact.createElement("Frame", {
		Size = UDim2.new(1,0,1,0),
		BackgroundColor3 = theme.BackgroundColor,
		Position = UDim2.new(0,0,0,0),
	},{
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = theme.MAINVIEW_PADDING_TOP,
			PaddingLeft = theme.MAINVIEW_PADDING_LEFT,
			PaddingRight = theme.MAINVIEW_PADDING_LEFT,
		}),
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = theme.HORIZONTAL_LISTLAYOUT_PADDING,
		}),
		LanguageSection = Roact.createElement(LanguageSection, {
			LayoutOrder = 1,
		}),
		CountryRegionSection = Roact.createElement(CountryRegionSection, {
			LayoutOrder = 3,
		}),
		Separator = Roact.createElement(Separator, {
			Size = UDim2.new(1, 0, 0, 1),
			LayoutOrder = 4,
		}),
		PolicySection =  Roact.createElement(PolicySection, {
			LayoutOrder = 5,
		}),
	})
end

ContextServices.mapToProps(MainView, {
	Theme = ContextServices.Theme,
})

return MainView