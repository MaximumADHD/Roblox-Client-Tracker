local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local IconName = BuilderIcons.Icon

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = require(Foundation.Utility.Stories.Shared.MatrixGrid).MatrixGrid

-- Mirrors BuilderIcons KeycodeMappings (internal module, not exposed via the public package).
local psMappings: { [string]: string } = {
	ButtonA = IconName.PsX,
	ButtonB = IconName.PsCircle,
	ButtonX = IconName.PsSquare,
	ButtonY = IconName.PsTriagle,
	ButtonL1 = IconName.PsL1,
	ButtonL2 = IconName.PsL2,
	ButtonL3 = IconName.PsL3,
	ButtonR1 = IconName.PsR1,
	ButtonR2 = IconName.PsR2,
	ButtonR3 = IconName.PsR3,
	Thumbstick1 = IconName.PsStickLeft,
	Thumbstick2 = IconName.PsStickRight,
	DPadDown = IconName.PsDpadDown,
	DPadUp = IconName.PsDpadUp,
	DPadLeft = IconName.PsDpadLeft,
	DPadRight = IconName.PsDpadRight,
}

local KeycodeMappings: { [string]: { [string]: string } } = {
	PS4 = Dash.join(psMappings, {
		ButtonStart = IconName.Ps4Options,
		ButtonSelect = IconName.Ps4Share,
	}),
	PS5 = Dash.join(psMappings, {
		ButtonStart = IconName.Ps5Options,
		ButtonSelect = IconName.Ps5Share,
	}),
	Xbox = {
		ButtonA = IconName.XboxA,
		ButtonB = IconName.XboxB,
		ButtonX = IconName.XboxX,
		ButtonY = IconName.XboxY,
		ButtonL1 = IconName.XboxLb,
		ButtonL2 = IconName.XboxLt,
		ButtonL3 = IconName.XboxStickLeft,
		ButtonR1 = IconName.XboxRb,
		ButtonR2 = IconName.XboxRt,
		ButtonR3 = IconName.XboxStickRight,
		ButtonStart = IconName.XboxMenu,
		ButtonSelect = IconName.XboxView,
		Thumbstick1 = IconName.XboxStickLeftDirectional,
		Thumbstick2 = IconName.XboxStickRightDirectional,
		DPadDown = IconName.XboxDpadDown,
		DPadUp = IconName.XboxDpadUp,
		DPadLeft = IconName.XboxDpadLeft,
		DPadRight = IconName.XboxDpadRight,
	},
	Default = {
		LeftAlt = IconName.KeyAlt,
		RightAlt = IconName.KeyAlt,
		Down = IconName.KeyArrowDown,
		Up = IconName.KeyArrowUp,
		Left = IconName.KeyArrowLeft,
		Right = IconName.KeyArrowRight,
		Asterisk = IconName.KeyAsterisk,
		Backspace = IconName.KeyBackspace,
		CapsLock = IconName.KeyCapsLock,
		Caret = IconName.KeyCaret,
		Comma = IconName.KeyComma,
		LeftControl = IconName.KeyControl,
		RightControl = IconName.KeyControl,
		Backquote = IconName.KeyGraveAccent,
		Period = IconName.KeyPeriod,
		Return = IconName.KeyReturn,
		LeftShift = IconName.KeyShift,
		RightShift = IconName.KeyShift,
		Space = IconName.KeySpace,
		Tab = IconName.KeyTab,
	},
}

local INPUT_PLATFORM_ORDER = { "PS4", "PS5", "Xbox", "Default" }

local LABEL_COLUMN_WIDTH = 120
local CELL_COLUMN_WIDTH = 72

local function mergeKeyNames(): { string }
	local keyNames: { [string]: boolean } = {}
	for _, platform in INPUT_PLATFORM_ORDER do
		for keyName in KeycodeMappings[platform] do
			keyNames[keyName] = true
		end
	end

	local sortedKeyNames = Dash.keys(keyNames) :: { string }
	table.sort(sortedKeyNames)
	return sortedKeyNames
end

local KEY_NAME_ORDER = mergeKeyNames()

local function KeycodeIconCell(props: { icon: string? }): React.ReactNode
	if props.icon then
		return React.createElement(Icon, {
			name = props.icon,
		})
	end

	return React.createElement(Text, {
		Text = "—",
		tag = "auto-xy text-caption-small content-muted",
	})
end

return {
	summary = "Returns the BuilderIcon for a KeyCode, using gamepad or keyboard mappings based on the detected input platform.",
	story = function(): React.ReactNode
		return React.createElement(View, {
			tag = "col gap-large auto-xy padding-large",
		}, {
			Description = React.createElement(Text, {
				Text = "Each row is a KeyCode name; columns show the BuilderIcon for that key on each input platform. The Default column is the keyboard fallback. A dash means that platform has no mapping for the key. The icons shown are a snapshot of the current mappings and may be updated in BuilderIcons independently of this story.",
				tag = "auto-xy text-body-medium text-wrap text-align-x-left content-muted",
				LayoutOrder = 1,
			}),
			Matrix = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 2,
			}, {
				Grid = React.createElement(MatrixGrid, {
					labelColumnWidth = LABEL_COLUMN_WIDTH,
					columnHeaders = INPUT_PLATFORM_ORDER,
					cellColumnWidth = CELL_COLUMN_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rows = Dash.map(KEY_NAME_ORDER, function(keyName)
						return {
							label = React.createElement(Text, {
								Text = keyName,
								tag = "auto-xy text-caption-small text-align-x-left",
							}),
							cells = Dash.map(INPUT_PLATFORM_ORDER, function(platform)
								return React.createElement(KeycodeIconCell, {
									icon = KeycodeMappings[platform][keyName],
								})
							end),
						}
					end),
				}),
			}),
		})
	end,
}
