local KeyLabelRoot = script.Parent
local Menu = KeyLabelRoot.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Types = require(KeyLabelRoot.Types)
local Constants = require(KeyLabelRoot.Constants)
local Utilities = require(KeyLabelRoot.Utilities)
local useStyle = require(UIBlox.Core.Style.useStyle)
local Images = require(App.ImageSet.Images)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label

type Image = Images.ImageSetImage

type KeyLabelProps = {
	-- KeyCode to display visual representation of.
	-- note: keycodes may not be the best interface here as we cannot distinguish between certain keys
	-- for example, Alt and Opt share a keycode, and Cmd and Windows key share a keycode
	keyCode: Types.FlexibleKeyCode,

	-- The theme of the label's icon (keyboard border/gamepad button
	iconThemeKey: string?,
	-- The theme of the label's text (keyboard key's text)
	textThemeKey: string?,

	-- The anchor point of the label
	AnchorPoint: Vector2?,
	-- The position of the menu
	Position: UDim2?,
	-- The layout order of the label
	LayoutOrder: number?,
	ZIndex: number?,
	[typeof(React.Change.AbsoluteSize)]: (rbx: GuiObject) -> ()?,
}

local function KeyLabel(props: KeyLabelProps)
	local style = useStyle()

	local iconTheme = style.Theme[props.iconThemeKey or Constants.DEFAULT_ICON_THEME]
	local content = Utilities.getKeyCodeContent(props.keyCode)
	local width = Utilities.getWidthFromContent(content, style.Font)

	local generalProps = {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		LayoutOrder = props.LayoutOrder,
		ZIndex = props.ZIndex,
		[React.Change.AbsoluteSize] = props[React.Change.AbsoluteSize],
		Size = UDim2.fromOffset(width, Constants.HEIGHT),
	}

	if content.inputType == "keyboard" then
		local textTheme = style.Theme[props.textThemeKey or Constants.DEFAULT_TEXT_THEME]
		local font = style.Font
		local baseSize: number = font.BaseSize
		-- note: Tooltip spec says use CaptionBody, KeyLabel spec sugggests to use heavier font
		local textFont = font.CaptionHeader
		local fontSize = baseSize * textFont.RelativeSize

		local text = ""
		local icon = nil
		if type(content.content) == "string" then
			text = content.content
		else
			local size = content.content.ImageRectSize / Images.ImagesResolutionScale
			icon = React.createElement(ImageSetLabel, {
				Image = content.content,
				ImageColor3 = textTheme.Color,
				ImageTransparency = textTheme.Transparency,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(size.X, size.Y),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
			})
		end

		return React.createElement(
			ImageSetLabel,
			LuauPolyfill.Object.assign(generalProps, {
				BackgroundTransparency = 1,

				ImageTransparency = iconTheme.Transparency,
				ImageColor3 = iconTheme.Color,
				Image = Images["icons/controls/keys/key_single"],

				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(Vector2.new(10, 9), Vector2.new(25, 25)),
			}),
			{
				LabelContent = React.createElement("TextLabel", {
					Text = text,
					BackgroundTransparency = 1,
					TextColor3 = textTheme.Color,
					TextTransparency = textTheme.Transparency,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextSize = fontSize,
					Font = textFont.Font,
					RichText = false,
					Position = UDim2.fromOffset(0, Constants.TEXT_CENTER_OFFSET),
					Size = UDim2.fromScale(1, 1),
				}, {
					Icon = icon,
				}),
			}
		)
	elseif content.inputType == "gamepad" then
		return React.createElement(
			ImageSetLabel,
			LuauPolyfill.Object.assign(generalProps, {
				Image = content.content,
				ImageColor3 = iconTheme.Color,
				ImageTransparency = iconTheme.Transparency,
				BackgroundTransparency = 1,
			})
		)
	end
	assert(false, string.format('Unreachable: Invalid inputType value: "%s"', content.inputType))
end

return KeyLabel
