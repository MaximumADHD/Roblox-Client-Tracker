--[[
	Prompts the user to confirm whether they want to discard the selected drafts

	Props:
	Drafts - The list of draft instances that will be discarded
	ChoiceSelected - Callback to invoke whenever the user selects an option
		in the dialog. True for confirm, false for cancel / closing the dialog
--]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateScrollingFrame = SharedFlags.getFFlagDevFrameworkMigrateScrollingFrame()

local UI = Framework.UI
local BulletList = UI.BulletList

local Dash = Framework.Dash
local map = Dash.map

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StyledDialog = UI.StyledDialog
local StyledScrollingFrame = UI.ScrollingFrame
local TextLabel = UI.TextLabel

local HEADER_TEXT_SIZE = 22

local DIALOG_SIZE = Vector2.new(430, 200)
local DIALOG_CONTENTS_PADDING = UDim.new(0, 32)
local DIALOG_CONTENTS_BORDER_PADDING = {
	PaddingLeft = UDim.new(0, 16),
	PaddingRight = UDim.new(0, 16),
	PaddingTop = UDim.new(0, 48),
	PaddingBottom = UDim.new(0, 48),
}

local DraftDiscardDialog = Roact.PureComponent:extend("DraftDiscardDialog")

function DraftDiscardDialog:init()
	self:setState({})
end

function DraftDiscardDialog:render()
	local localization = self.props.Localization
	local style = self.props.Stylizer
	local drafts = self.props.Drafts
	local choiceSelected = self.props.ChoiceSelected

	local bullets = Roact.createElement(BulletList, {
		TextTruncate = Enum.TextTruncate.AtEnd,
		Items = map(drafts, function(draft)
			return draft.Name
		end),
	})

	return Roact.createElement(StyledDialog, {
		Title = localization:getText("DiscardDialog", "Title"),
		Modal = true,

		Buttons = {
			{ Key = true, Text = localization:getText("Dialog", "Yes"), Style = "RoundLargeText" },
			{ Key = false, Text = localization:getText("Dialog", "No"), Style = "RoundLargeTextPrimary" },
		},
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		OnButtonPressed = choiceSelected,
		OnClose = function()
			choiceSelected(false)
		end,

		MinContentSize = DIALOG_SIZE,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = DIALOG_CONTENTS_PADDING,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		Padding = Roact.createElement("UIPadding", DIALOG_CONTENTS_BORDER_PADDING),

		Header = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			AutomaticSize = Enum.AutomaticSize.XY,

			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,

			Text = localization:getText("DiscardDialog", "ConfirmQuestion"),
			TextSize = HEADER_TEXT_SIZE,
			Font = style.dialogUILibrary.HeaderFont,
			TextColor = style.dialogUILibrary.HeaderTextColor,
		}),

		DraftList = Roact.createElement(StyledScrollingFrame, {
			AutomaticCanvasSize = if FFlagDevFrameworkMigrateScrollingFrame then Enum.AutomaticSize.Y else nil,
			LayoutOrder = 2,
		}, {
			Bullets = bullets,
		}),
	})
end

DraftDiscardDialog = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(DraftDiscardDialog)

return DraftDiscardDialog
