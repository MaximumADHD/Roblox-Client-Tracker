local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Badge = require(Foundation.Components.Badge.Badge)
local BadgeShape = require(Foundation.Enums.BadgeShape)
local BadgeSize = require(Foundation.Enums.BadgeSize)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local IconPosition = require(Foundation.Enums.IconPosition)
local Icons = BuilderIcons.Icon
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
type BadgeVariant = BadgeVariant.BadgeVariant
type BadgeShape = BadgeShape.BadgeShape
type BadgeSize = BadgeSize.BadgeSize
type IconPosition = IconPosition.IconPosition

local Flags = require(Foundation.Utility.Flags)
local useTokens = require(Foundation.Providers.Style.useTokens)

-- DEPRECATED Primary, Secondary, and Neutral variants are scheduled for removal in the next major release (2.0)
local nonDeprecatedVariants = Dash.filter(Dash.values(BadgeVariant), function(item)
	return item ~= BadgeVariant.Primary and item ~= BadgeVariant.Secondary and item ~= BadgeVariant.Neutral
end) :: { BadgeVariant }

local defaultBadgeProps = {
	text = "Label",
	variant = BadgeVariant.Contrast,
	shape = BadgeShape.Pill,
	size = BadgeSize.XSmall,
}

local SIZE_ORDER: { BadgeSize } = {
	BadgeSize.XSmall,
	BadgeSize.Small,
}

type BadgeStoryIcon = {
	name: string,
	position: IconPosition,
	variant: BuilderIcons.IconVariant?,
}

-- Size/shape matrices use a narrow label column; icon-type rows need a wider info column.
local LABEL_COLUMN_WIDTH = 80
local INFO_COLUMN_WIDTH = 240
local CELL_COLUMN_WIDTH = 100
local LONG_LABEL_TEXT = "This is a very long badge label that should be truncated"
local PLACEMENT_EXAMPLE_ICON = Icons.DiamondSimplified
local ON_MEDIA_PANEL_SIZE = UDim2.fromOffset(120, 56)
local ON_MEDIA_EXAMPLE_ICON = Icons.DiamondSimplified

local ON_MEDIA_SEMI_TRANSPARENT_VARIANTS: { BadgeVariant } = {
	BadgeVariant.Alert,
	BadgeVariant.Success,
	BadgeVariant.Warning,
	BadgeVariant.Neutral,
}

local ON_MEDIA_SOLID_VARIANTS: { BadgeVariant } = {
	BadgeVariant.Contrast,
	BadgeVariant.Emphasis,
	BadgeVariant.OverMedia,
}

local function getOnMediaSemiTransparentVariants(): { BadgeVariant }
	-- Neutral is removed behind FoundationBadgeBetaUpdate (alias of Standard).
	if Flags.FoundationBadgeBetaUpdate then
		return {
			BadgeVariant.Alert,
			BadgeVariant.Success,
			BadgeVariant.Warning,
		}
	end
	return ON_MEDIA_SEMI_TRANSPARENT_VARIANTS
end

local PLACEMENT_SIZE_ORDER: { BadgeSize } = {
	BadgeSize.XSmall,
	BadgeSize.Small,
}

local controlSizeOptions: { BadgeSize } = {
	BadgeSize.XSmall,
	BadgeSize.Small,
}

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
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledBadge(props: {
	label: string,
	LayoutOrder: number,
	variant: BadgeVariant?,
	shape: BadgeShape?,
	size: BadgeSize?,
	icon: (string | BadgeStoryIcon)?,
})
	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Badge = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Content = React.createElement(Badge, {
				text = defaultBadgeProps.text,
				icon = props.icon,
				variant = props.variant or defaultBadgeProps.variant,
				shape = props.shape or defaultBadgeProps.shape,
				size = props.size or defaultBadgeProps.size,
			}),
		}),
	})
end

local function OnMediaVariant(props: {
	label: string,
	LayoutOrder: number,
	variant: BadgeVariant,
})
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Media = React.createElement(View, {
			Size = ON_MEDIA_PANEL_SIZE,
			tag = "align-x-left align-y-center padding-small radius-medium clip",
			backgroundStyle = tokens.Color.Surface.Surface_100,
			LayoutOrder = 2,
		}, {
			Badge = React.createElement(Badge, {
				text = defaultBadgeProps.text,
				icon = {
					name = ON_MEDIA_EXAMPLE_ICON,
					position = IconPosition.Left,
				},
				variant = props.variant,
				shape = defaultBadgeProps.shape,
				size = BadgeSize.Small,
			}),
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		text: string,
		icon: string,
		iconPosition: IconPosition,
		size: BadgeSize,
		variant: BadgeVariant,
		shape: BadgeShape,
	},
}): React.ReactNode
	local icon = StoryIcons.parseIconControl(props.controls.icon)

	return React.createElement(Badge, {
		text = props.controls.text,
		icon = if icon then { name = icon, position = props.controls.iconPosition } else nil,
		size = props.controls.size,
		variant = props.controls.variant,
		shape = props.controls.shape,
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row wrap gap-large auto-xy padding-y-large bg-surface-0",
		},
		Dash.map(nonDeprecatedVariants, function(variant, index)
			return React.createElement(LabeledBadge, {
				label = variant,
				LayoutOrder = index,
				variant = variant,
				size = BadgeSize.Small,
				icon = {
					name = PLACEMENT_EXAMPLE_ICON,
					position = IconPosition.Left,
				},
			})
		end)
	)
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledBadge, {
					label = size,
					LayoutOrder = index,
					size = size,
				})
			end)
		),
	})
