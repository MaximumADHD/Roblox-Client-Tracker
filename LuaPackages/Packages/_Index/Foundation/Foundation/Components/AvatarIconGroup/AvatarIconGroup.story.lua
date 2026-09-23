local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarIconGroup = require(Foundation.Components.AvatarIconGroup)
local Chip = require(Foundation.Components.Chip)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Icon = require(Foundation.Components.Icon)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local SurfacePresets = require(Foundation.Utility.Stories.Shared.SurfacePresets)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType
local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize
local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant

local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local MatrixSection = StorySection.MatrixSection
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local SURFACE_PRESET_ORDER = SurfacePresets.SURFACE_PRESET_ORDER
local resolveSurfacePreset = SurfacePresets.resolveSurfacePreset

local USER_IDS = {
	24813339,
	24813338,
	24813337,
	24813336,
	24813335,
	24813334,
}

local SIZE_ORDER: { AvatarIconSize } = {
	AvatarIconSize.XSmall,
	AvatarIconSize.Small,
	AvatarIconSize.Medium,
	AvatarIconSize.Large,
	AvatarIconSize.XLarge,
}

local PLAYGROUND_SIZE_OPTIONS: { AvatarIconSize } = {
	AvatarIconSize.Medium,
	AvatarIconSize.XSmall,
	AvatarIconSize.Small,
	AvatarIconSize.Large,
	AvatarIconSize.XLarge,
}

local TYPE_ORDER: { AvatarGroupType } = {
	AvatarGroupType.Spread,
	AvatarGroupType.Stacked,
}

local INVERSE_PRESENTATION = {
	isIconSize = false,
	colorNamespace = ColorNamespace.Inverse,
}

local AVATAR_COUNT = 2
local TRUNCATION_MAX = 1
local MAX_SWEEP_COUNT = 3
local MAX_ORDER = { 1, 2, 3 }
local CELL_COLUMN_WIDTH = 120
local LABEL_COLUMN_WIDTH = 80
local CHIP_SIZE_ORDER: { ChipSize } = {
	ChipSize.Small,
	ChipSize.Medium,
	ChipSize.Large,
}
local CHIP_CELL_COLUMN_WIDTH = 200

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)
local MAX_HEADERS = Dash.map(MAX_ORDER, function(max): string
	return `max = {max}`
end)

local function buildAvatars(count: number): { number }
	local avatars = {}
	for index = 1, count do
		table.insert(avatars, USER_IDS[(index - 1) % #USER_IDS + 1])
	end
	return avatars
end

local GROUP_AVATARS = buildAvatars(AVATAR_COUNT)
local MAX_SWEEP_AVATARS = buildAvatars(MAX_SWEEP_COUNT)

local function TruncatedStackedGroup(props: {
	size: AvatarIconSize?,
	backplateStyle: Types.ColorStyle?,
})
	return React.createElement(AvatarIconGroup, {
		avatars = GROUP_AVATARS,
		type = AvatarGroupType.Stacked,
		max = TRUNCATION_MAX,
		size = props.size,
		backplateStyle = props.backplateStyle,
	})
end

local function PlaygroundStory(props: {
	controls: {
		type: AvatarGroupType,
		size: AvatarIconSize,
		showOverflow: boolean,
		backplatePreset: string,
	},
})
	local tokens = useTokens()
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		AvatarIconGroup = React.createElement(AvatarIconGroup, {
			avatars = GROUP_AVATARS,
			type = controls.type,
			size = controls.size,
			max = if controls.showOverflow then TRUNCATION_MAX else nil,
			backplateStyle = resolveSurfacePreset(tokens, controls.backplatePreset),
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Group = React.createElement(AvatarIconGroup, {
						avatars = GROUP_AVATARS,
						size = size,
					}),
				})
			end)
		),
	})
end

local function TypeStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Type = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = Dash.map(TYPE_ORDER, function(groupType): MatrixGridRow
				return {
					label = matrixLabel(groupType),
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(AvatarIconGroup, {
							avatars = GROUP_AVATARS,
							type = groupType,
							size = size,
						})
					end),
				}
			end),
		}),
	})
end

