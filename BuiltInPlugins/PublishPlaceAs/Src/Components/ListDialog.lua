--[[
	An implementation of StyledDialog that adds UILibrary Buttons to the bottom.
	To use the component, the consumer supplies an array of buttons, optionally
	defining a Style for each button if it should display differently and a list
	of entries to display along with a header text.

	Props:
		string Title = The title text to display.
		string Header = The header text to display at the top of this Dialog.
		list Entries = The entries to display in this Dialog.
		array Buttons = An array of items used to render the buttons for this dialog.
		{
			{Key = "Cancel", Text = "SomeLocalizedTextForCancel"},
			{Key = "Save", Text = "SomeLocalizedTextForSave", Style = "Primary"},
		}
		bool Wrapped = Controls whether bullet text is wrapped or not
		enum Truncate = Controls whether text is truncated or not

		function OnButtonClicked(key) = A callback for when the user clicked
			a button in the dialog. Accepts the Key of the button that was clicked.
		function OnClose = A callback for when the user closed the dialog by
			clicking the X in the corner of the window.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryFitContent = SharedFlags.getFFlagRemoveUILibraryFitContent()
local FFlagRemoveUILibraryBulletPoint = SharedFlags.getFFlagRemoveUILibraryBulletPoint()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local BulletList = UI.BulletList

local UILibrary = require(Plugin.Packages.UILibrary)
local BulletPoint
if not FFlagRemoveUILibraryBulletPoint then
	BulletPoint = UILibrary.Component.BulletPoint
end
local StyledDialog = UILibrary.Component.StyledDialog

local BORDER_PADDING = 20
local BUTTON_PADDING = 30
local BUTTON_HEIGHT = 36
local BUTTON_WIDTH = 150

local ListDialog = Roact.PureComponent:extend("ListDialog")

function ListDialog:render()
	local props = self.props
	local theme = props.Stylizer

	local title = props.Title
	local header = props.Header
	local entries = props.Entries
	local buttons = props.Buttons
	local onButtonClicked = props.OnButtonClicked
	local onClose = props.OnClose

	local children = {
		Header = Roact.createElement("TextLabel", {
			-- TODO STUDIOPLAT-27986 Remove AnchorPoint, Size, Position when migrating to Dev Framework StyledDialog and use a layout with padding instead.
			AnchorPoint = Vector2.new(0.5, 0),
			AutomaticSize = if FFlagRemoveUILibraryBulletPoint then Enum.AutomaticSize.Y else nil,
			Size = if FFlagRemoveUILibraryBulletPoint then UDim2.new(1, -60, 0, 0) else UDim2.new(1, -60, 0, 80),
			Position = UDim2.new(0.5, 0, 0, 10),
			BackgroundTransparency = 1,
			Text = header,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			Font = theme.listDialog.font,
			TextSize = 22,
			TextColor3 = theme.listDialog.textColor,
		}),
	}

	if FFlagRemoveUILibraryBulletPoint then
		children.List = Roact.createElement(BulletList, {
			Items = entries,
			-- TODO STUDIOPLAT-27986 Remove Size and Position when migrating to Dev Framework StyledDialog and use a layout with padding instead.
			Position = UDim2.new(0, 30, 0, 100),
			Size = UDim2.new(1, -60, 0, 0),
			TextTruncate = Enum.TextTruncate.AtEnd,
		})

	else
		local entryList = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}

		for i, item in ipairs(entries) do
			table.insert(entryList, Roact.createElement(BulletPoint, {
				LayoutOrder = i,
				Text = item,
				TextWrapped = props.Wrapped,
				TextTruncate = props.Truncate,
			}))
		end

		children.Entries = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -60, 0, 120),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 100),
		}, entryList)
	end

	return Roact.createElement(StyledDialog, {
		Title = title,
		Buttons = buttons,
		Resizable = false,
		Size = Vector2.new(500, 320),
		BorderPadding = BORDER_PADDING,
		ButtonPadding = BUTTON_PADDING,
		ButtonHeight = BUTTON_HEIGHT,
		ButtonWidth = BUTTON_WIDTH,
		OnButtonClicked = onButtonClicked,
		OnClose = onClose,
		TextSize = 22,
	}, children)
end

ListDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(ListDialog)

return ListDialog
