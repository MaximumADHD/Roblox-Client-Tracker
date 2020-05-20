--[[
	A set of an arbitrary number of CheckBoxes.

	Props:
		string Title = The title to place to the left of this CheckBoxSet.
		table Boxes = A collection of props for all CheckBoxes to add.
		function EntryClicked(box) = A callback for when a CheckBox was clicked.
		int LayoutOrder = The order this CheckBoxSet will sort to when placed in a UIListLayout.
		string ErrorMessage = An error message to display on this CheckBoxSet.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)

local ContextServices = require(Plugin.Framework.ContextServices)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local CheckBox = UILibrary.Component.CheckBox

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local TitledFrame = UILibrary.Component.TitledFrame

local CheckBoxSet = Roact.PureComponent:extend("CheckBoxSet")

function CheckBoxSet:DEPRECATED_render()
	return withTheme(function(theme)
		local props = self.props
		local boxes = props.Boxes
		local numBoxes = #boxes
		local errorState = props.ErrorMessage ~= nil

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, DEPRECATED_Constants.CHECKBOX_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}

		for i, box in ipairs(boxes) do
			table.insert(children, Roact.createElement(CheckBox, {
				Title = box.Title,
				Id = box.Id,
				Height = DEPRECATED_Constants.CHECKBOX_SIZE,
				TextSize = theme.fontStyle.Smaller.TextSize,
				Description = box.Description,
				Selected = box.Selected,
				Enabled = props.Enabled,
				LayoutOrder = i,
				OnActivated = function()
					props.EntryClicked(box)
				end,
			}))
		end

		if errorState then
			children.Error = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SmallError, {
				LayoutOrder = numBoxes + 1,
				Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.CHECKBOX_SIZE),
				BackgroundTransparency = 1,
				Text = props.ErrorMessage,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}))
		end

		local maxHeight = numBoxes * DEPRECATED_Constants.CHECKBOX_SIZE
			+ numBoxes * DEPRECATED_Constants.CHECKBOX_PADDING

		return Roact.createElement(TitledFrame, {
			Title = props.Title,
			MaxHeight = maxHeight,
			LayoutOrder = props.LayoutOrder or 1,
			TextSize = theme.fontStyle.Title.TextSize,
		}, children)
	end)
end

function CheckBoxSet:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")

	local boxes = props.Boxes
	local numBoxes = #boxes
	local errorState = props.ErrorMessage ~= nil

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, DEPRECATED_Constants.CHECKBOX_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	for i, box in ipairs(boxes) do
		table.insert(children, Roact.createElement(CheckBox, {
			Title = box.Title,
			Id = box.Id,
			Height = DEPRECATED_Constants.CHECKBOX_SIZE,
			TextSize = theme.fontStyle.Smaller.TextSize,
			Description = box.Description,
			Selected = box.Selected,
			Enabled = props.Enabled,
			LayoutOrder = i,
			OnActivated = function()
				props.EntryClicked(box)
			end,
		}))
	end

	if errorState then
		children.Error = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SmallError, {
			LayoutOrder = numBoxes + 1,
			Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.CHECKBOX_SIZE),
			BackgroundTransparency = 1,
			Text = props.ErrorMessage,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}))
	end

	local maxHeight = numBoxes * DEPRECATED_Constants.CHECKBOX_SIZE
		+ numBoxes * DEPRECATED_Constants.CHECKBOX_PADDING

	return Roact.createElement(TitledFrame, {
		Title = props.Title,
		MaxHeight = maxHeight,
		LayoutOrder = props.LayoutOrder or 1,
		TextSize = theme.fontStyle.Title.TextSize,
	}, children)
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(CheckBoxSet, {
		Theme = ContextServices.Theme,
	})
end

return CheckBoxSet