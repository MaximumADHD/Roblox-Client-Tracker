local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local SheetStoryHelpers = require(script.Parent.Parent.SheetStoryHelpers)
local View = require(Foundation.Components.View)

local LabeledSheetTrigger = SheetStoryHelpers.LabeledSheetTrigger
local Section = SheetStoryHelpers.Section
local SheetMatrix = SheetStoryHelpers.SheetMatrix
local centerHeightFor = SheetStoryHelpers.centerHeightFor
local prefersCenter = SheetStoryHelpers.prefersCenter
local variantRows = SheetStoryHelpers.variantRows
local variantTrigger = SheetStoryHelpers.variantTrigger

local VARIANT_ORDER = SheetStoryHelpers.VARIANT_ORDER

type Controls = {
	isContentFullBleed: boolean,
	rootShowHeader: boolean,
	rootShowActions: boolean,
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
				showHeader = controls.rootShowHeader,
				showActions = controls.rootShowActions,
				showFullBleed = controls.rootShowFullBleed,
				isContentFullBleed = controls.isContentFullBleed,
				highlightedSlot = "Content",
			},
		}),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = SheetStoryHelpers.PLAYGROUND_TAG,
	}, {
		Bleed = React.createElement(Section, {
			LayoutOrder = 1,
			name = "isContentFullBleed",
			contentTag = SheetStoryHelpers.MATRIX_SECTION_TAG,
		}, {
			Grid = React.createElement(SheetMatrix, {
				columnHeaders = { "false", "true" },
				rows = variantRows(function(variant)
					return {
						variantTrigger(variant, {
							childrenOptions = { highlightedSlot = "Content" },
						}),
						variantTrigger(variant, {
							childrenOptions = {
								isContentFullBleed = true,
								highlightedSlot = "Content",
							},
						}),
					}
				end),
			}),
		}),
	})
end

return {
	summary = "The scroll surface for [[Sheet]]. Do not wrap this slot in another ScrollingFrame.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		isContentFullBleed = false,
		rootShowHeader = true,
		rootShowActions = false,
		rootShowFullBleed = false,
		rootSheetTypePreset = VARIANT_ORDER,
	},
}
