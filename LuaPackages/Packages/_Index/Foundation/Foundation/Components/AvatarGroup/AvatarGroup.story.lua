local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroup = require(Foundation.Components.AvatarGroup)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local SurfacePresets = require(Foundation.Utility.Stories.Shared.SurfacePresets)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

type AvatarGroupItem = AvatarGroup.AvatarGroupItem

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
	24813333,
	24813337,
	24813336,
	24813335,
	24813334,
	24813332,
	24813331,
}

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local PLAYGROUND_SIZE_OPTIONS: { InputSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Large,
}

local TYPE_ORDER: { AvatarGroupType } = {
	AvatarGroupType.Spread,
	AvatarGroupType.Stacked,
}

local USER_PRESENCE_ORDER: { UserPresence } = {
	UserPresence.Active,
	UserPresence.Away,
	UserPresence.InExperience,
}

local INVERSE_PRESENTATION = {
	isIconSize = false,
	colorNamespace = ColorNamespace.Inverse,
}

local CELL_COLUMN_WIDTH = 150
local LABEL_COLUMN_WIDTH = 90
local PRESENCE_CELL_COLUMN_WIDTH = 140
local AVATAR_COUNT = 2
local TRUNCATION_MAX = 1
local PLUS_ONE_COUNT = TRUNCATION_MAX + 1
local PLUS_NINETY_NINE_COUNT = TRUNCATION_MAX + 99
local MAX_SWEEP_COUNT = 3
local MAX_ORDER = { 1, 2, 3 }

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)
local PRESENCE_HEADERS = Dash.map(USER_PRESENCE_ORDER, function(value): string
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

local function buildAvatarsWithPresence(presence: UserPresence): { AvatarGroupItem }
	local avatars: { AvatarGroupItem } = {}
	for _, userId in buildAvatars(AVATAR_COUNT) do
		table.insert(avatars, {
			userId = userId,
			userPresence = presence,
		})
	end
	return avatars
end

local GROUP_AVATARS = buildAvatars(AVATAR_COUNT)
local PLUS_NINETY_NINE_AVATARS = buildAvatars(PLUS_NINETY_NINE_COUNT)
local MAX_SWEEP_AVATARS = buildAvatars(MAX_SWEEP_COUNT)

local OVERFLOW_FIXTURES = {
	{ label = "+1", avatars = buildAvatars(PLUS_ONE_COUNT) },
	{ label = "+99", avatars = PLUS_NINETY_NINE_AVATARS },
}

local function StackedOverflowGroup(props: {
	size: InputSize?,
	backplateStyle: Types.ColorStyle?,
})
	return React.createElement(AvatarGroup, {
		avatars = PLUS_NINETY_NINE_AVATARS,
		type = AvatarGroupType.Stacked,
		max = TRUNCATION_MAX,
		size = props.size,
		backplateStyle = props.backplateStyle,
	})
end

local function PlaygroundStory(props: {
	controls: {
		type: AvatarGroupType,
		size: InputSize,
		showOverflow: boolean,
		backplatePreset: string,
	},
})
	local tokens = useTokens()
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		AvatarGroup = React.createElement(AvatarGroup, {
			avatars = if controls.showOverflow then PLUS_NINETY_NINE_AVATARS else GROUP_AVATARS,
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
					Group = React.createElement(AvatarGroup, {
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
						return React.createElement(AvatarGroup, {
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
			name = "Overflow count",
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = Dash.map(OVERFLOW_FIXTURES, function(fixture): MatrixGridRow
				return {
					label = matrixLabel(fixture.label),
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(AvatarGroup, {
							avatars = fixture.avatars,
							type = AvatarGroupType.Stacked,
							size = size,
							max = TRUNCATION_MAX,
						})
					end),
				}
			end),
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
						return React.createElement(AvatarGroup, {
							avatars = MAX_SWEEP_AVATARS,
							type = AvatarGroupType.Stacked,
							max = max,
						})
					end),
				},
			} :: { MatrixGridRow },
		}),
		Presence = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "Presence",
			showLabelColumn = true,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = PRESENCE_HEADERS,
			cellColumnWidth = PRESENCE_CELL_COLUMN_WIDTH,
			rows = Dash.map(TYPE_ORDER, function(groupType): MatrixGridRow
				return {
					label = matrixLabel(groupType),
					cells = Dash.map(USER_PRESENCE_ORDER, function(presence)
						return React.createElement(AvatarGroup, {
							avatars = buildAvatarsWithPresence(presence),
							type = groupType,
						})
					end),
				}
			end),
		}),
		Backplate = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Backplate",
		}, {
			Off = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "backplateStyle = nil",
			}, {
				Group = React.createElement(StackedOverflowGroup, {}),
			}),
			On = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "backplateStyle = Magenta_500",
			}, {
				Group = React.createElement(StackedOverflowGroup, {
					backplateStyle = tokens.Color.Extended.Magenta.Magenta_500,
				}),
			}),
		}),
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
			React.createElement(AvatarGroup, {
				avatars = PLUS_NINETY_NINE_AVATARS,
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
		InverseSurface = React.createElement(Section, {
			LayoutOrder = 1,
			name = "On inverse surface",
			contentTag = "col gap-medium align-x-left auto-xy",
		}, {
			Example = React.createElement(InverseSurfaceExample, { LayoutOrder = 1 }),
		}),
	})
end

return {
	summary = "AvatarGroup arranges user avatars in a spread or stacked row, with an optional overflow count.",
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
			summary = "Overflow content color reads colorNamespace from PresentationContext, not from props.",
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
