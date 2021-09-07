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

local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")
local FFlagCheckPublishedPlaceExistsForDevPublish = game:GetFastFlag("CheckPublishedPlaceExistsForDevPublish")

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local CheckBox = UILibrary.Component.CheckBox

local TitledFrame = UILibrary.Component.TitledFrame

local CheckBoxSet = Roact.PureComponent:extend("CheckBoxSet")

function CheckBoxSet:render()
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

	-- TODO: Implement CheckBox changes into DevFramework since we want to deprecate UILibrary eventually.
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
			Link = box.LinkTextFrame,
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

	if FFlagCheckPublishedPlaceExistsForDevPublish then
		if props.ShowWarning then
			maxHeight = maxHeight * 3
		end
	end

	return Roact.createElement(TitledFrame, {
		Title = props.Title,
		MaxHeight = maxHeight,
		LayoutOrder = props.LayoutOrder or 1,
		TextSize = theme.fontStyle.Title.TextSize,
		Tooltip = props.Tooltip,
	}, children)
end

if FFlagGameSettingsWithContext then
	CheckBoxSet = withContext({
		Theme = ContextServices.Theme,
	})(CheckBoxSet)
else
	ContextServices.mapToProps(CheckBoxSet, {
		Theme = ContextServices.Theme,
	})
end


return CheckBoxSet
