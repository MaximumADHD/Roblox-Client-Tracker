local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)
local useIconSize = require(Foundation.Utility.useIconSize)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local MatrixGrid = MatrixGridShared.MatrixGrid
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon

type IconSize = IconSize.IconSize
type IconVariant = BuilderIcons.IconVariant

local DEFAULT_NAME = IconName.House

local CELL_COLUMN_WIDTH = 56
local ICON_TYPE_LABEL_COLUMN_WIDTH = 260

local SIZE_ORDER: { IconSize } = {
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Medium,
	IconSize.Large,
	IconSize.XLarge,
	IconSize.XXLarge,
}

local CONTENT_SIZE_ORDER: { IconSize } = {
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Medium,
	IconSize.Large,
}

local PLAYGROUND_SIZE_OPTIONS: { IconSize } = {
	IconSize.Medium,
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Large,
	IconSize.XLarge,
	IconSize.XXLarge,
}

local VARIANT_ORDER: { IconVariant } = {
	IconVariant.Regular,
	IconVariant.Filled,
}

local PLAYGROUND_NAME_OPTIONS = Dash.map(StoryIcons.ICON_TYPE_EXAMPLES, function(example): string
	return example.name
end)

local ROTATION_ORDER = { 0, 45, 90, 180 }

local ROTATION_HEADERS = Dash.map(ROTATION_ORDER, function(value): string
	return tostring(value)
end)

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local CONTENT_SIZE_HEADERS = Dash.map(CONTENT_SIZE_ORDER, function(value): string
	return value
end)

local VARIANT_HEADERS = Dash.map(VARIANT_ORDER, function(value): string
	return value
end)

local ROTATION_ICON = IconName.ChevronSmallRight
local ROTATION_ICON_SIZE: IconSize = IconSize.Medium

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

local function RotatableIcon(props: {
	name: string,
	variant: IconVariant?,
	size: IconSize,
	rotation: number,
}): React.ReactNode
	local frameSize = useIconSize(props.size, isBuilderIcon(props.name))

	return React.createElement(View, {
		Size = frameSize,
	}, {
		Icon = React.createElement(Icon, {
			name = props.name,
			variant = props.variant,
			size = props.size,
			Rotation = props.rotation,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		name: string,
		variant: IconVariant,
		size: IconSize,
		Rotation: number,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = "row align-y-center gap-medium auto-xy padding-y-large bg-surface-0",
	}, {
		Icon = React.createElement(RotatableIcon, {
			name = controls.name,
			variant = if isBuilderOrMigratedIcon(controls.name) then controls.variant else nil,
			size = controls.size,
			rotation = controls.Rotation,
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
						return React.createElement(Icon, {
							name = DEFAULT_NAME,
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
							return React.createElement(Icon, {
								name = DEFAULT_NAME,
								size = size,
							})
						end),
					},
				},
			}),
		}),
	})
end

local function RotationStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col auto-xy padding-y-large bg-surface-0",
	}, {
		Matrix = React.createElement(MatrixGrid, {
			showLabelColumn = false,
			columnHeaders = ROTATION_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			headerTextAlign = "left",
			cellAlign = "left",
			rows = {
				{
					cells = Dash.map(ROTATION_ORDER, function(rotation)
						return React.createElement(RotatableIcon, {
							name = ROTATION_ICON,
							size = ROTATION_ICON_SIZE,
							rotation = rotation,
						})
					end),
				},
			},
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		IconVariations = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Icon variations",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = ICON_TYPE_LABEL_COLUMN_WIDTH,
				columnHeaders = CONTENT_SIZE_HEADERS,
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rowGap = "xxlarge",
				rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
					return Dash.map(CONTENT_SIZE_ORDER, function(size)
						return React.createElement(Icon, {
							name = iconExample.name,
							size = size,
						})
					end)
				end),
			}),
		}),
	})
end

return {
	summary = "Icon renders a Builder Icon or a legacy image at a standard IconSize.",
	stories = {
		{ name = "Playground", story = PlaygroundStory :: unknown },
		{ name = "Variants", story = VariantsStory },
		{ name = "Sizing", story = SizingStory },
		{ name = "Rotation", story = RotationStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		name = PLAYGROUND_NAME_OPTIONS,
		variant = VARIANT_ORDER,
		size = PLAYGROUND_SIZE_OPTIONS,
		Rotation = 0,
	},
}
