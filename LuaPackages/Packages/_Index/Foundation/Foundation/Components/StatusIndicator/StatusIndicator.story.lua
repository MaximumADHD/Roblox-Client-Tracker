local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local UserPresence = require(Foundation.Enums.UserPresence)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local Section = StorySection.Section

type MatrixGridRow = MatrixGridShared.MatrixGridRow
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape
type StatusIndicatorSize = StatusIndicatorSize.StatusIndicatorSize

local MASK_NONE = "None"
local MASK_SURFACE_0 = "Surface_0"
local MASK_SURFACE_100 = "Surface_100"
local AVATAR_USER_ID = 24813339
local TILE_SIZE = 48
local CELL_COLUMN_WIDTH = 56
local OVERFLOW_CELL_COLUMN_WIDTH = 72
local OVERFLOW_LABEL_COLUMN_WIDTH = 56
local MASK_CELL_COLUMN_WIDTH = 72
local OVERFLOW_MAX = 99

local VARIANT_ORDER: { StatusIndicatorVariant } = {
	StatusIndicatorVariant.Standard,
	StatusIndicatorVariant.Emphasis,
	StatusIndicatorVariant.Neutral,
	StatusIndicatorVariant.Success,
	StatusIndicatorVariant.Warning,
	StatusIndicatorVariant.Alert,
	StatusIndicatorVariant.Voice,
}

local SHAPE_ORDER: { StatusIndicatorShape } = {
	StatusIndicatorShape.Circle,
	StatusIndicatorShape.Ring,
	StatusIndicatorShape.Square,
}

local SIZE_ORDER: { StatusIndicatorSize } = {
	StatusIndicatorSize.XSmall,
	StatusIndicatorSize.Small,
	StatusIndicatorSize.Medium,
	StatusIndicatorSize.Pictogram,
}

local PLAYGROUND_SIZE_OPTIONS: { StatusIndicatorSize } = {
	StatusIndicatorSize.Small,
	StatusIndicatorSize.XSmall,
	StatusIndicatorSize.Medium,
	StatusIndicatorSize.Pictogram,
}

local VARIANT_HEADERS = MatrixGridShared.enumHeaders(VARIANT_ORDER)

local SHAPE_HEADERS = MatrixGridShared.enumHeaders(SHAPE_ORDER)

local SIZE_HEADERS = MatrixGridShared.enumHeaders(SIZE_ORDER)

local OVERFLOW_VALUES = { 9, 99, 100 }
local OVERFLOW_MAX_VALUES = { 9, 100 }

local OVERFLOW_HEADERS = MatrixGridShared.enumHeaders(OVERFLOW_VALUES)

local function PlaygroundStory(props: {
	controls: {
		variant: StatusIndicatorVariant,
		shape: StatusIndicatorShape,
		size: StatusIndicatorSize?,
		value: number,
		max: number,
		maskPreset: string,
	},
}): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()
	local hasValue = controls.value > 0
	local mask = if controls.maskPreset == MASK_SURFACE_0
		then tokens.Color.Surface.Surface_0
		elseif controls.maskPreset == MASK_SURFACE_100 then tokens.Color.Surface.Surface_100
		else nil

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-y-large bg-surface-0",
	}, {
		StatusIndicator = if hasValue
			then React.createElement(StatusIndicator, {
				variant = controls.variant :: any,
				value = controls.value,
				max = controls.max,
				size = controls.size,
				mask = mask,
			})
			else React.createElement(StatusIndicator, {
				variant = controls.variant,
				shape = controls.shape,
				size = controls.size,
				mask = mask,
			}),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = VARIANT_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = Dash.map(VARIANT_ORDER, function(variant)
						return React.createElement(StatusIndicator, {
							variant = variant,
						})
					end),
				},
			},
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			note = "Applies to the empty indicator only: a numeric indicator ignores size and sits at one footprint.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StatusIndicator, {
								size = size,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function ShapeStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = SHAPE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = Dash.map(SHAPE_ORDER, function(shape)
						return React.createElement(StatusIndicator, {
							shape = shape,
						})
					end),
				},
			},
		}),
	})
end

local function MaskTile(props: { masked: boolean }): React.ReactNode
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "align-x-center align-y-center radius-small",
		Size = UDim2.fromOffset(TILE_SIZE, TILE_SIZE),
		backgroundStyle = tokens.Color.Extended.Gray.Gray_900,
	}, {
		StatusIndicator = React.createElement(StatusIndicator, {
			variant = StatusIndicatorVariant.Success,
			mask = if props.masked then tokens.Color.Surface.Surface_0 else nil,
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Overflow = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Overflow",
			note = "Columns are value, rows are max. Without max nothing caps: the default is math.huge.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = OVERFLOW_LABEL_COLUMN_WIDTH,
				columnHeaders = OVERFLOW_HEADERS,
				cellColumnWidth = OVERFLOW_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = Dash.map(OVERFLOW_MAX_VALUES, function(max): MatrixGridRow
					return {
						label = matrixLabel(`max {max}`),
						cells = Dash.map(OVERFLOW_VALUES, function(value)
							return React.createElement(StatusIndicator, {
								value = value,
								max = max,
							})
						end),
					}
				end),
			}),
		}),
		Mask = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Mask",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = { "Absent", "Present" },
				cellColumnWidth = MASK_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = {
							React.createElement(MaskTile, { masked = false }),
							React.createElement(MaskTile, { masked = true }),
						},
					},
				},
			}),
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		InAvatar = React.createElement(Section, {
			LayoutOrder = 1,
			name = "In Avatar",
			contentTag = "auto-xy",
		}, {
			Avatar = React.createElement(Avatar, {
				userId = AVATAR_USER_ID,
				userPresence = UserPresence.Active,
				LayoutOrder = 1,
			}),
		}),
	})
end

type StoryItem = {
	name: string,
	story: unknown,
}

local stories: { StoryItem } = {
	{ name = "Playground", story = PlaygroundStory :: unknown },
	{ name = "Variants", story = VariantsStory },
	{ name = "Sizing", story = SizingStory },
	{ name = "Shape", story = ShapeStory },
	{ name = "Content", story = ContentStory },
	{ name = "In context", story = InContextStory },
}

return {
	summary = "StatusIndicator is a compact status mark with an optional numeric count.",
	stories = stories,
	controls = {
		variant = VARIANT_ORDER,
		shape = SHAPE_ORDER,
		value = 0,
		max = OVERFLOW_MAX,
		maskPreset = { MASK_NONE, MASK_SURFACE_0, MASK_SURFACE_100 },
		size = PLAYGROUND_SIZE_OPTIONS,
	},
}
