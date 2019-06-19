--[[
	A set of an arbitrary number of CheckBoxes.

	Props:
		string Title = The title to place to the left of this CheckBoxSet.
		table Boxes = A collection of props for all CheckBoxes to add.
		function EntryClicked(box) = A callback for when a CheckBox was clicked.
		int LayoutOrder = The order this CheckBoxSet will sort to when placed in a UIListLayout.
		string ErrorMessage = An error message to display on this CheckBoxSet.
]]

local FFlagGameSettingsUseUILibraryCheckBox = settings():GetFFlag("GameSettingsUseUILibraryCheckBox")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local CheckBox
if FFlagGameSettingsUseUILibraryCheckBox then
	CheckBox = require(Plugin.UILibrary.Components.CheckBox)
else
	CheckBox = require(Plugin.Src.Components.CheckBox)
end

local TitledFrame = require(Plugin.UILibrary.Components.TitledFrame)

local function CheckBoxSet(props)
	return withTheme(function(theme)
		local boxes = props.Boxes
		local numBoxes = #boxes
		local errorState = props.ErrorMessage ~= nil

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, Constants.CHECKBOX_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}

		for i, box in ipairs(boxes) do
			table.insert(children, Roact.createElement(CheckBox, {
				Title = box.Title,
				Id = box.Id,
				Height = Constants.CHECKBOX_SIZE,
				TextSize = Constants.CHECKBOX_SIZE,
				Description = box.Description,
				Selected = box.Selected,
				Enabled = props.Enabled,
				LayoutOrder = i,
				OnActivated = function()
					props.EntryClicked(box)
				end,

				-- TODO (dnurkkala):
				-- remove with the removal of FFlagGameSettingsUseUILibraryCheckBox
				OnClicked = function()
					props.EntryClicked(box)
				end,
			}))
		end

		if errorState then
			children.Error = Roact.createElement("TextLabel", {
				LayoutOrder = numBoxes + 1,
				Size = UDim2.new(1, 0, 0, Constants.CHECKBOX_SIZE),
				BackgroundTransparency = 1,
				TextColor3 = Constants.ERROR_COLOR,
				Text = props.ErrorMessage,
				Font = Enum.Font.SourceSans,
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
		end

		local maxHeight = numBoxes * Constants.CHECKBOX_SIZE
			+ numBoxes * Constants.CHECKBOX_PADDING

		return Roact.createElement(TitledFrame, {
			Title = props.Title,
			MaxHeight = maxHeight,
			LayoutOrder = props.LayoutOrder or 1,
			TextSize = Constants.TEXT_SIZE,
		}, children)
	end)
end

return CheckBoxSet