local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local PopoverStoryHelpers = require(script.Parent.Parent.PopoverStoryHelpers)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local MatrixSection = StorySection.MatrixSection
local PopoverStage = PopoverStoryHelpers.PopoverStage

local ANCHOR_SOURCE_ORDER = PopoverStoryHelpers.ANCHOR_SOURCE_ORDER
local MATRIX_SECTION_TAG = PopoverStoryHelpers.MATRIX_SECTION_TAG
local PAGE_TAG = PopoverStoryHelpers.PAGE_TAG
local PLAYGROUND_FRAME_SIZE = PopoverStoryHelpers.PLAYGROUND_FRAME_SIZE
local PLAYGROUND_TAG = PopoverStoryHelpers.PLAYGROUND_TAG
local STAGE_WIDTH = PopoverStoryHelpers.STAGE_WIDTH

type AnchorSource = PopoverStoryHelpers.AnchorSource

local ANCHOR_SOURCE_HEADERS: { string } = {
	"children — anchored to the trigger",
	"anchorRef = element ref — anchored to Target (instance)",
	"anchorRef = virtual ref — anchored to Target (virtual)",
}

local function PlaygroundStory(props: {
	controls: {
		anchorSource: AnchorSource,
	},
}): React.ReactNode
	return React.createElement(View, {
		tag = PLAYGROUND_TAG,
		Size = PLAYGROUND_FRAME_SIZE,
	}, {
		Stage = React.createElement(PopoverStage, {
			LayoutOrder = 1,
			anchorSource = props.controls.anchorSource,
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		AnchorSource = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Anchor source",
			note = "Popover.Anchor decides what the panel points at. Without anchorRef it wraps its children and they become the anchor. With anchorRef it renders nothing and ignores children, so the panel tracks Target rather than the button being pressed — which is why the trigger sits in the corner here, clear of where the panel lands. A virtual ref from useMeasurableRef names a rect with no element behind it, so its Target box is drawn by this page at the rect the component was handed instead of being the anchor, and the arrow drops because there is no instance to point from. A Studio widget URI is a fourth arm that only resolves inside a plugin.",
			contentTag = MATRIX_SECTION_TAG,
			showLabelColumn = false,
			columnHeaders = ANCHOR_SOURCE_HEADERS,
			cellColumnWidth = STAGE_WIDTH,
			rows = {
				{
					cells = Dash.map(ANCHOR_SOURCE_ORDER, function(anchorSource)
						return React.createElement(PopoverStage, {
							anchorSource = anchorSource,
						})
					end),
				},
			},
		}),
	})
end

return {
	summary = "Marks what a popover is positioned against — its own children, another element's ref, or a virtual point.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		anchorSource = ANCHOR_SOURCE_ORDER,
	},
}
