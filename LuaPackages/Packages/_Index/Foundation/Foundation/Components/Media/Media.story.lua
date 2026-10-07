local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Media = require(Foundation.Components.Media)
local MediaAspectRatio = require(Foundation.Enums.MediaAspectRatio)
type MediaAspectRatio = MediaAspectRatio.MediaAspectRatio
local MediaOrientation = require(Foundation.Enums.MediaOrientation)
type MediaOrientation = MediaOrientation.MediaOrientation
local View = require(Foundation.Components.View)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local CONTENT: Media.MediaContent = { type = "Image", source = "rbxthumb://type=GameIcon&id=1818&w=512&h=512" }

local PLAYGROUND_WIDTH = 400
local CELL_WIDTH = 120
local LONG_TO_SHORT: { [MediaAspectRatio]: number } = {
	[MediaAspectRatio.Ratio1x1] = 1,
	[MediaAspectRatio.Ratio5x4] = 5 / 4,
	[MediaAspectRatio.Ratio4x3] = 4 / 3,
	[MediaAspectRatio.Ratio3x2] = 3 / 2,
	[MediaAspectRatio.Ratio16x9] = 16 / 9,
	[MediaAspectRatio.Ratio2x1] = 2,
}

local ASPECT_RATIO_ORDER = {
	MediaAspectRatio.Ratio1x1,
	MediaAspectRatio.Ratio5x4,
	MediaAspectRatio.Ratio4x3,
	MediaAspectRatio.Ratio3x2,
	MediaAspectRatio.Ratio16x9,
	MediaAspectRatio.Ratio2x1,
} :: { MediaAspectRatio }

local ORIENTATION_ORDER = {
	MediaOrientation.Landscape,
	MediaOrientation.Portrait,
} :: { MediaOrientation }

local function widthOverHeightFor(aspectRatio: MediaAspectRatio, orientation: MediaOrientation): number
	local longToShort = LONG_TO_SHORT[aspectRatio]
	return if orientation == MediaOrientation.Portrait then 1 / longToShort else longToShort
end

-- Media derives its height from the aspect ratio, so it renders inside a container sized to the
-- resolved dimensions rather than one that hugs it on both axes (which would collapse).
local function MediaCell(props: {
	aspectRatio: MediaAspectRatio,
	orientation: MediaOrientation,
	width: number,
	LayoutOrder: number?,
})
	local widthOverHeight = widthOverHeightFor(props.aspectRatio, props.orientation)
	return React.createElement(View, {
		Size = UDim2.fromOffset(props.width, math.ceil(props.width / widthOverHeight)),
		LayoutOrder = props.LayoutOrder,
	}, {
		Media = React.createElement(Media, {
			content = CONTENT,
			aspectRatio = props.aspectRatio,
			orientation = props.orientation,
		}),
	})
end

local function PlaygroundStory(props)
	local aspectRatio = props.controls.aspectRatio
	local orientation = props.controls.orientation
	local widthOverHeight = widthOverHeightFor(aspectRatio, orientation)

	return React.createElement(View, {
		tag = "col align-x-center size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Container = React.createElement(View, {
			tag = "col align-x-center",
			Size = UDim2.fromOffset(PLAYGROUND_WIDTH, math.ceil(PLAYGROUND_WIDTH / widthOverHeight)),
			LayoutOrder = 1,
		}, {
			Media = React.createElement(Media, {
				content = CONTENT,
				aspectRatio = aspectRatio,
				orientation = orientation,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function SizingStory()
	local permutationRows: { MatrixGridRow } = {}
	for index, aspectRatio in ASPECT_RATIO_ORDER do
		permutationRows[index] = {
			label = matrixLabel(aspectRatio),
			cells = {
				React.createElement(MediaCell, {
					aspectRatio = aspectRatio :: MediaAspectRatio,
					orientation = MediaOrientation.Landscape,
					width = CELL_WIDTH,
				}),
				React.createElement(MediaCell, {
					aspectRatio = aspectRatio :: MediaAspectRatio,
					orientation = MediaOrientation.Portrait,
					width = CELL_WIDTH,
				}),
			},
		}
	end

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		AspectRatio = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 1,
			name = "Aspect ratio",
			note = "Every aspect ratio in both orientations.",
			labelColumnWidth = 48,
			columnHeaders = { "Landscape", "Portrait" },
			rows = permutationRows,
		}),
		Size = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 2,
			name = "Size",
			note = "Media keeps its aspect ratio as the container width changes.",
			labelColumnWidth = 48,
			columnHeaders = { "120", "240" },
			rows = {
				{
					label = matrixLabel("16:9"),
					cells = {
						React.createElement(MediaCell, {
							aspectRatio = MediaAspectRatio.Ratio16x9,
							orientation = MediaOrientation.Landscape,
							width = 120,
						}),
						React.createElement(MediaCell, {
							aspectRatio = MediaAspectRatio.Ratio16x9,
							orientation = MediaOrientation.Landscape,
							width = 240,
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
	})
end

return {
	summary = "Media displays visual content cropped to a fixed aspect ratio, filling the width of its container.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
	},
	controls = {
		aspectRatio = ASPECT_RATIO_ORDER,
		orientation = ORIENTATION_ORDER,
	},
}
