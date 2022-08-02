--[[
	Displays a progress bar with a title and subtitle text, and pause+cancel buttons
	Props:
		number Progress: Current progress of the operation, between 0 and 1
		bool IsPaused: Whether the operation is paused or not

		string Title: The title of the operation
		string SubText: Current part of the operation that's running

		callback OnPauseButtonClicked: Called when the pause/resume button is clicked.
			If this is nil then the pause button isn't shown
		callback OnCancelButtonClicked: Called when the cancel button is clicked.
			If this is nil then the cancel button isn't shown

		vector2 AnchorPoint
		UDim2 Position
]]
local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = if FFlagRemoveUILibraryCompatLocalization then nil else require(Plugin.Src.ContextItems)

local UI = Framework.UI
local Container = UI.Container
local Button = UI.Button
local HoverArea = UI.HoverArea
local LoadingBar = UI.LoadingBar

local Decoration = UI.Decoration
local Box = Decoration.Box
local TextLabel = Decoration.TextLabel

local function ProgressWidgetButton(props)
	return Roact.createElement(Button, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(0, 96, 0, 28),

		Text = props.Text,
		Style = props.Style,

		OnClick = props.OnClick,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
	})
end

local ProgressWidget = Roact.PureComponent:extend("ProgressWidget")

function ProgressWidget:render()
	local props = self.props
	local localization = if FFlagRemoveUILibraryCompatLocalization then props.Localization else self.props.Localization:get()

	local anchorPoint = props.AnchorPoint
	local position = props.Position

	local title = props.Title or ""
	local subtext = props.SubText
	local hasSubtext = subtext and #subtext > 0

	local progress = props.Progress or 0
	local isPaused = props.IsPaused

	local onPauseButtonClicked = props.OnPauseButtonClicked
	local onCancelButtonClicked = props.OnCancelButtonClicked

	local pausable = onPauseButtonClicked ~= nil
	local cancelable = onCancelButtonClicked ~= nil
	local showButtonRow = pausable or cancelable

	local textRowHeight = 19
	local buttonRowHeight = 40
	local loadingBarRowHeight = 10 -- The row is taller than the bar itself to fake extra padding
	local outerPadding = 20
	local rowPadding = 8

	local height = outerPadding + textRowHeight + rowPadding + loadingBarRowHeight + outerPadding
		+ (hasSubtext and (textRowHeight + rowPadding) or 0)
		+ (showButtonRow and (buttonRowHeight + rowPadding) or 0)

	return Roact.createElement(Container, {
		AnchorPoint = anchorPoint,
		Position = position,
		Size = UDim2.new(0, 406, 0, height),
		Background = Box,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, outerPadding),
			PaddingLeft = UDim.new(0, outerPadding),
			PaddingRight = UDim.new(0, outerPadding),
			PaddingBottom = UDim.new(0, outerPadding),
		}),

		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, rowPadding),
		}),

		Title = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, textRowHeight),

			Text = title,
			Font = Enum.Font.SourceSansBold,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		LoadingBarContainer = Roact.createElement(Container, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 0, loadingBarRowHeight),
		}, {
			LoadingBar = Roact.createElement(LoadingBar, {
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 6),

				Progress = progress,
			}),
		}),

		SubText = hasSubtext and Roact.createElement(TextLabel, {
			LayoutOrder = 3,
			Size = UDim2.new(1, 0, 0, textRowHeight),

			Text = subtext,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		ButtonRow = showButtonRow and Roact.createElement(Container, {
			LayoutOrder = 4,
			Size = UDim2.new(1, 0, 0, buttonRowHeight),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 8),
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
			}),

			PauseButton = pausable and Roact.createElement(ProgressWidgetButton, {
				LayoutOrder = 1,
				Text = localization:getText("Action", isPaused and "Resume" or "Pause"),
				-- This was set to "Round", but the terrain-specific color scheme was modified to make Round look the same as RoundPrimary,
				-- I don't know what was the original intention, but this keeps the looks unchanged.
				Style = "RoundPrimary",   
				OnClick = onPauseButtonClicked,
			}),

			CancelButton = cancelable and Roact.createElement(ProgressWidgetButton, {
				LayoutOrder = 2,
				Text = localization:getText("Action", "Cancel"),
				Style = "RoundPrimary",
				OnClick = onCancelButtonClicked,
			}),
		}),
	})
end

ProgressWidget = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
})(ProgressWidget)

return ProgressWidget
