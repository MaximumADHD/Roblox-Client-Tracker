local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local SheetStoryHelpers = require(script.Parent.Parent.SheetStoryHelpers)
local View = require(Foundation.Components.View)

local LabeledSheetTrigger = SheetStoryHelpers.LabeledSheetTrigger
local Section = SheetStoryHelpers.Section
local SheetMatrix = SheetStoryHelpers.SheetMatrix
local centerHeightFor = SheetStoryHelpers.centerHeightFor
local prefersCenter = SheetStoryHelpers.prefersCenter

local WIDE_CELL_WIDTH = SheetStoryHelpers.WIDE_CELL_WIDTH
local OVERFLOW_LIST_LENGTH = SheetStoryHelpers.OVERFLOW_LIST_LENGTH
local VARIANT_ORDER = SheetStoryHelpers.VARIANT_ORDER

local ACTION_PRESET_ORDER = { "Primary", "Primary + Secondary" }
local ACTION_COUNT_BY_PRESET = {
	Primary = 1,
	["Primary + Secondary"] = 2,
}

type Controls = {
	actionCount: string,
	rootOverflowContent: boolean,
	rootSheetTypePreset: SheetStoryHelpers.SheetVariant,
}

type StoryProps = {
	controls: Controls,
}

local function PlaygroundStory(props: StoryProps)
	local controls = props.controls

	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Trigger = React.createElement(LabeledSheetTrigger, {
			preferCenterSheet = prefersCenter(controls.rootSheetTypePreset),
			centerSheetHeight = centerHeightFor(controls.rootSheetTypePreset),
			childrenOptions = {
				actionCount = ACTION_COUNT_BY_PRESET[controls.actionCount],
				contentListLength = if controls.rootOverflowContent then OVERFLOW_LIST_LENGTH else nil,
			},
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Packing = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Subparts",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				showLabelColumn = false,
				columnHeaders = ACTION_PRESET_ORDER,
				cellColumnWidth = WIDE_CELL_WIDTH,
				rows = {
					{
						cells = Dash.map(ACTION_PRESET_ORDER, function(preset)
							return React.createElement(LabeledSheetTrigger, {
								preferCenterSheet = true,
								childrenOptions = { actionCount = ACTION_COUNT_BY_PRESET[preset] },
							})
						end),
					},
				},
			}),
		}),
	})
end

return {
	summary = "The action row for [[Sheet]]. On bottom sheets this portals to the inner surface.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		actionCount = ACTION_PRESET_ORDER,
		rootOverflowContent = false,
		rootSheetTypePreset = VARIANT_ORDER,
	},
}
