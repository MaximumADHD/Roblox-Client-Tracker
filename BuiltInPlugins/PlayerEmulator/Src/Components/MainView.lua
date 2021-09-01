--[[
	The top level container of the Player Emulator window.
	Contains MainSwitchSection, LanuageSection, CountryRegionSection, CustomPolicySwitchSection, and PolicySection
]]
local FFlagPlayerEmulatorWithContext = game:GetFastFlag("PlayerEmulatorWithContext")
local PlayerEmulatorCustomPoliciesToggleEnabledUIChanges = game:GetFastFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UILibrary = require(Plugin.Packages.UILibrary)
local Separator = UILibrary.Component.Separator
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local MainSwitchSection = require(Plugin.Src.Components.MainSwitchSection)
local CustomPolicySwitchSection = require(Plugin.Src.Components.CustomPolicySwitchSection)
local LanguageSection = require(Plugin.Src.Components.LanguageSection)
local CountryRegionSection = require(Plugin.Src.Components.CountryRegionSection)
local PolicySection = require(Plugin.Src.Components.PolicySection)

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local layoutIndex = LayoutOrderIterator.new()

	local props = self.props
	local theme
	if THEME_REFACTOR then
	    theme = props.Stylizer
	else
	    theme = props.Theme:get("Plugin")
	end
	
	if PlayerEmulatorCustomPoliciesToggleEnabledUIChanges then
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

if FFlagPlayerEmulatorWithContext then
	MainView = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(MainView)
else
	ContextServices.mapToProps(MainView, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return MainView