local function ContentStory()
	local tokens = useTokens()

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		OverflowCount = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Overflow",
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					label = matrixLabel(`max = {TRUNCATION_MAX}`),
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(TruncatedStackedGroup, {
							size = size,
						})
					end),
				},
			} :: { MatrixGridRow },
		}),
		VisibleCount = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Visible count",
			showLabelColumn = false,
			columnHeaders = MAX_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(MAX_ORDER, function(max)
						return React.createElement(AvatarIconGroup, {
							avatars = MAX_SWEEP_AVATARS,
							type = AvatarGroupType.Stacked,
							max = max,
						})
					end),
				},
			} :: { MatrixGridRow },
		}),
		Backplate = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Backplate",
		}, {
			Off = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "backplateStyle = nil",
			}, {
				Group = React.createElement(TruncatedStackedGroup, {}),
			}),
			On = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "backplateStyle = Magenta_500",
			}, {
				Group = React.createElement(TruncatedStackedGroup, {
					backplateStyle = tokens.Color.Extended.Magenta.Magenta_500,
				}),
			}),
		}),
	})
end

local function ChipWithAvatars(props: {
	size: ChipSize,
	avatars: { number },
})
	return React.createElement(Chip, {
		text = "Chip",
		size = props.size,
		onActivated = function() end,
		leading = {
			type = "AvatarGroup" :: "AvatarGroup",
			props = {
				avatars = props.avatars,
				type = AvatarGroupType.Stacked,
				max = TRUNCATION_MAX,
			},
		},
	})
end

local function InverseSurfaceExample(props: {
	LayoutOrder: number,
})
	local tokens = useTokens()
	local inverseSurface = tokens.Inverse.Surface.Surface_100

	return React.createElement(View, {
		tag = "row align-y-center auto-xy padding-medium radius-medium",
		backgroundStyle = inverseSurface,
		LayoutOrder = props.LayoutOrder,
	}, {
		Group = React.createElement(
			PresentationContext.Provider,
			{ value = INVERSE_PRESENTATION },
			React.createElement(AvatarIconGroup, {
				avatars = GROUP_AVATARS,
				max = TRUNCATION_MAX,
				backplateStyle = inverseSurface,
			})
		),
	})
end

local function InContextStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Icon = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Icon",
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = { "Icon", "AvatarIconGroup" },
			cellColumnWidths = { 88, 140 },
			rows = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Icon, {
							name = IconName.CircleThreeDotsHorizontal,
							size = size :: IconSize,
							variant = IconVariant.Filled,
						}),
						React.createElement(AvatarIconGroup, {
							avatars = GROUP_AVATARS,
							size = size,
							max = TRUNCATION_MAX,
						}),
					},
				}
			end),
		}),
		Chip = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Chip",
			note = "Chip sets accessory size from ChipSize. XSmall and XLarge have no Chip counterpart.",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = { "AvatarIconGroup" },
				cellColumnWidth = CHIP_CELL_COLUMN_WIDTH,
				rows = Dash.map(CHIP_SIZE_ORDER, function(size): MatrixGridRow
					return {
						label = matrixLabel(size),
						cells = {
							React.createElement(ChipWithAvatars, {
								size = size,
								avatars = GROUP_AVATARS,
							}),
						},
					}
				end),
			}),
		}),
		InverseSurface = React.createElement(Section, {
			LayoutOrder = 3,
			name = "On inverse surface",
			contentTag = "col gap-medium align-x-left auto-xy",
		}, {
			Example = React.createElement(InverseSurfaceExample, { LayoutOrder = 1 }),
		}),
	})
end

return {
	summary = "AvatarIconGroup arranges icon-size headshots in a spread or stacked row, with an optional overflow ellipsis.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Type",
			story = TypeStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = "AvatarIconGroup shares occupancy with Icon. Chip leading sizes the accessory from ChipSize. Overflow content color reads colorNamespace from PresentationContext.",
			story = InContextStory,
		},
	},
	controls = {
		type = TYPE_ORDER,
		size = PLAYGROUND_SIZE_OPTIONS,
		showOverflow = false,
		backplatePreset = SURFACE_PRESET_ORDER,
	},
}
