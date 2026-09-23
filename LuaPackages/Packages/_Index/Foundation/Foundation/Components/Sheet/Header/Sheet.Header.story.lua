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
local columnLabels = SheetStoryHelpers.columnLabels
local prefersCenter = SheetStoryHelpers.prefersCenter
local variantRows = SheetStoryHelpers.variantRows
local variantTrigger = SheetStoryHelpers.variantTrigger

local VARIANT_ORDER = SheetStoryHelpers.VARIANT_ORDER
local HEADER_HEIGHTS: { { label: string, height: number? } } = {
	{ label = "hug", height = nil },
	{ label = "80", height = 80 },
	{ label = "160", height = 160 },
}

local CLOSE_AFFORDANCE_PRESETS = {
	Default = nil :: boolean?,
	["true"] = true,
	["false"] = false,
}

type Controls = {
	hasCloseAffordancePreset: string,
	rootShowFullBleed: boolean,
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
				showFullBleed = controls.rootShowFullBleed,
				hasCloseAffordance = CLOSE_AFFORDANCE_PRESETS[controls.hasCloseAffordancePreset],
				highlightedSlot = "Header",
			},
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Height = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Height",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = columnLabels(HEADER_HEIGHTS),
				rows = variantRows(function(variant)
					return Dash.map(HEADER_HEIGHTS, function(entry)
						return variantTrigger(variant, {
							childrenOptions = {
								highlightedSlot = "Header",
								headerHeight = entry.height,
							},
						})
					end)
				end),
			}),
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PAGE_TAG,
	}, {
		Affordances = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Optional affordances",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = { "Default", "false" },
				rows = variantRows(function(variant)
					return {
						variantTrigger(variant, {
							childrenOptions = { highlightedSlot = "Header" },
						}),
						variantTrigger(variant, {
							childrenOptions = {
								hasCloseAffordance = false,
								highlightedSlot = "Header",
							},
						}),
					}
				end),
			}),
		}),
	})
end

return {
	summary = "The header slot for [[Sheet]]. Close presence defaults from sheet type unless `hasCloseAffordance` is set.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Sizing", story = SizingStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		hasCloseAffordancePreset = { "Default", "true", "false" },
		rootShowFullBleed = false,
		rootSheetTypePreset = VARIANT_ORDER,
	},
}
