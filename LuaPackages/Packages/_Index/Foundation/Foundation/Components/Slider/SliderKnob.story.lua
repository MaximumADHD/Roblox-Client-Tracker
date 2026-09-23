local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation

local SliderKnob = require(script.Parent.SliderKnob)

local TRACK_LENGTH = 240
local LABEL_COLUMN_WIDTH = 80
local CELL_COLUMN_WIDTH = TRACK_LENGTH
local SIZE_ORDER: { InputSize } = { InputSize.XSmall, InputSize.Small, InputSize.Medium, InputSize.Large }
local TRACK_THICKNESS: { [InputSize]: number } = {
	[InputSize.XSmall] = 4,
	[InputSize.Small] = 6,
	[InputSize.Medium] = 8,
	[InputSize.Large] = 10,
}

type TrackProps = {
	LayoutOrder: number,
	orientation: Orientation?,
	size: InputSize?,
	stroke: Types.Stroke?,
	hasShadow: boolean?,
	isDisabled: boolean?,
	fraction: number?,
	limit: number?,
	testId: string?,
}

local function Track(props: TrackProps)
	local tokens = useTokens()
	local trackRef = React.useRef(nil :: GuiObject?)
	local isVertical = props.orientation == Orientation.Vertical
	local fraction, setFraction = React.useBinding(props.fraction or 0.5)
	local size: InputSize = (props.size or InputSize.Medium) :: InputSize
	local trackThickness = TRACK_THICKNESS[size]

	return React.createElement(View, {
		tag = "radius-circle bg-shift-200",
		Size = if isVertical
			then UDim2.fromOffset(trackThickness, TRACK_LENGTH)
			else UDim2.fromOffset(TRACK_LENGTH, trackThickness),
		LayoutOrder = props.LayoutOrder,
		ref = trackRef,
	}, {
		Knob = React.createElement(SliderKnob, {
			trackRef = trackRef,
			fraction = fraction,
			isVertical = isVertical,
			isDisabled = props.isDisabled or false,
			knobAppearance = {
				size = size,
				style = tokens.Color.System.Contrast,
				stroke = props.stroke or {
					Color = tokens.Color.Stroke.Default.Color3,
					Transparency = tokens.Color.Stroke.Default.Transparency,
					Thickness = tokens.Stroke.Standard,
				},
				hasShadow = if props.hasShadow == nil then true else props.hasShadow,
			},
			onSeek = setFraction,
			getBounds = function()
				return 0, props.limit or 1
			end,
			testId = props.testId or "--story-knob",
			Visible = true,
			LayoutOrder = 1,
		}),
	})
end

local function SizesStory()
	return React.createElement(MatrixGrid, {
		labelColumnWidth = LABEL_COLUMN_WIDTH,
		columnHeaders = { "Track" },
		cellColumnWidth = CELL_COLUMN_WIDTH,
		headerTextAlign = "left",
		cellAlign = "left",
		rows = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
			return {
				label = matrixLabel(size :: string),
				cells = {
					React.createElement(Track, {
						LayoutOrder = 1,
						size = size,
						testId = `--story-knob-{size}`,
					}),
				},
			}
		end),
	})
end

local function CollisionStory()
	return React.createElement(MatrixGrid, {
		labelColumnWidth = LABEL_COLUMN_WIDTH,
		columnHeaders = { "Track" },
		cellColumnWidth = CELL_COLUMN_WIDTH,
		headerTextAlign = "left",
		cellAlign = "left",
		rows = {
			{
				label = matrixLabel("Bounded"),
				cells = {
					React.createElement(Track, {
						LayoutOrder = 1,
						fraction = 0.25,
						limit = 0.6,
						testId = "--story-knob-bounded",
					}),
				},
			},
			{
				label = matrixLabel("Unbounded"),
				cells = {
					React.createElement(Track, {
						LayoutOrder = 1,
						fraction = 0.25,
						testId = "--story-knob-unbounded",
					}),
				},
			},
		},
	})
end

type Controls = {
	orientation: Orientation,
	size: InputSize,
	hasShadow: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: Controls })
	local controls = props.controls
	return React.createElement(Track, {
		LayoutOrder = 1,
		orientation = controls.orientation,
		size = controls.size,
		hasShadow = controls.hasShadow,
		isDisabled = controls.isDisabled,
	})
end

return {
	summary = "The draggable handle a `Slider` places on its track. Private to `Slider`, which owns one per value it exposes, positions each from a fraction of the track, and clamps its drags so two knobs cannot cross. Drag the knobs below to move them.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "The Slider knob takes its visual size from `knobAppearance`.",
			story = SizesStory,
		},
		{
			name = "Collision",
			summary = "`getBounds` caps how far a knob may travel. The first track stops at 0.6, the second runs the full length.",
			story = CollisionStory,
		},
	},
	controls = {
		orientation = { Orientation.Horizontal, Orientation.Vertical } :: { Orientation.Orientation },
		size = { InputSize.Medium, InputSize.XSmall, InputSize.Small, InputSize.Large } :: { InputSize },
		hasShadow = true,
		isDisabled = false,
	},
}
