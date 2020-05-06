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
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)

local ContextServices = require(Plugin.Framework.ContextServices)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local RoundTextButton = UILibrary.Component.RoundTextButton

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local ButtonBar = Roact.PureComponent:extend("ButtonBar")

function ButtonBar:DEPRECATED_render()
	local props = self.props
	return withTheme(function(theme)
		local horizontalAlignment = props.HorizontalAlignment
		local buttons = props.Buttons

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

		for i, button in ipairs(buttons) do
			table.insert(components, Roact.createElement(RoundTextButton, Cryo.Dictionary.join(theme.fontStyle.Normal, {
				LayoutOrder = i,
				Style = button.Default and theme.defaultButton or theme.cancelButton,
				BorderMatchesBackground = button.Default and not theme.isDarkerTheme,
				Size = UDim2.new(0, DEPRECATED_Constants.BUTTON_WIDTH, 1, 0),
				Active = button.Active,
				Name = button.Name,
				Value = button.Value,
				ZIndex = props.ZIndex or 1,

				OnClicked = function(value)
					props.ButtonClicked(value)
				end,
			})))
		end

		return Roact.createElement("Frame", {
			LayoutOrder = props.LayoutOrder or 1,
			Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.BUTTON_HEIGHT),
			AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
			Position = props.Position or UDim2.new(0, 0, 0.5, 0),
			BackgroundTransparency = 1,
		}, components)
	end)
end

function ButtonBar:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")

	local horizontalAlignment = props.HorizontalAlignment
	local buttons = props.Buttons

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

	for i, button in ipairs(buttons) do
		table.insert(components, Roact.createElement(RoundTextButton, Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = i,
			Style = button.Default and theme.defaultButton or theme.cancelButton,
			BorderMatchesBackground = button.Default and not theme.isDarkerTheme,
			Size = UDim2.new(0, DEPRECATED_Constants.BUTTON_WIDTH, 1, 0),
			Active = button.Active,
			Name = button.Name,
			Value = button.Value,
			ZIndex = props.ZIndex or 1,

			OnClicked = function(value)
				props.ButtonClicked(value)
			end,
		})))
	end

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder or 1,
		Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.BUTTON_HEIGHT),
		AnchorPoint = props.AnchorPoint or Vector2.new(0, 0.5),
		Position = props.Position or UDim2.new(0, 0, 0.5, 0),
		BackgroundTransparency = 1,
	}, components)
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(ButtonBar,{
		Theme = ContextServices.Theme
	})
end

return ButtonBar