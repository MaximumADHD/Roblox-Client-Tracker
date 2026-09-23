local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local AvatarGroup = require(Foundation.Components.AvatarGroup)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local SurfacePresets = require(Foundation.Utility.Stories.Shared.SurfacePresets)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local AvatarSize = require(Foundation.Enums.AvatarSize)
type AvatarSize = AvatarSize.AvatarSize
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local DEFAULT_USER_ID = 24813339

local SIZE_ORDER: { AvatarSize } = {
	AvatarSize.Small,
	AvatarSize.Medium,
	AvatarSize.Large,
	AvatarSize.XLarge,
	AvatarSize.Pictogram,
}

local PLAYGROUND_SIZE_OPTIONS: { AvatarSize } = {
	AvatarSize.Medium,
	AvatarSize.Small,
	AvatarSize.Large,
	AvatarSize.XLarge,
	AvatarSize.Pictogram,
}

local matrixLabel = MatrixGridShared.matrixLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local SURFACE_PRESET_ORDER = SurfacePresets.SURFACE_PRESET_ORDER
local resolveSurfacePreset = SurfacePresets.resolveSurfacePreset

local USER_PRESENCE_ORDER: { UserPresence } = {
	UserPresence.None,
	UserPresence.Active,
	UserPresence.Away,
	UserPresence.InExperience,
}

local CONTENT_PRESENCE_ORDER: { UserPresence } = {
	UserPresence.Active,
	UserPresence.Away,
	UserPresence.InExperience,
}

local PRESENCE_CELL_COLUMN_WIDTH = 96
local PRESENCE_LABEL_COLUMN_WIDTH = 100
local STYLE_CELL_COLUMN_WIDTH = 150
local STYLE_LABEL_COLUMN_WIDTH = 170
local IN_CONTEXT_SIZE_ORDER: { InputSize } = {
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}
local IN_CONTEXT_AVATARS = { DEFAULT_USER_ID, 24813338 }
local IN_CONTEXT_CELL_COLUMN_WIDTH = 170
local IN_CONTEXT_LABEL_COLUMN_WIDTH = 90

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local function StoryAvatar(props: {
	size: AvatarSize?,
	userPresence: UserPresence?,
	backgroundStyle: Types.ColorStyle?,
	backplateStyle: Types.ColorStyle?,
	includeProfileFrame: boolean?,
})
	return React.createElement(Avatar, {
		userId = DEFAULT_USER_ID,
		size = props.size,
		userPresence = props.userPresence,
		backgroundStyle = props.backgroundStyle,
		backplateStyle = props.backplateStyle,
		includeProfileFrame = props.includeProfileFrame,
	})
end

local function PlaygroundStory(props: {
	controls: {
		userId: number,
		size: AvatarSize,
		userPresence: UserPresence,
		backgroundPreset: string,
		backplatePreset: string,
		includeProfileFrame: boolean?,
	},
})
	local tokens = useTokens()
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Avatar = React.createElement(Avatar, {
			userId = controls.userId,
			size = controls.size,
			userPresence = controls.userPresence,
			backgroundStyle = resolveSurfacePreset(tokens, controls.backgroundPreset),
			backplateStyle = resolveSurfacePreset(tokens, controls.backplatePreset),
			includeProfileFrame = controls.includeProfileFrame,
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
					Avatar = React.createElement(StoryAvatar, {
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
		Presence = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Presence",
			showLabelColumn = true,
			labelColumnWidth = PRESENCE_LABEL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = PRESENCE_CELL_COLUMN_WIDTH,
			rows = Dash.map(CONTENT_PRESENCE_ORDER, function(userPresence): MatrixGridRow
				return {
					label = matrixLabel(userPresence),
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(StoryAvatar, {
							size = size,
							userPresence = userPresence,
						})
					end),
				}
			end),
		}),
		Fills = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Background and backplate",
			showLabelColumn = true,
			labelColumnWidth = STYLE_LABEL_COLUMN_WIDTH,
			columnHeaders = { "Background: nil", "Background: Blue_500" },
			cellColumnWidth = STYLE_CELL_COLUMN_WIDTH,
			rows = {
				{
					label = matrixLabel("Backplate: nil"),
					cells = {
						React.createElement(StoryAvatar, {}),
						React.createElement(StoryAvatar, {
							backgroundStyle = blue,
						}),
					},
				},
				{
					label = matrixLabel("Backplate: Magenta_500"),
					cells = {
						React.createElement(StoryAvatar, {
							backplateStyle = magenta,
						}),
						React.createElement(StoryAvatar, {
							backgroundStyle = blue,
							backplateStyle = magenta,
						}),
					},
				},
				{
					label = matrixLabel("InExperience"),
					cells = {
						React.createElement(StoryAvatar, {
							userPresence = UserPresence.InExperience,
							backplateStyle = magenta,
						}),
						React.createElement(StoryAvatar, {
							userPresence = UserPresence.InExperience,
							backgroundStyle = blue,
							backplateStyle = magenta,
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
		ProfileFrame = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Profile frame",
		}, {
			Off = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "includeProfileFrame = false",
			}, {
				Avatar = React.createElement(StoryAvatar, {
					includeProfileFrame = false,
				}),
			}),
			On = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "includeProfileFrame = true",
			}, {
				Avatar = React.createElement(StoryAvatar, {
					includeProfileFrame = true,
				}),
			}),
		}),
	})
end

local function InContextStory()
	local tokens = useTokens()

	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		IconSize = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "In AvatarGroup",
			showLabelColumn = true,
			labelColumnWidth = IN_CONTEXT_LABEL_COLUMN_WIDTH,
			columnHeaders = { "Avatar", "AvatarGroup" },
			cellColumnWidth = IN_CONTEXT_CELL_COLUMN_WIDTH,
			rows = Dash.map(IN_CONTEXT_SIZE_ORDER, function(size): MatrixGridRow
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Avatar, {
							userId = DEFAULT_USER_ID,
							size = size,
							backgroundStyle = tokens.Color.Shift.Shift_300,
						}),
						React.createElement(AvatarGroup, {
							avatars = IN_CONTEXT_AVATARS,
							size = size,
						}),
					},
				}
			end),
		}),
	})
end

local controls: { [string]: unknown } = Dash.join({
	userId = DEFAULT_USER_ID,
	size = PLAYGROUND_SIZE_OPTIONS,
	userPresence = USER_PRESENCE_ORDER,
	backgroundPreset = SURFACE_PRESET_ORDER,
	backplatePreset = SURFACE_PRESET_ORDER,
}, { includeProfileFrame = false })

return {
	summary = "Avatar displays a user's headshot with an optional presence indicator.",
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
			summary = "AvatarGroup is the group that renders Avatar; AvatarIcon and AvatarIconGroup are a separate pair.",
			story = InContextStory,
		},
	},
	controls = controls,
}
