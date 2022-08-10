--[[
	Prompts the user to confirm whether they want to discard the selected drafts

	Props:
	Drafts - The list of draft instances that will be discarded
	ChoiceSelected - Callback to invoke whenever the user selects an option
		in the dialog. True for confirm, false for cancel / closing the dialog
--]]
local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryFitContent = SharedFlags.getFFlagRemoveUILibraryFitContent()
local FFlagRemoveUILibraryBulletPoint = SharedFlags.getFFlagRemoveUILibraryBulletPoint()
local FFlagDevFrameworkMigrateStyledDialog = SharedFlags.getFFlagDevFrameworkMigrateStyledDialog()

local UI = Framework.UI
local BulletList = UI.BulletList
local Pane = UI.Pane

local Dash = Framework.Dash
local map = Dash.map

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local BulletPoint
if not FFlagRemoveUILibraryBulletPoint then
    BulletPoint = UILibrary.Component.BulletPoint
end

local StyledDialog = if FFlagDevFrameworkMigrateStyledDialog then UI.StyledDialog else UILibrary.Component.StyledDialog
local StyledScrollingFrame = if FFlagDevFrameworkMigrateStyledDialog then UI.ScrollingFrame else UILibrary.Component.StyledScrollingFrame
local TextLabel = if FFlagDevFrameworkMigrateStyledDialog then UI.TextLabel else "TextLabel"

local FitToContent
if not FFlagRemoveUILibraryFitContent then
	local createFitToContent = UILibrary.Component.createFitToContent
	FitToContent = createFitToContent("Frame", "UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Vertical,
	})
end

local HEADER_TEXT_SIZE = 22
local BULLET_TEXT_SIZE = 18

local DIALOG_SIZE = if FFlagDevFrameworkMigrateStyledDialog then Vector2.new(430, 200) else Vector2.new(473, 300)
local DIALOG_CONTENTS_PADDING = if FFlagDevFrameworkMigrateStyledDialog then UDim.new(0, 32) else 32
local DIALOG_CONTENTS_BORDER_PADDING = if FFlagDevFrameworkMigrateStyledDialog then {
	PaddingLeft = UDim.new(0, 16),
	PaddingRight = UDim.new(0, 16),
	PaddingTop = UDim.new(0, 48),
	PaddingBottom = UDim.new(0, 48),
} else nil

local BUTTON_TEXT_SIZE
local BORDER_PADDING
local BUTTON_PADDING
local BUTTON_HEIGHT
local BUTTON_WIDTH
if not FFlagDevFrameworkMigrateStyledDialog then
	BUTTON_TEXT_SIZE = 22
	BORDER_PADDING = 35
	BUTTON_PADDING = 25
	BUTTON_HEIGHT = 35
	BUTTON_WIDTH = 125
end

local DraftDiscardDialog = Roact.PureComponent:extend("DraftDiscardDialog")

function DraftDiscardDialog:init()
	self:setState({})

	if not FFlagDevFrameworkMigrateStyledDialog then
		self.canvasRef = Roact.createRef()
		self.headerRef = Roact.createRef()
	end

	self.contentSizeChanged = function(contentSize)
		assert(not FFlagDevFrameworkMigrateStyledDialog)
		local canvas = self.canvasRef.current
		if canvas then
			canvas.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y)
		end
	end

	-- Update header height based on text size, and then offset the canvas to be below the header
	self.updateContentGeometry = function()
		assert(not FFlagDevFrameworkMigrateStyledDialog)
		local header = self.headerRef.current
		local canvas = self.canvasRef.current
		local textSize = TextService:GetTextSize(
			header.Text,
			HEADER_TEXT_SIZE,
			Enum.Font.SourceSans,
			Vector2.new(header.AbsoluteSize.X, math.huge)
		)

		local headerHeight = textSize.Y
		local canvasOffset = headerHeight + DIALOG_CONTENTS_PADDING
		header.Size = UDim2.new(1, 0, 0, headerHeight)
		canvas.Parent.Size = UDim2.new(1, 0, 1, -canvasOffset)
		canvas.Parent.Position = UDim2.new(0, 0, 0, canvasOffset)
	end
end

