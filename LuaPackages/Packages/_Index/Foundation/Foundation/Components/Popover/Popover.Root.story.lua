local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local PopoverStoryHelpers = require(script.Parent.PopoverStoryHelpers)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local LabeledCell = StorySection.LabeledCell
local PopoverStage = PopoverStoryHelpers.PopoverStage
local PopoverTarget = PopoverStoryHelpers.PopoverTarget
local Section = StorySection.Section

local COMPOSITION_ORDER = PopoverStoryHelpers.COMPOSITION_ORDER
local MATRIX_SECTION_TAG = PopoverStoryHelpers.MATRIX_SECTION_TAG
local PAGE_TAG = PopoverStoryHelpers.PAGE_TAG
local PLAYGROUND_FRAME_SIZE = PopoverStoryHelpers.PLAYGROUND_FRAME_SIZE
local PLAYGROUND_TAG = PopoverStoryHelpers.PLAYGROUND_TAG

local function PlaygroundStory(): React.ReactNode
	return React.createElement(View, {
		tag = PLAYGROUND_TAG,
		Size = PLAYGROUND_FRAME_SIZE,
	}, {
		Stage = React.createElement(PopoverStage, { LayoutOrder = 1 }),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Dismiss = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Open, close, and dismiss",
			note = "The caller owns isOpen; press the anchor to toggle, or press outside the panel to dismiss.",
			contentTag = MATRIX_SECTION_TAG,
		}, {
			Stage = React.createElement(PopoverStage, {
				LayoutOrder = 1,
				hasOutsidePressDismiss = true,
				hasOpenStateLabel = true,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		FullComposition = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Full composition",
			},
			Dash.map(COMPOSITION_ORDER, function(composition, index)
				return React.createElement(LabeledCell, {
					key = composition,
					LayoutOrder = index,
					label = composition,
				}, {
					Target = React.createElement(PopoverTarget, {
						LayoutOrder = 1,
						panel = PopoverStoryHelpers.makePanelChildren(composition),
					}),
				})
			end)
		),
	})
end

return {
	summary = "Coordinates an anchor with a floating panel and holds the caller-driven open state for both.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
}
