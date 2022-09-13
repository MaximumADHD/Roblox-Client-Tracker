--!strict
local KeyLabelRoot = script.Parent
local Menu = KeyLabelRoot.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Fonts = require(App.Style.Fonts)
local useStyle = require(UIBlox.Core.Style.useStyle)
local Images = require(App.ImageSet.Images)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local UserInputService = game:GetService("UserInputService")

type Axis = "horizontal" | "vertical" | "directional"
export type FlexibleKeyCode = Enum.KeyCode | { key: Enum.KeyCode, axis: Axis }
type Image = Images.ImageSetImage

type KeyLabelProps = {
	-- note: keycodes may not be the best interface here as we cannot distinguish between certain keys
	-- for example, Alt and Opt share a keycode, and Cmd and Windows key share a keycode
	keyCode: FlexibleKeyCode,

	-- Theme for the icon (border icon for keyboard KeyCodes, button icon for gamepad icons)
	iconThemeKey: string?,
	-- Theme for keyboard KeyCode text (unused for gamepad KeyCodes)
	textThemeKey: string?,

	-- the following props are passed on to the background frame
	AnchorPoint: Vector2?,
	Position: UDim2?,
	LayoutOrder: number?,
	ZIndex: number?,
	[typeof(React.Change.AbsoluteSize)]: (rbx: GuiObject) -> ()?,
}

-- height of KeyLabels
local HEIGHT = 28
-- preferred width as long as we have at least MIN_SIDE_PADDING
local PREFERRED_WIDTH = HEIGHT
-- minimum padding around content
local MIN_SIDE_PADDING = 4
-- default padding on the side of KeyLabels
local SIDE_PADDING = 8
-- corner radius for keyboard labels
local CORNER_RADIUS = UDim.new(0, 8)

-- default theme for label background
local DEFAULT_ICON_THEME = "BackgroundOnHover"
-- default font for text
local DEFAULT_TEXT_THEME = "TextEmphasis"

local GAMEPAD_AXIS_OVERRIDE_MAP = {
	[Enum.KeyCode.Thumbstick1] = {
		directional = Images["icons/controls/keys/xboxLSDirectional"],
		horizontal = Images["icons/controls/keys/xboxLSHorizontal"],
		vertical = Images["icons/controls/keys/xboxLSVertical"],
	},
	[Enum.KeyCode.Thumbstick2] = {
		directional = Images["icons/controls/keys/xboxRSDirectional"],
		horizontal = Images["icons/controls/keys/xboxRSHorizontal"],
		vertical = Images["icons/controls/keys/xboxRSVertical"],
	},
}

local GAMEPAD_OVERRIDE_MAP: { [Enum.KeyCode]: Image } = {
	[Enum.KeyCode.ButtonX] = Images["icons/controls/keys/xboxX"],
	[Enum.KeyCode.ButtonY] = Images["icons/controls/keys/xboxY"],
	[Enum.KeyCode.ButtonA] = Images["icons/controls/keys/xboxA"],
	[Enum.KeyCode.ButtonB] = Images["icons/controls/keys/xboxB"],

	[Enum.KeyCode.DPadLeft] = Images["icons/controls/keys/dpadLeft"],
	[Enum.KeyCode.DPadRight] = Images["icons/controls/keys/dpadRight"],
	[Enum.KeyCode.DPadUp] = Images["icons/controls/keys/dpadUp"],
	[Enum.KeyCode.DPadDown] = Images["icons/controls/keys/dpadDown"],

	[Enum.KeyCode.ButtonStart] = Images["icons/controls/keys/xboxmenu"],
	[Enum.KeyCode.ButtonSelect] = Images["icons/controls/keys/xboxView"],

	[Enum.KeyCode.ButtonR1] = Images["icons/controls/keys/xboxRB"],
	[Enum.KeyCode.ButtonL1] = Images["icons/controls/keys/xboxLB"],
	[Enum.KeyCode.ButtonR2] = Images["icons/controls/keys/xboxRT"],
	[Enum.KeyCode.ButtonL2] = Images["icons/controls/keys/xboxLT"],
	[Enum.KeyCode.ButtonR3] = Images["icons/controls/keys/xboxRS"],
	[Enum.KeyCode.ButtonL3] = Images["icons/controls/keys/xboxLS"],

	-- Thumbstick defaults
	[Enum.KeyCode.Thumbstick1] = GAMEPAD_AXIS_OVERRIDE_MAP[Enum.KeyCode.Thumbstick1].directional,
	[Enum.KeyCode.Thumbstick2] = GAMEPAD_AXIS_OVERRIDE_MAP[Enum.KeyCode.Thumbstick2].directional,
}

