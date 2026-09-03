local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local KeyLabel = require(Foundation.Components.KeyLabel)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local ChipSize = require(Foundation.Enums.ChipSize)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local MatrixGrid = MatrixGridShared.MatrixGrid
type MatrixGridRow = MatrixGridShared.MatrixGridRow
local matrixLabel = MatrixGridShared.matrixLabel
local KeyCodeCategories = require(Foundation.Utility.Stories.Shared.KeyCodeCategories)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
local getVisualForKey = require(script.Parent.getVisualForKey)
local useTokens = require(Foundation.Providers.Style.useTokens)

local DEFAULT_KEY_LABEL_SIZE = UDim2.fromOffset(35, 35)

local PLAYGROUND_KEYCODE_OPTIONS: { Enum.KeyCode } = {
	Enum.KeyCode.Comma,
	Enum.KeyCode.A,
	Enum.KeyCode.ButtonStart,
}

type VisualTypeExample = {
	keyCode: Enum.KeyCode,
	name: string,
	description: string,
}

local VISUAL_TYPES: { VisualTypeExample } = {
	{
		keyCode = Enum.KeyCode.Comma,
		name = "String",
		description = "UserInputService:GetImageForKeyCode returns nothing. KeyLabel renders GetStringForKeyCode text on a sliced key cap.",
	},
	{
		keyCode = Enum.KeyCode.ButtonStart,
		name = "Image",
		description = "UserInputService:GetImageForKeyCode returns a platform glyph. KeyLabel renders the image — not text on a key cap.",
	},
	{
		keyCode = Enum.KeyCode.Space,
		name = "Empty",
		description = "Both lookups return empty on the current platform. KeyLabel shows an empty key cap with no label.",
	},
}

local PLAYGROUND_SIZE_OPTIONS: { UDim2 } = {
	DEFAULT_KEY_LABEL_SIZE,
	UDim2.fromOffset(48, 48),
	UDim2.fromOffset(64, 64),
}

local REPRESENTATIVE_SIZES = {
	{ label = "35×35", size = DEFAULT_KEY_LABEL_SIZE },
	{ label = "48×48", size = UDim2.fromOffset(48, 48) },
	{ label = "64×64", size = UDim2.fromOffset(64, 64) },
}

type SizingContentType = {
	name: string,
	keyCode: Enum.KeyCode,
	hasHoldBehavior: boolean?,
}

local SIZING_CONTENT_TYPES: { SizingContentType } = {
	{ name = "String", keyCode = Enum.KeyCode.Comma },
	{ name = "Image", keyCode = Enum.KeyCode.ButtonStart },
	{ name = "String with ring", keyCode = Enum.KeyCode.Comma, hasHoldBehavior = true },
	{ name = "Image with ring", keyCode = Enum.KeyCode.ButtonStart, hasHoldBehavior = true },
}

local DEMO_HOLD_BEHAVIOR = {
	holdTime = 1,
	resetTime = 0.5,
	onBeginHold = function() end,
	onEndHold = function(_didActivate: boolean) end,
}

local SIZE_MATRIX_LABEL_WIDTH = 56
local SIZE_MATRIX_CELL_WIDTH = 72

local ALL_KEYCODES = Enum.KeyCode:GetEnumItems()
table.sort(ALL_KEYCODES, function(a, b)
	return KeyCodeCategories.getKeyCodeName(a) < KeyCodeCategories.getKeyCodeName(b)
end)

local KEYCODES_BY_CATEGORY = KeyCodeCategories.groupByCategory(ALL_KEYCODES)

local NON_EMPTY_CATEGORIES = KeyCodeCategories.getNonEmptyCategories(KEYCODES_BY_CATEGORY)

local KEYCODE_LABEL_COLUMN_WIDTH = 200
local KEYCODE_CELL_COLUMN_WIDTH = 48
local EMPTY_ROW_BACKGROUND_TRANSPARENCY = 0.9
type KeyTypeFilter = string

local ALL_KEY_TYPE_VALUE: KeyTypeFilter = "All"

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function getHoldBehavior(controls: {
	hasHoldBehavior: boolean,
	holdTime: number,
	resetTime: number,
})
	return if controls.hasHoldBehavior
		then {
			holdTime = controls.holdTime,
			resetTime = controls.resetTime,
			onBeginHold = DEMO_HOLD_BEHAVIOR.onBeginHold,
			onEndHold = DEMO_HOLD_BEHAVIOR.onEndHold,
		}
		else nil
end

local function PlaygroundStory(props: {
	controls: {
		keyCode: Enum.KeyCode,
		Size: UDim2,
		hasHoldBehavior: boolean,
		holdTime: number,
		resetTime: number,
	},
})
	return React.createElement(KeyLabel, {
		keyCode = props.controls.keyCode,
		Size = props.controls.Size,
		holdBehavior = getHoldBehavior(props.controls),
	})
