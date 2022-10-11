--[[
	A horizontal collection of Buttons.

	Props:
		Enum.HorizontalAlignment HorizontalAlignment = The alignment of the button bar.
			Determines if buttons should be centered or aligned to one corner.
		table Buttons = The buttons to add to this button bar.
]]
local BUTTON_BAR_PADDING = 25
local BUTTON_BAR_EDGE_PADDING = 35

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Resources.Constants)
local UILibrary = require(Plugin.Packages.UILibrary)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()

local UI = Framework.UI
local Button = if FFlagRemoveUILibraryButton then UI.Button else UILibrary.Component.RoundTextButton

local StyleModifier = Framework.Util.StyleModifier

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local BUTTON_WIDTH = 125
local BUTTON_HEIGHT = 35

local ButtonBar = Roact.PureComponent:extend("ButtonBar")

function ButtonBar:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	local horizontalAlignment = props.HorizontalAlignment
	local buttons = props.Buttons
	local buttonActivated = props.buttonActivated
	local ZIndex = props.ZIndex

	local LayoutOrder = props.LayoutOrder or 1
	local AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5)
	local Position = props.Position or UDim2.new(0, 0, 0.5, 0)

	local children = props[Roact.Children]

	assert(type(buttons) == "table", "ButtonBar.Buttons must be a table")

	local components = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, BUTTON_BAR_PADDING),
			HorizontalAlignment = horizontalAlignment,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}, children),
	}

	if horizontalAlignment ~= Enum.HorizontalAlignment.Center then
		table.insert(
			components,
			Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, BUTTON_BAR_EDGE_PADDING),
			})
		)
	end

	-- buttons
	-- 		Name
	-- 		Active
	-- 		Default
	-- 		Value
	for i, button in ipairs(buttons) do
		table.insert(
			components,
			Roact.createElement(
				Button,
				if FFlagRemoveUILibraryButton
					then {
						OnClick = function()
							buttonActivated(button.Value)
						end,
						LayoutOrder = i,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Style = if button.Default then "RoundPrimary" else "Round",
						StyleModifier = if button.Active == false then StyleModifier.Disabled else nil,
						Text = localization:getText("FooterButton", button.Name),
						ZIndex = ZIndex or 1,
					}
					else {
						LayoutOrder = i,
						Style = button.Default and theme.defaultButton or theme.cancelButton,
						BorderMatchesBackground = button.Default,
						Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
						Active = button.Active,
						Name = localization:getText("FooterButton", button.Name),
						ZIndex = ZIndex or 1,
						TextSize = Constants.TEXT_SIZE,

						OnClicked = function()
							buttonActivated(button.Value)
						end,
					}
			)
		)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
		LayoutOrder = LayoutOrder,
		AnchorPoint = AnchorPoint,
		Position = Position,
		BackgroundTransparency = 1,
	}, components)
end

ButtonBar = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ButtonBar)

return ButtonBar