end

local function ShapesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = { BadgeShape.Pill :: string, BadgeShape.Box :: string },
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size :: string),
					cells = {
						React.createElement(Badge, {
							text = defaultBadgeProps.text,
							variant = defaultBadgeProps.variant,
							shape = BadgeShape.Pill,
							size = size,
						}),
						React.createElement(Badge, {
							text = defaultBadgeProps.text,
							variant = defaultBadgeProps.variant,
							shape = BadgeShape.Box,
							size = size,
						}),
					},
				}
			end),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Truncation = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Truncation",
				contentTag = "auto-xy",
			},
			React.createElement(Badge, {
				text = LONG_LABEL_TEXT,
				variant = defaultBadgeProps.variant,
				shape = defaultBadgeProps.shape,
				size = defaultBadgeProps.size,
			})
		),
		Accessories = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Icon by type",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = INFO_COLUMN_WIDTH,
				columnHeaders = { "Left", "Right" },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(accessoryIcon)
					return {
						React.createElement(Badge, {
							text = defaultBadgeProps.text,
							icon = {
								name = accessoryIcon.name,
								position = IconPosition.Left,
							},
							variant = defaultBadgeProps.variant,
							shape = defaultBadgeProps.shape,
							size = defaultBadgeProps.size,
						}),
						React.createElement(Badge, {
							text = defaultBadgeProps.text,
							icon = {
								name = accessoryIcon.name,
								position = IconPosition.Right,
							},
							variant = defaultBadgeProps.variant,
							shape = defaultBadgeProps.shape,
							size = defaultBadgeProps.size,
						}),
					}
				end),
			}),
		}),
		IconPlacementBySize = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Icon placement by size",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = { "Left", "Right" },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				rows = Dash.map(PLACEMENT_SIZE_ORDER, function(size)
					return {
						label = matrixLabel(size :: string),
						cells = {
							React.createElement(Badge, {
								text = defaultBadgeProps.text,
								icon = {
									name = PLACEMENT_EXAMPLE_ICON,
									position = IconPosition.Left,
								},
								variant = defaultBadgeProps.variant,
								shape = defaultBadgeProps.shape,
								size = size,
							}),
							React.createElement(Badge, {
								text = defaultBadgeProps.text,
								icon = {
									name = PLACEMENT_EXAMPLE_ICON,
									position = IconPosition.Right,
								},
								variant = defaultBadgeProps.variant,
								shape = defaultBadgeProps.shape,
								size = size,
							}),
						},
					}
				end),
			}),
		}),
		IconOnly = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Icon only",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = { BadgeShape.Pill :: string, BadgeShape.Box :: string },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				rows = Dash.map(SIZE_ORDER, function(size)
					return {
						label = matrixLabel(size :: string),
						cells = {
							React.createElement(Badge, {
								text = nil,
								icon = PLACEMENT_EXAMPLE_ICON,
								variant = defaultBadgeProps.variant,
								shape = BadgeShape.Pill,
								size = size,
							}),
							React.createElement(Badge, {
								text = nil,
								icon = PLACEMENT_EXAMPLE_ICON,
								variant = defaultBadgeProps.variant,
								shape = BadgeShape.Box,
								size = size,
							}),
						},
					}
				end),
			}),
		}),
	})
end

local function InContextStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		SemiTransparent = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Semi-transparent on media",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(getOnMediaSemiTransparentVariants(), function(variant, index)
				return React.createElement(OnMediaVariant, {
					label = variant,
					LayoutOrder = index,
					variant = variant,
				})
			end)
		),
		Solid = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Solid on media",
				contentTag = "row gap-large auto-xy wrap",
			},
			Dash.map(ON_MEDIA_SOLID_VARIANTS, function(variant, index)
				return React.createElement(OnMediaVariant, {
					label = variant,
					LayoutOrder = index,
					variant = variant,
				})
			end)
		),
	})
end

return {
	summary = "Badge is a non-interactive visual cue that calls attention to additional information, such as a special condition, state, or quality.",
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
			name = "Shapes",
			story = ShapesStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = "Badges on media backgrounds, grouped by transparency.",
			story = InContextStory,
		},
	},
	controls = {
		text = "Label",
		icon = StoryIcons.buildIconControlOptions(),
		variant = nonDeprecatedVariants,
		shape = Dash.values(BadgeShape),
		iconPosition = Dash.values(IconPosition),
		size = controlSizeOptions,
	},
}