end

local function VisualTypeExample(props: VisualTypeExample & { layoutOrder: number }): React.ReactNode
	return React.createElement(View, {
		tag = "col align-x-left gap-medium auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Key = React.createElement(KeyLabel, {
			keyCode = props.keyCode,
			Size = DEFAULT_KEY_LABEL_SIZE,
			LayoutOrder = 1,
		}),
		Description = React.createElement(Text, {
			Text = props.description,
			tag = "auto-xy text-body-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Size",
				contentTag = "auto-xy",
			},
			React.createElement(MatrixGrid, {
				labelColumnWidth = SIZE_MATRIX_LABEL_WIDTH,
				columnHeaders = Dash.map(SIZING_CONTENT_TYPES, function(contentType)
					return contentType.name
				end),
				cellColumnWidth = SIZE_MATRIX_CELL_WIDTH,
				rows = Dash.map(REPRESENTATIVE_SIZES, function(entry): MatrixGridRow
					return {
						label = matrixLabel(entry.label),
						cells = Dash.map(SIZING_CONTENT_TYPES, function(contentType)
							return React.createElement(KeyLabel, {
								keyCode = contentType.keyCode,
								Size = entry.size,
								holdBehavior = if contentType.hasHoldBehavior then DEMO_HOLD_BEHAVIOR else nil,
							})
						end),
					}
				end),
			})
		),
	})
end

local function HoldBehaviorExample(props: {
	keyCode: Enum.KeyCode,
	holdTime: number,
	resetTime: number?,
	caption: string,
	layoutOrder: number,
})
	local callbackLog, setCallbackLog = React.useState(function(): { string }
		return {}
	end)

	local function appendCallbackLog(entry: string)
		setCallbackLog(function(previousLog)
			local nextLog = table.clone(previousLog)
			table.insert(nextLog, entry)
			return nextLog
		end)
	end

	local callbackLogText = if #callbackLog > 0
		then table.concat(callbackLog, "\n")
		else "No callbacks yet — press the key to trigger onBeginHold and onEndHold."

	return React.createElement(View, {
		tag = "col align-x-left gap-medium auto-xy",
		LayoutOrder = props.layoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-caption-small content-default",
			LayoutOrder = 1,
		}),
		Row = React.createElement(View, {
			tag = "row align-y-center gap-large auto-xy",
			LayoutOrder = 2,
		}, {
			Key = React.createElement(KeyLabel, {
				keyCode = props.keyCode,
				Size = DEFAULT_KEY_LABEL_SIZE,
				holdBehavior = {
					holdTime = props.holdTime,
					resetTime = props.resetTime,
					onBeginHold = function()
						appendCallbackLog("onBeginHold()")
					end,
					onEndHold = function(didActivate: boolean)
						appendCallbackLog(`onEndHold(didActivate = {tostring(didActivate)})`)
					end,
				},
				LayoutOrder = 1,
			}),
		}),
		CallbackLog = React.createElement(Text, {
			Text = callbackLogText,
			tag = "auto-xy text-body-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 3,
		}),
	})
end

local function HoldBehaviorStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		HoldToActivate = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Hold to activate",
				contentTag = "auto-xy",
			},
			React.createElement(HoldBehaviorExample, {
				keyCode = Enum.KeyCode.Space,
				holdTime = 1,
				resetTime = 0.5,
				caption = "Hold Space for 1 second to activate.",
				layoutOrder = 1,
			})
		),
		InstantActivation = React.createElement(
			Section,
			{
				layoutOrder = 2,
				name = "Instant activation",
				contentTag = "auto-xy",
			},
			React.createElement(HoldBehaviorExample, {
				keyCode = Enum.KeyCode.A,
				holdTime = 0,
				resetTime = 0,
				caption = "Press A to activate immediately (holdTime = 0).",
				layoutOrder = 1,
			})
		),
		ResetTime = React.createElement(Section, {
			layoutOrder = 3,
			name = "Reset time",
			contentTag = "row gap-xlarge auto-xy wrap",
		}, {
			Fast = React.createElement(HoldBehaviorExample, {
				keyCode = Enum.KeyCode.Space,
				holdTime = 1,
				resetTime = 0.25,
				caption = "resetTime = 0.25 — release early to see the progress ring drain quickly.",
				layoutOrder = 1,
			}),
			Slow = React.createElement(HoldBehaviorExample, {
				keyCode = Enum.KeyCode.Space,
				holdTime = 1,
				resetTime = 1.5,
				caption = "resetTime = 1.5 — release early to see the progress ring drain slowly.",
				layoutOrder = 2,
			}),
		}),
	})
end

