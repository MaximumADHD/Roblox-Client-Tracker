local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Badge = require(Foundation.Components.Badge)
local BadgeShape = require(Foundation.Enums.BadgeShape)
local BadgeSize = require(Foundation.Enums.BadgeSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StatusBadge = require(Foundation.Components.StatusBadge)
local StatusBadgeShape = require(Foundation.Enums.StatusBadgeShape)
local StatusBadgeSize = require(Foundation.Enums.StatusBadgeSize)
local StatusBadgeVariant = require(Foundation.Enums.StatusBadgeVariant)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

type BadgeSize = BadgeSize.BadgeSize
type StatusBadgeShape = StatusBadgeShape.StatusBadgeShape
type StatusBadgeSize = StatusBadgeSize.StatusBadgeSize
type StatusBadgeVariant = StatusBadgeVariant.StatusBadgeVariant

local VARIANT_ORDER: { StatusBadgeVariant } = {
	StatusBadgeVariant.Standard,
	StatusBadgeVariant.Emphasis,
	StatusBadgeVariant.Success,
	StatusBadgeVariant.Warning,
	StatusBadgeVariant.Alert,
}

local SHAPE_ORDER: { StatusBadgeShape } = {
	StatusBadgeShape.Utility,
	StatusBadgeShape.Box,
}

local SIZE_ORDER: { StatusBadgeSize } = {
	StatusBadgeSize.XSmall,
	StatusBadgeSize.Small,
}

-- `columnHeaders` is an invariant `{ string }`, so the enum orders are copied rather than cast.
local VARIANT_HEADERS: { string } = Dash.map(VARIANT_ORDER, function(variant): string
	return variant
end)
local SHAPE_HEADERS: { string } = Dash.map(SHAPE_ORDER, function(shape): string
	return shape
end)
local SIZE_HEADERS: { string } = Dash.map(SIZE_ORDER, function(size): string
	return size
end)

local DEFAULT_TEXT = "Label"
local LONG_TEXT = "This is a longer label than the maximum content width allows"
local BADGE_TEXT = "Badge"

-- Box is the only shape the two components share; Utility has no Badge counterpart.
local SIBLING_SIZES: { { size: StatusBadgeSize, badgeSize: BadgeSize } } = {
	{ size = StatusBadgeSize.XSmall, badgeSize = BadgeSize.XSmall },
	{ size = StatusBadgeSize.Small, badgeSize = BadgeSize.Small },
}

local LABEL_COLUMN_WIDTH = 80
local CELL_COLUMN_WIDTH = 120
-- Labels truncate at 200px of content, so a truncation cell needs room for the full footprint.
local TRUNCATION_CELL_COLUMN_WIDTH = 240
-- A pairing cell holds both components; the widest pair measures 151px, so the columns still align.
local SIBLING_CELL_COLUMN_WIDTH = 170

local function Section(props: {
	LayoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-top auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function SiblingPair(props: { size: StatusBadgeSize, badgeSize: BadgeSize }): React.ReactNode
	return React.createElement(View, {
		tag = "row align-y-center gap-medium auto-xy",
	}, {
		Status = React.createElement(StatusBadge, {
			text = DEFAULT_TEXT,
			shape = StatusBadgeShape.Box,
			size = props.size,
			LayoutOrder = 1,
		}),
		Badge = React.createElement(Badge, {
			text = BADGE_TEXT,
			shape = BadgeShape.Box,
			size = props.badgeSize,
			LayoutOrder = 2,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		text: string,
		variant: StatusBadgeVariant,
		shape: StatusBadgeShape,
		size: StatusBadgeSize,
	},
}): React.ReactNode
	return React.createElement(StatusBadge, {
		text = props.controls.text,
		variant = props.controls.variant,
		shape = props.controls.shape,
		size = props.controls.size,
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-y-large bg-surface-0",
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
						return React.createElement(StatusBadge, {
							text = DEFAULT_TEXT,
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
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
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
							return React.createElement(StatusBadge, {
								text = DEFAULT_TEXT,
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
		tag = "col gap-large auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SHAPE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size),
					cells = Dash.map(SHAPE_ORDER, function(shape)
						return React.createElement(StatusBadge, {
							text = DEFAULT_TEXT,
							shape = shape,
							size = size,
						})
					end),
				}
			end),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Truncation = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Truncation",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = TRUNCATION_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StatusBadge, {
								text = LONG_TEXT,
								size = size,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Badges = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Badge",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = SIBLING_CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						cells = Dash.map(SIBLING_SIZES, function(sizes)
							return React.createElement(SiblingPair, {
								size = sizes.size,
								badgeSize = sizes.badgeSize,
							})
						end),
					},
				},
			}),
		}),
	})
end

return {
	summary = "A non-interactive status label for repeated, color-coded states in data-dense interfaces.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Shape",
			story = ShapeStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			story = InContextStory,
		},
	},
	controls = {
		text = DEFAULT_TEXT,
		variant = VARIANT_ORDER,
		shape = SHAPE_ORDER,
		size = SIZE_ORDER,
	},
}