function DraftDiscardDialog:didMount()
	if not FFlagDevFrameworkMigrateStyledDialog then
		local header = self.headerRef.current
		self.textConnection = header:GetPropertyChangedSignal("AbsoluteSize"):connect(self.updateContentGeometry)
		self.updateContentGeometry()
	end
end

function DraftDiscardDialog:render()
	local localization = self.props.Localization
	local style = self.props.Stylizer
	local drafts = self.props.Drafts
	local choiceSelected = self.props.ChoiceSelected

	local bullets
	if FFlagRemoveUILibraryBulletPoint then
		bullets = Roact.createElement(BulletList, {
			TextTruncate = Enum.TextTruncate.AtEnd,
			Items = map(drafts, function(draft)
				return draft.Name
			end)
		})
	else
		bullets = {}
		for i,draft in ipairs(drafts) do
			bullets[draft] = Roact.createElement(BulletPoint, {
				Text = draft.Name,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextSize = BULLET_TEXT_SIZE,

				LayoutOrder = i,
			})
		end
	end

	return Roact.createElement(StyledDialog, if FFlagDevFrameworkMigrateStyledDialog then {
		Title = localization:getText("DiscardDialog", "Title"),
		Modal = true,

		Buttons = {
			{Key = true, Text = localization:getText("Dialog", "Yes"), Style = "RoundLargeText" },
			{Key = false, Text = localization:getText("Dialog", "No"), Style = "RoundLargeTextPrimary"},
		},
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		OnButtonPressed = choiceSelected,
		OnClose = function() choiceSelected(false) end,

		MinContentSize = DIALOG_SIZE,
	} else {
		Buttons = {
			{Key = true, Text = localization:getText("Dialog", "Yes")},
			{Key = false, Style = "Primary", Text = localization:getText("Dialog", "No")},
		},
		OnButtonClicked = choiceSelected,
		OnClose = function() choiceSelected(false) end,

		TextSize = BUTTON_TEXT_SIZE,
		Size = DIALOG_SIZE,
		BorderPadding = BORDER_PADDING,
		ButtonPadding = BUTTON_PADDING,
		ButtonHeight = BUTTON_HEIGHT,
		ButtonWidth = BUTTON_WIDTH,

		Title = localization:getText("DiscardDialog", "Title"),
	}, {
		Layout = if FFlagDevFrameworkMigrateStyledDialog then Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = DIALOG_CONTENTS_PADDING,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}) else nil,

		Padding = if FFlagDevFrameworkMigrateStyledDialog then Roact.createElement("UIPadding", DIALOG_CONTENTS_BORDER_PADDING) else nil,

		Header = Roact.createElement(TextLabel, if FFlagDevFrameworkMigrateStyledDialog then {
			LayoutOrder = 1,
			AutomaticSize = Enum.AutomaticSize.XY,

			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,

			Text = localization:getText("DiscardDialog", "ConfirmQuestion"),
			TextSize = HEADER_TEXT_SIZE,
			Font = style.dialogUILibrary.HeaderFont,
			TextColor = style.dialogUILibrary.HeaderTextColor,
		} else {
			BackgroundTransparency = 1,

			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,

			Text = localization:getText("DiscardDialog", "ConfirmQuestion"),
			TextSize = HEADER_TEXT_SIZE,
			Font = style.dialogUILibrary.HeaderFont,
			TextColor3 = style.dialogUILibrary.HeaderTextColor,

			[Roact.Ref] = self.headerRef,
		}),

		DraftList = Roact.createElement(StyledScrollingFrame, if FFlagDevFrameworkMigrateStyledDialog then {
			LayoutOrder = 2,
		} else {
			BackgroundTransparency = 1,
			[Roact.Ref] = self.canvasRef,
		}, {
			UIListLayout = if FFlagDevFrameworkMigrateStyledDialog then nil else Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 0),

				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,

				[Roact.Change.AbsoluteContentSize] = function(rbx)
					self.contentSizeChanged(rbx.AbsoluteContentSize)
				end,
			}),

			Bullets = if FFlagRemoveUILibraryBulletPoint then bullets else (
				if FFlagRemoveUILibraryFitContent then
					Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
					}, bullets)
				else
					Roact.createElement(FitToContent, {
						BackgroundTransparency = 1,
					}, bullets)
			)
		})
	})
end

DraftDiscardDialog = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(DraftDiscardDialog)

return DraftDiscardDialog
