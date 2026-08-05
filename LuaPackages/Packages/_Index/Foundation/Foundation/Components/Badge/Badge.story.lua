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
local MatrixGrid = require(Foundation.Utility.Stories.MatrixGrid)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
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

local CONTROL_ICON_EXAMPLES: { { label: string, name: string } } = {
	{ label = "DiamondSimplified", name = Icons.DiamondSimplified },
	{ label = "CirclePlus", name = Icons.CirclePlus },
	{ label = "Diamond", name = Icons.Diamond },
	{ label = "House", name = Icons.House },
	{ label = "Legacy placeholder icon", name = "icons/placeholder/placeholderOn_small" },
	{ label = "Legacy limited item icon", name = "icons/menu/clothing/limited_on" },
}

local function getIconInputType(iconName: string): string
	if isBuilderIcon(iconName) then
		return "builder"
	elseif iconMigrationUtils.isMigrated(iconName) then
		return "migrated"
	else
		return "non-migrated"
	end
end

local function getAccessoryPathNote(iconName: string): string
	if isBuilderIcon(iconName) then
		return "Builder icon · Icon component"
	elseif iconMigrationUtils.isMigrated(iconName) then
		return "Migrated legacy string · Icon component"
	else
		return "Non-migrated legacy string · Image component"
	end
end

local ACCESSORY_ICON_EXAMPLES: { { label: string, name: string } } = {}
do
	local seenInputTypes: { [string]: boolean } = {}
	for _, example in CONTROL_ICON_EXAMPLES do
		local inputType = getIconInputType(example.name)
		if not seenInputTypes[inputType] then
			seenInputTypes[inputType] = true
			table.insert(ACCESSORY_ICON_EXAMPLES, example)
		end
	end
end

local ACCESSORY_ICONS: { { title: string, subtitle: string, name: string } } = Dash.map(
	ACCESSORY_ICON_EXAMPLES,
	function(example)
		return {
			title = getAccessoryPathNote(example.name),
			subtitle = example.name,
			name = example.name,
		}
	end
)

local controlIconOptions: { string } = Dash.map(CONTROL_ICON_EXAMPLES, function(example)
	return example.name
end)
table.insert(controlIconOptions, "")

local function matrixLabel(text: string): React.ReactNode
	return React.createElement(Text, {
		Text = text,
		tag = "auto-xy text-caption-small text-align-x-left content-default",
	})
end

local function matrixInfoLabel(title: string, subtitle: string): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xsmall size-full-0 auto-y",
	}, {
		Title = React.createElement(Text, {
			Text = title,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Subtitle = React.createElement(Text, {
			Text = subtitle,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "text-label-medium content-default auto-xy",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large align-y-start auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function LabeledBadge(props: {
	label: string,
	layoutOrder: number,
	variant: BadgeVariant?,
	shape: BadgeShape?,
	size: BadgeSize?,
	icon: (string | BadgeStoryIcon)?,
})
	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.layoutOrder,
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
	layoutOrder: number,
	variant: BadgeVariant,
})
	local tokens = useTokens()

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
		LayoutOrder = props.layoutOrder,
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
	return React.createElement(Badge, {
		text = props.controls.text,
		icon = if props.controls.icon ~= ""
			then { name = props.controls.icon, position = props.controls.iconPosition }
			else nil,
		size = props.controls.size,
		variant = props.controls.variant,
		shape = props.controls.shape,
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = "row gap-large align-y-start auto-xy wrap padding-y-large bg-surface-0",
		},
		Dash.map(nonDeprecatedVariants, function(variant, index)
			return React.createElement(LabeledBadge, {
				label = variant,
				layoutOrder = index,
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
				layoutOrder = 1,
				name = "Size",
				contentTag = "row gap-large align-y-start auto-xy wrap",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledBadge, {
					label = size,
					layoutOrder = index,
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
				layoutOrder = 1,
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
			layoutOrder = 2,
			name = "Icon by type",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = INFO_COLUMN_WIDTH,
				columnHeaders = { "Left", "Right" },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				rowGap = "xxlarge",
				rows = Dash.map(ACCESSORY_ICONS, function(accessoryIcon)
					return {
						label = matrixInfoLabel(accessoryIcon.title, accessoryIcon.subtitle),
						cells = {
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
						},
					}
				end),
			}),
		}),
		IconPlacementBySize = React.createElement(Section, {
			layoutOrder = 3,
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
			layoutOrder = 4,
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
				layoutOrder = 1,
				name = "Semi-transparent on media",
				contentTag = "row gap-large align-y-start auto-xy wrap",
			},
			Dash.map(getOnMediaSemiTransparentVariants(), function(variant, index)
				return React.createElement(OnMediaVariant, {
					label = variant,
					layoutOrder = index,
					variant = variant,
				})
			end)
		),
		Solid = React.createElement(
			Section,
			{
				layoutOrder = 2,
				name = "Solid on media",
				contentTag = "row gap-large align-y-start auto-xy wrap",
			},
			Dash.map(ON_MEDIA_SOLID_VARIANTS, function(variant, index)
				return React.createElement(OnMediaVariant, {
					label = variant,
					layoutOrder = index,
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
		icon = controlIconOptions,
		variant = nonDeprecatedVariants,
		shape = Dash.values(BadgeShape),
		iconPosition = Dash.values(IconPosition),
		size = controlSizeOptions,
	},
}
