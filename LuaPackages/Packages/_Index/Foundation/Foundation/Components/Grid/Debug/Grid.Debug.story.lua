local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Grid = require(Foundation.Components.Grid)
local StorySectionShared = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local LabeledCell = StorySectionShared.LabeledCell

type ResponsiveValue<T> = Types.ResponsiveValue<T>

local STORY_FRAME_TAG = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0"
local CELL_TAG = "auto-y padding-small radius-small margin-bottom-medium bg-shift-300"
local LABEL_TAG = "size-full-0 auto-y text-caption-small text-wrap text-align-x-center content-default"

local DEFAULT_WIDTH = 600
local OVERLAY_HEIGHT = 220

local ALIGN_ORDER: { Enum.ItemLineAlignment } = {
	Enum.ItemLineAlignment.Start,
	Enum.ItemLineAlignment.Center,
	Enum.ItemLineAlignment.End,
}

local ROOT_WIDTH_OPTIONS: { number } = { 360, 600, 900 }
local TRANSPARENCY_ORDER: { number } = { 0.3, 0.7, 0.9 }
local DEFAULT_TRANSPARENCY = 0.7

local THIRD_SPAN: ResponsiveValue<number> = { xs = 1, sm = 2, md = 4, lg = 4, xl = 4 }

local function gridCells(): { [string]: React.ReactNode }
	local cells: { [string]: React.ReactNode } = {}
	for index = 1, 3 do
		cells[`Cell{index}`] = React.createElement(Grid.Cell, {
			size = THIRD_SPAN,
			tag = CELL_TAG,
			LayoutOrder = index,
		}, {
			Label = React.createElement(Text, {
				Text = string.char(64 + index),
				tag = LABEL_TAG,
			}),
		})
	end
	return cells
end

type OverlayFrameProps = {
	LayoutOrder: number?,
	width: number,
	align: Enum.ItemLineAlignment?,
	debugTransparency: number?,
}

local function OverlayFrame(props: OverlayFrameProps): React.ReactNode
	return React.createElement(View, {
		tag = "bg-surface-100",
		Size = UDim2.fromOffset(props.width, OVERLAY_HEIGHT),
		LayoutOrder = props.LayoutOrder,
	}, {
		Debug = React.createElement(Grid.Debug, {
			align = props.align,
			debugTransparency = props.debugTransparency,
		}, React.createElement(Grid.Root, { align = props.align }, gridCells())),
	})
end

type PlaygroundControls = {
	align: Enum.ItemLineAlignment,
	debugTransparency: number,
	rootWidth: number,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, {
		Frame = React.createElement(OverlayFrame, {
			LayoutOrder = 1,
			width = controls.rootWidth,
			align = controls.align,
			debugTransparency = controls.debugTransparency,
		}),
	})
end

local function transparencyFrames(): { [string]: React.ReactNode }
	local frames: { [string]: React.ReactNode } = {}
	for index, transparency in TRANSPARENCY_ORDER do
		local label = if transparency == DEFAULT_TRANSPARENCY
			then `debugTransparency = {transparency} · default`
			else `debugTransparency = {transparency}`
		frames[`Transparency{index}`] = React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = label,
		}, {
			Frame = React.createElement(OverlayFrame, {
				width = DEFAULT_WIDTH,
				align = Enum.ItemLineAlignment.Start,
				debugTransparency = transparency,
			}),
		})
	end
	return frames
end

local function TransparencyStory(): React.ReactNode
	return React.createElement(View, {
		tag = STORY_FRAME_TAG,
	}, transparencyFrames())
end

return {
	summary = "A development overlay that paints the margins, columns and gutters it measures behind real Grid "
		.. "content; `align` mirrors the Root's and only moves the overlay past the 1920px clamp.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Debug transparency",
			story = TransparencyStory,
		},
	},
	controls = {
		align = ALIGN_ORDER,
		debugTransparency = DEFAULT_TRANSPARENCY,
		rootWidth = ROOT_WIDTH_OPTIONS,
	},
}
