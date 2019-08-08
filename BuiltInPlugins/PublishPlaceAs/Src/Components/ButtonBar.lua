--[[
	A horizontal collection of RoundTextButtons.

	Props:
		Enum.HorizontalAlignment HorizontalAlignment = The alignment of the button bar.
			Determines if buttons should be centered or aligned to one corner.
		table Buttons = The buttons to add to this button bar.
]]


local BUTTON_BAR_PADDING = 25
local BUTTON_BAR_EDGE_PADDING = 35

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Resources.Constants)
local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local RoundTextButton = UILibrary.Component.RoundTextButton

local BUTTON_WIDTH = 125
local BUTTON_HEIGHT = 35

local function ButtonBar(props)
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localization)
			local horizontalAlignment = props.HorizontalAlignment
			local buttons = props.Buttons
			local buttonClicked = props.buttonClicked
			local ZIndex = props.ZIndex

			local LayoutOrder = props.LayoutOrder or 1
			local AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5)
			local Position = props.Position or UDim2.new(0, 0, 0.5, 0)

			assert(type(buttons) == "table", "ButtonBar.Buttons must be a table")

			local components = {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, BUTTON_BAR_PADDING),
					HorizontalAlignment = horizontalAlignment,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
				})
			}

			if horizontalAlignment ~= Enum.HorizontalAlignment.Center then
				table.insert(components, Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, BUTTON_BAR_EDGE_PADDING),
				}))
			end

			-- buttons
			-- 		Name
			-- 		Active
			-- 		Default
			-- 		Value
			for i, button in ipairs(buttons) do
				table.insert(components, Roact.createElement(RoundTextButton, {
					LayoutOrder = i,
					Style = button.Default and theme.defaultButton or theme.cancelButton,
					BorderMatchesBackground = button.Default,
					Size = UDim2.new(0, BUTTON_WIDTH, 1, 0),
					Active = button.Active,
					Name = localization:getText("Button", button.Name),
					ZIndex = ZIndex or 1,
					TextSize = Constants.TEXT_SIZE,

					OnClicked = function()
						buttonClicked(button.Value)
					end,
				}))
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
				LayoutOrder = LayoutOrder,
				AnchorPoint = AnchorPoint,
				Position = Position,
				BackgroundTransparency = 1,
			}, components)
		end)
	end)
end

return ButtonBar
