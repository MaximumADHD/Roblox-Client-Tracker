local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local AddGroup = require(script.Parent.AddGroup)
local Constants = require(script.Parent.Parent.Constants)
local GroupButton = require(script.Parent.GroupButton)

local ControlsHeaderRow = Roact.Component:extend("ControlsHeaderRow")

function ControlsHeaderRow:init()
	self.textButtonPaneRef = Roact.createRef()
	self.state = {
		editing = false,
		buttonSize = Constants.ControlsHeaderButtonWidth,
	}

	self.onEditingChanged = function(editing)
		self:setState({editing = editing})
	end

	self.updateButtonFlexSize = function()
		self:setState(function(prevState)
			local textButtonPane = self.textButtonPaneRef:getValue()
			local width = textButtonPane.AbsoluteSize.X

			if width < Constants.ControlsHeaderButtonWidth * 2 then
				return {
					buttonSize = width - Constants.ControlsHeaderButtonWidth
				}
			else
				return {
					buttonSize = Constants.ControlsHeaderButtonWidth
				}
			end
		end)
	end
end

function ControlsHeaderRow:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer.ControlsHeaderRow

	return Roact.createElement(Pane, {
		Size = style.Size,
		Padding = style.Padding,
		Spacing = style.Spacing,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
	}, {
		TextButtonPane = Roact.createElement("Frame", {
			Size = style.TextButtonPane.Size,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[Roact.Change.AbsoluteSize] = self.updateButtonFlexSize,
			[Roact.Ref] = self.textButtonPaneRef,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}),
			ToggleViewButton = Roact.createElement(Pane, {
				Size = UDim2.new(0, self.state.buttonSize, 1, 0),
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}, {
				Button = Roact.createElement(Button, {
					Style = "Round",
					Text = if props.ToggleListView then localization:getText("Actions", "TableView") else
						localization:getText("Actions", "ListView"),
					Size = UDim2.fromOffset(self.state.buttonSize, style.ButtonHeight),
					OnClick = props.OnViewModeToggled,
				}),
			}),
			AddGroupButton = Roact.createElement(Pane, {
				Size = UDim2.new(1, -self.state.buttonSize, 1, 0),
				LayoutOrder = 2,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}, {
				Button = Roact.createElement(AddGroup, {
					Groups = props.Groups,
					OnGroupAdded = props.OnGroupAdded,
					OnEditingChanged = self.onEditingChanged,
				}),
			}),
		}),

		GroupButtonsPane = Roact.createElement(Pane, {
			Size = style.GroupButtonsPaneSize,
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		}, {
			RenameButton = Roact.createElement(GroupButton, {
				Style = "Rename",
				OnClick = props.OnGroupRenamed,
				TooltipMessage = props.Localization:getText("Tooltip", "Rename"),
				LayoutOrder = 1,
			}),
			DeleteButton = Roact.createElement(GroupButton, {
				Style = "Delete",
				OnClick = props.OnGroupDeleted,
				TooltipMessage = props.Localization:getText("Tooltip", "Delete"),
				LayoutOrder = 2,
			}),
		}),
	})
end

ControlsHeaderRow = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = Localization,
})(ControlsHeaderRow)

return ControlsHeaderRow
