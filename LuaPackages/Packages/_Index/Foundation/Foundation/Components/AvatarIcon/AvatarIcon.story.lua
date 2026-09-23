local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarIcon = require(Foundation.Components.AvatarIcon)
local AvatarIconGroup = require(Foundation.Components.AvatarIconGroup)
local Chip = require(Foundation.Components.Chip)
local Icon = require(Foundation.Components.Icon)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
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

local DEFAULT_USER_ID = 24813339

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

local STYLE_CELL_COLUMN_WIDTH = 150
local STYLE_LABEL_COLUMN_WIDTH = 170
local SIZE_CELL_COLUMN_WIDTH = 80
local IN_CONTEXT_LABEL_COLUMN_WIDTH = 80
local IN_CONTEXT_GROUP_MAX = 1
local IN_CONTEXT_GROUP_AVATARS = { DEFAULT_USER_ID, 24813338 }
local CHIP_SIZE_ORDER: { ChipSize } = {
	ChipSize.Small,
	ChipSize.Medium,
	ChipSize.Large,
}
local CHIP_CELL_COLUMN_WIDTH = 200
local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local function StoryAvatarIcon(props: {
	size: AvatarIconSize?,
	backgroundStyle: Types.ColorStyle?,
	backplateStyle: Types.ColorStyle?,
})
	return React.createElement(AvatarIcon, {
		userId = DEFAULT_USER_ID,
		size = props.size,
		backgroundStyle = props.backgroundStyle,
		backplateStyle = props.backplateStyle,
	})
end

local function PlaygroundStory(props: {
	controls: {
		userId: number,
		size: AvatarIconSize,
		backgroundPreset: string,
		backplatePreset: string,
	},
})
	local tokens = useTokens()
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		AvatarIcon = React.createElement(AvatarIcon, {
			userId = controls.userId,
			size = controls.size,
			backgroundStyle = resolveSurfacePreset(tokens, controls.backgroundPreset),
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
					AvatarIcon = React.createElement(StoryAvatarIcon, {
						size = size,
					}),
				})
			end)
		),
	})
end

local function ContentStory()
	local tokens = useTokens()
	local blue = tokens.Color.Extended.Blue.Blue_500
	local magenta = tokens.Color.Extended.Magenta.Magenta_500

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Fills = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Background and backplate",
			contentTag = "col gap-xxlarge auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = STYLE_LABEL_COLUMN_WIDTH,
				columnHeaders = { "Background: nil", "Background: Blue_500" },
				cellColumnWidth = STYLE_CELL_COLUMN_WIDTH,
				rows = {
					{
						label = matrixLabel("Backplate: nil"),
						cells = {
							React.createElement(StoryAvatarIcon, {}),
							React.createElement(StoryAvatarIcon, {
								backgroundStyle = blue,
							}),
						},
					},
					{
						label = matrixLabel("Backplate: Magenta_500"),
						cells = {
							React.createElement(StoryAvatarIcon, {
								backplateStyle = magenta,
							}),
							React.createElement(StoryAvatarIcon, {
								backgroundStyle = blue,
								backplateStyle = magenta,
							}),
						},
					},
				} :: { MatrixGridRow },
			}),
			Sizes = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 2,
				showLabelColumn = true,
				labelColumnWidth = STYLE_LABEL_COLUMN_WIDTH,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = SIZE_CELL_COLUMN_WIDTH,
				rows = {
					{
						label = matrixLabel("Backplate + Background"),
						cells = Dash.map(SIZE_ORDER, function(size)
							return React.createElement(StoryAvatarIcon, {
								size = size,
								backgroundStyle = blue,
								backplateStyle = magenta,
							})
						end),
					},
				} :: { MatrixGridRow },
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
				max = IN_CONTEXT_GROUP_MAX,
			},
		},
	})
end

local function InContextStory()
	local tokens = useTokens()

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Icon = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Icon",
			showLabelColumn = true,
			labelColumnWidth = IN_CONTEXT_LABEL_COLUMN_WIDTH,
			columnHeaders = { "AvatarIcon", "Icon", "AvatarIconGroup" },
			cellColumnWidths = { 88, 88, 140 },
			rows = Dash.map(SIZE_ORDER, function(size): MatrixGridRow
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(AvatarIcon, {
							userId = DEFAULT_USER_ID,
							size = size,
							backgroundStyle = tokens.Color.Shift.Shift_300,
						}),
						React.createElement(Icon, {
							name = IconName.CircleThreeDotsHorizontal,
							size = size :: IconSize,
							variant = IconVariant.Filled,
						}),
						React.createElement(AvatarIconGroup, {
							avatars = IN_CONTEXT_GROUP_AVATARS,
							size = size,
							max = IN_CONTEXT_GROUP_MAX,
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
				labelColumnWidth = IN_CONTEXT_LABEL_COLUMN_WIDTH,
				columnHeaders = { "AvatarIcon" },
				cellColumnWidth = CHIP_CELL_COLUMN_WIDTH,
				rows = Dash.map(CHIP_SIZE_ORDER, function(size): MatrixGridRow
					return {
						label = matrixLabel(size),
						cells = {
							React.createElement(ChipWithAvatars, {
								size = size,
								avatars = { DEFAULT_USER_ID },
							}),
						},
					}
				end),
			}),
		}),
	})
end

return {
	summary = "AvatarIcon renders a user's headshot at icon size, without presence indicators or presence strokes.",
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
			name = "Content",
			story = ContentStory,
		},
		{
			name = "In context",
			summary = "AvatarIcon is sized to match Icon; AvatarIconGroup is the group that renders those headshots. Chip leading sizes the accessory from ChipSize.",
			story = InContextStory,
		},
	},
	controls = {
		userId = DEFAULT_USER_ID,
		size = PLAYGROUND_SIZE_OPTIONS,
		backgroundPreset = SURFACE_PRESET_ORDER,
		backplatePreset = SURFACE_PRESET_ORDER,
	},
}
