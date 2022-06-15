--[[
	The top level container of the Player Emulator window.
	Contains MainSwitchSection, LanuageSection, CountryRegionSection, CustomPolicySwitchSection, and PolicySection
]]
local FFlagRemoveUILibrarySeparator = game:GetFastFlag("RemoveUILibrarySeparator")
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
-- TODO: jbousellam - remove with FFlagRemoveUILibrarySeparator
local UILibrary = require(Plugin.Packages.UILibrary)
local Separator = if FFlagRemoveUILibrarySeparator then Framework.UI.Separator else UILibrary.Component.Separator
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local MainSwitchSection = require(Plugin.Src.Components.MainSwitchSection)
local CustomPolicySwitchSection = require(Plugin.Src.Components.CustomPolicySwitchSection)
local LanguageSection = require(Plugin.Src.Components.LanguageSection)
local CountryRegionSection = require(Plugin.Src.Components.CountryRegionSection)
local PolicySection = require(Plugin.Src.Components.PolicySection)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local layoutIndex = LayoutOrderIterator.new()

	local props = self.props
	local theme = props.Stylizer

	if game:GetFastFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges2") then
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
			MainSwitchSection = Roact.createElement(MainSwitchSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			Separator = Roact.createElement(Separator, {
				Size = if FFlagRemoveUILibrarySeparator then nil else UDim2.new(1, 0, 0, 1),
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			LanguageSection = Roact.createElement(LanguageSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			CountryRegionSection = Roact.createElement(CountryRegionSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			CustomPolicySwitchSection = Roact.createElement(CustomPolicySwitchSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			PolicySection =  Roact.createElement(PolicySection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
		})
	else
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
			MainSwitchSection = Roact.createElement(MainSwitchSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			Separator = Roact.createElement(Separator, {
				Size = UDim2.new(1, 0, 0, 1),
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			LanguageSection = Roact.createElement(LanguageSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			CountryRegionSection = Roact.createElement(CountryRegionSection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
			PolicySection =  Roact.createElement(PolicySection, {
				LayoutOrder = layoutIndex:getNextOrder(),
			}),
		})
	end
end


MainView = withContext({
	Stylizer = ContextServices.Stylizer,
})(MainView)



return MainView