--[[
	A text input field and label used in publishing prompts. Takes up the entire
	width of the parent frame.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Cryo = require(CorePackages.Packages.Cryo)

local useStyle = UIBlox.Core.Style.useStyle

local Common = script.Parent
-- TODO AVBURST-16068: Rename NameTextBox component
local NameTextBox = require(Common.NameTextBox)

local LABEL_HEIGHT = 15
local LABEL_BOTTOM_PADDING = 4

local DEFAULT_TEXTBOX_HEIGHT = 30

export type Props = {
	LayoutOrder: number?,
	topPadding: number?,
	-- Label props
	labelText: string,
	-- Textbox props
	centerText: boolean?, -- Should the textbox text be vertically centered
	defaultText: string?,
	maxLength: number?,
	onTextUpdated: (string, boolean) -> (), -- function(newName, isNameValid)
	textBoxHeight: number?,
	textBoxRef: React.Ref<any>?,
}

local defaultProps = {
	textBoxHeight = DEFAULT_TEXTBOX_HEIGHT,
	topPadding = 0,
}
type InternalProps = typeof(defaultProps) & Props

local function LabeledTextBox(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	local style = useStyle()
	local font = style.Font
	local baseSize: number = font.BaseSize
	local theme = style.Theme

	local totalHeight = LABEL_HEIGHT + LABEL_BOTTOM_PADDING + props.textBoxHeight + props.topPadding

	-- Label Style
	local labelStyle = font.CaptionHeader
	local labelColor = theme.TextDefault.Color

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, totalHeight),
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, LABEL_BOTTOM_PADDING),
		}),
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, props.topPadding),
		}),
		TextboxLabel = React.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
			Font = labelStyle.Font,
			Text = props.labelText,
			TextSize = baseSize * labelStyle.RelativeSize,
			TextColor3 = labelColor,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 1,
		}),
		-- TODO AVBURST-16068: Rename NameTextBox component and props
		Textbox = React.createElement(NameTextBox, {
			Size = UDim2.new(1, 0, 0, props.textBoxHeight),
			maxLength = props.maxLength,
			onNameUpdated = props.onTextUpdated,
			defaultName = props.defaultText,
			centerText = props.centerText,
			nameTextBoxRef = props.textBoxRef,
			LayoutOrder = 2,
		}),
	})
end

return LabeledTextBox