local function KeyCodeMatrix(props: { keyCodes: { Enum.KeyCode } }): React.ReactNode
	local tokens = useTokens()
	local emptyRowBackground: ColorStyleValue = {
		Color3 = tokens.Color.System.Alert.Color3,
		Transparency = EMPTY_ROW_BACKGROUND_TRANSPARENCY,
	}

	local rows = Dash.map(props.keyCodes, function(keyCode): MatrixGridRow
		local isEmpty = getVisualForKey(keyCode).key == ""
		return {
			label = React.createElement(Text, {
				Text = KeyCodeCategories.getKeyCodeName(keyCode),
				tag = "auto-xy text-caption-small text-align-x-left",
			}),
			cells = {
				React.createElement(KeyLabel, {
					keyCode = keyCode,
					Size = DEFAULT_KEY_LABEL_SIZE,
				}),
			},
			rowTag = if isEmpty then "padding-x-small radius-small size-full-0 auto-y" else nil,
			backgroundStyle = if isEmpty then emptyRowBackground else nil,
		}
	end)

	return React.createElement(MatrixGrid, {
		labelColumnWidth = KEYCODE_LABEL_COLUMN_WIDTH,
		cellColumnWidth = KEYCODE_CELL_COLUMN_WIDTH,
		showHeader = false,
		columnHeaders = { "" },
		headerTextAlign = "left",
		cellAlign = "left",
		rows = rows,
	})
end

local KEY_TYPE_CATEGORY_OPTIONS: { KeyTypeFilter } = { ALL_KEY_TYPE_VALUE }
for _, categoryName in NON_EMPTY_CATEGORIES do
	table.insert(KEY_TYPE_CATEGORY_OPTIONS, categoryName)
end

local function CategoryKeyLabelTable(props: {
	categoryName: string,
	layoutOrder: number,
}): React.ReactNode
	local keyCodes = KEYCODES_BY_CATEGORY[props.categoryName]

	return React.createElement(
		Section,
		{
			layoutOrder = props.layoutOrder,
			name = `{props.categoryName} ({#keyCodes})`,
			contentTag = "auto-xy",
		},
		React.createElement(KeyCodeMatrix, {
			keyCodes = keyCodes,
		})
	)
end

local function ByKeyTypeSection(): React.ReactNode
	local selectedCategory, setSelectedCategory = React.useState(ALL_KEY_TYPE_VALUE)

	local categoryChips = Dash.map(KEY_TYPE_CATEGORY_OPTIONS, function(categoryName, index)
		local label = if categoryName == ALL_KEY_TYPE_VALUE
			then ALL_KEY_TYPE_VALUE
			else `{categoryName} ({#KEYCODES_BY_CATEGORY[categoryName]})`

		return React.createElement(Chip, {
			text = label,
			size = ChipSize.Small,
			isChecked = selectedCategory == categoryName,
			onActivated = function()
				setSelectedCategory(categoryName)
			end,
			LayoutOrder = index,
		})
	end)

	local tables: React.ReactNode
	if selectedCategory == ALL_KEY_TYPE_VALUE then
		tables = Dash.map(NON_EMPTY_CATEGORIES, function(categoryName, index)
			return React.createElement(CategoryKeyLabelTable, {
				categoryName = categoryName,
				layoutOrder = index,
			})
		end)
	else
		tables = React.createElement(CategoryKeyLabelTable, {
			categoryName = selectedCategory,
			layoutOrder = 1,
		})
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		Chips = React.createElement(View, {
			tag = "row wrap gap-small size-full-0 auto-y",
			LayoutOrder = 1,
		}, categoryChips),
		Tables = React.createElement(View, {
			tag = "col gap-xxlarge size-full-0 auto-y",
			LayoutOrder = 2,
		}, tables),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		VisualTypes = React.createElement(
			Section,
			{
				layoutOrder = 2,
				name = "Visual types",
				contentTag = "col gap-xxlarge auto-xy",
			},
			Dash.map(VISUAL_TYPES, function(visualType, index)
				return React.createElement(
					Section,
					{
						layoutOrder = index,
						name = visualType.name,
						contentTag = "auto-xy",
					},
					React.createElement(VisualTypeExample, {
						layoutOrder = 1,
						keyCode = visualType.keyCode,
						name = visualType.name,
						description = visualType.description,
					})
				)
			end)
		),
		ByKeyType = React.createElement(Section, {
			layoutOrder = 3,
			name = "By key type",
			contentTag = "auto-xy",
		}, React.createElement(ByKeyTypeSection)),
	})
end

return {
	summary = "KeyLabel displays a key or button glyph and optionally handles long-press input with a circular progress indicator.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "Size accepts any UDim2; values shown are representative examples. Hold the key on ring columns to preview the progress indicator at each size.",
			story = SizingStory,
		},
		{
			name = "Hold behavior",
			story = HoldBehaviorStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		keyCode = PLAYGROUND_KEYCODE_OPTIONS,
		Size = PLAYGROUND_SIZE_OPTIONS,
		hasHoldBehavior = false,
		holdTime = 1,
		resetTime = 0.5,
	},
}