local KEYBOARD_OVERRIDE_MAP: { [Enum.KeyCode]: string | Image } = {
	[Enum.KeyCode.Escape] = "Esc",
	[Enum.KeyCode.Print] = "Prt Sc",
	[Enum.KeyCode.ScrollLock] = "Sc Lock",
	[Enum.KeyCode.Pause] = "Pause",
	[Enum.KeyCode.Insert] = "Ins",
	[Enum.KeyCode.PageUp] = "PgUp",
	[Enum.KeyCode.NumLock] = "Num Lock",
	[Enum.KeyCode.Delete] = "Del",
	[Enum.KeyCode.End] = "End",
	[Enum.KeyCode.PageDown] = "PgDn",
	[Enum.KeyCode.CapsLock] = "Caps",
	[Enum.KeyCode.Return] = "Enter",
	[Enum.KeyCode.LeftShift] = "Shift",
	[Enum.KeyCode.LeftControl] = "Ctrl",
	[Enum.KeyCode.LeftAlt] = "Alt", -- Ideally would be "Opt" for mac
	[Enum.KeyCode.Space] = "Space",
	[Enum.KeyCode.LeftMeta] = "Fn",
	[Enum.KeyCode.LeftSuper] = "Cmd", -- Only for mac, ideally would be Windows key for windows
	[Enum.KeyCode.Tilde] = "~",

	[Enum.KeyCode.Up] = Images["icons/controls/keys/arrowUp"],
	[Enum.KeyCode.Down] = Images["icons/controls/keys/arrowDown"],
	[Enum.KeyCode.Left] = Images["icons/controls/keys/arrowLeft"],
	[Enum.KeyCode.Right] = Images["icons/controls/keys/arrowRight"],
}

type KeyLabelContent = { inputType: "keyboard", content: string | Image } | { inputType: "gamepad", content: Image }

local function getKeyCodeContent(keyCode: FlexibleKeyCode): KeyLabelContent
	if type(keyCode) == "table" then
		return { inputType = "gamepad", content = GAMEPAD_AXIS_OVERRIDE_MAP[keyCode.key][keyCode.axis] }
	elseif GAMEPAD_OVERRIDE_MAP[keyCode] then
		return {
			inputType = "gamepad",
			content = GAMEPAD_OVERRIDE_MAP[keyCode],
		}
	else
		local text = UserInputService:GetStringForKeyCode(keyCode)
		return {
			inputType = "keyboard",
			content = KEYBOARD_OVERRIDE_MAP[keyCode] or if text ~= "" then text else keyCode.Name,
		}
	end
end

local function getWidthFromContent(content: KeyLabelContent, font: Fonts.FontPalette): number
	if content.inputType == "keyboard" then
		local innerWidth: number
		if type(content.content) == "string" then
			local baseSize: number = font.BaseSize
			-- note: Tooltip spec says use CaptionBody, KeyLabel spec sugggests to use heavier font
			local textFont = font.CaptionBody
			local fontSize = baseSize * textFont.RelativeSize
			-- is this expenseive? we only run on a few different strings, so we could memoize
			innerWidth = GetTextSize(content.content, fontSize, textFont.Font, Vector2.zero).X
		else
			innerWidth = content.content.ImageRectSize.X
		end
		return if innerWidth + 2 * MIN_SIDE_PADDING <= PREFERRED_WIDTH
			then PREFERRED_WIDTH
			else innerWidth + 2 * SIDE_PADDING
		-- just using else doesn't get the proper type refinement
	elseif content.inputType == "gamepad" then
		local size: Vector2 = content.content.ImageRectSize
		return size.X * HEIGHT / size.Y
	end
	assert(false, string.format("Unreachable: Invalid inputType value: %q", content.inputType))
end

local function KeyLabel(props: KeyLabelProps)
	local style = useStyle()

	local iconTheme = style.Theme[props.iconThemeKey or DEFAULT_ICON_THEME]
	local content = getKeyCodeContent(props.keyCode)
	local width = getWidthFromContent(content, style.Font)

	local generalProps = {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		LayoutOrder = props.LayoutOrder,
		ZIndex = props.ZIndex,
		[React.Change.AbsoluteSize] = props[React.Change.AbsoluteSize],
		Size = UDim2.fromOffset(width, HEIGHT),
	}

	if content.inputType == "keyboard" then
		local textTheme = style.Theme[props.textThemeKey or DEFAULT_TEXT_THEME]
		local font = style.Font
		local baseSize: number = font.BaseSize
		-- note: Tooltip spec says use CaptionBody, KeyLabel spec sugggests to use heavier font
		local textFont = font.CaptionBody
		local fontSize = baseSize * textFont.RelativeSize

		local text = ""
		local icon = nil
		if type(content.content) == "string" then
			text = content.content
		else
			local size = content.content.ImageRectSize
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
			"TextLabel",
			LuauPolyfill.Object.assign(generalProps, {
				Text = text,
				BackgroundColor3 = iconTheme.Color,
				BackgroundTransparency = iconTheme.Transparency,
				TextColor3 = textTheme.Color,
				TextTransparency = textTheme.Transparency,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = fontSize,
				Font = textFont.Font,
				RichText = false,
			}),
			{
				UICorner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
				Icon = icon,
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

function getKeyLabelWidth(keyCode: FlexibleKeyCode, font)
	local content = getKeyCodeContent(keyCode)
	return getWidthFromContent(content, font)
end

return {
	KeyLabel = KeyLabel,
	getKeyLabelWidth = getKeyLabelWidth,
}
