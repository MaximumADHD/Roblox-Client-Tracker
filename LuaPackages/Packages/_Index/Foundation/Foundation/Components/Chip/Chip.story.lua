local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Accessory = require(Foundation.Components.Chip.Accessory)
local Chip = require(Foundation.Components.Chip)
local ChipGroup = require(Foundation.Components.ChipGroup)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local ChipGroupVariant = require(Foundation.Enums.ChipGroupVariant)
local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize
local ChipVariant = require(Foundation.Enums.ChipVariant)
type ChipVariant = ChipVariant.ChipVariant

type Accessory = Accessory.Accessory
type ChipGroupItem = ChipGroup.ChipGroupItem
type ChipGroupSize = ChipGroup.ChipGroupSize

local IconName = BuilderIcons.Icon

local matrixLabel = MatrixGridShared.matrixLabel
local matrixInfoLabel = MatrixGridShared.matrixInfoLabel
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local MatrixSection = StorySection.MatrixSection

local STORY_FRAME_TAG = "padding-y-large bg-surface-0"

local SIZE_ORDER: { ChipSize } = {
	ChipSize.Small,
	ChipSize.Medium,
	ChipSize.Large,
}

local VARIANT_ORDER: { ChipVariant } = {
	ChipVariant.Standard,
	ChipVariant.Utility,
}

-- ChipGroup accepts only the two sizes Chip and ChipGroup share.
local PAIRED_SIZE_ORDER: { ChipSize } = {
	ChipSize.Small,
	ChipSize.Medium,
}

local TEXT = "Label"
local LONG_TEXT =
	"This is a much longer chip label than any of these parents can fit, so the text truncates at whatever width it is given"

local LEADING_ICON = IconName.Robux
local TRAILING_ICON = IconName.ChevronSmallDown

local SQUARE_ACCESSORY: Accessory = {
	iconName = IconName.X,
}

local CIRCULAR_ACCESSORY: Accessory = {
	iconName = IconName.X,
	isCircular = true,
}

local SINGLE_AVATAR_ACCESSORY: Accessory = {
	type = "AvatarGroup",
	props = {
		avatars = { 24813339 },
	},
}

local AVATAR_ACCESSORY: Accessory = {
	type = "AvatarGroup",
	props = {
		avatars = { 24813339, 24813338, 24813337 },
		type = AvatarGroupType.Stacked,
		max = 2,
	},
}

local LEADING_CONTROL_OPTIONS = StoryIcons.buildIconControlOptions({ additional = { LEADING_ICON } })
local TRAILING_CONTROL_OPTIONS = StoryIcons.buildIconControlOptions({ additional = { TRAILING_ICON } })

local LABEL_COLUMN_WIDTH = 170
local CELL_COLUMN_WIDTH = 150
local PAIRED_GROUP_WIDTH = 320
local TRUNCATION_SCALES = { 1, 0.25 }
local TRUNCATION_FRAME_TAG = "padding-medium radius-medium bg-surface-100"

type AccessoryFixture = {
	label: string,
	leading: (string | Accessory)?,
	trailing: (string | Accessory)?,
}

local ACCESSORY_ORDER: { AccessoryFixture } = {
	{ label = "leading", leading = LEADING_ICON },
	{ label = "trailing", trailing = TRAILING_ICON },
	{ label = "leading + trailing", leading = LEADING_ICON, trailing = TRAILING_ICON },
}

local ACCESSORY_HEADERS = Dash.map(ACCESSORY_ORDER, function(fixture): string
	return fixture.label
end)

local SIZE_HEADERS = MatrixGridShared.enumHeaders(SIZE_ORDER)

local function noop() end

local function chipsBySize(leading: string | Accessory): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size)
		return React.createElement(Chip, {
			text = TEXT,
			leading = leading,
			size = size,
			onActivated = noop,
		})
	end)
end

type PlaygroundControls = {
	text: string,
	leading: string,
	trailing: string,
	size: ChipSize,
	variant: ChipVariant,
	isChecked: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Chip = React.createElement(Chip, {
			text = controls.text,
			leading = StoryIcons.parseIconControl(controls.leading),
			trailing = StoryIcons.parseIconControl(controls.trailing),
			size = controls.size,
			variant = controls.variant,
			isChecked = controls.isChecked,
			isDisabled = controls.isDisabled,
			onActivated = noop,
		}),
	})
end

local function VariantsStory()
	return React.createElement(
		View,
		{
			tag = `row align-y-top gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = variant,
			}, {
				Chip = React.createElement(Chip, {
					text = TEXT,
					variant = variant,
					onActivated = noop,
				}),
			})
		end)
	)
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col auto-xy {STORY_FRAME_TAG}`,
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
					Chip = React.createElement(Chip, {
						text = TEXT,
						size = size,
						onActivated = noop,
					}),
				})
			end)
		),
	})
end

type StateFixture = {
	header: string,
	isChecked: boolean,
	isDisabled: boolean?,
}

local STATE_FIXTURES: { StateFixture } = {
	{ header = "Default", isChecked = false },
	{ header = "isChecked = true", isChecked = true },
	{ header = "isDisabled = true", isChecked = false, isDisabled = true },
	{ header = "isDisabled + isChecked", isChecked = true, isDisabled = true },
}

local STATE_HEADERS = Dash.map(STATE_FIXTURES, function(fixture): string
	return fixture.header
end)

local function stateRows(): { MatrixGridRow }
	return Dash.map(VARIANT_ORDER, function(variant): MatrixGridRow
		return {
			label = matrixLabel(variant),
			cells = Dash.map(STATE_FIXTURES, function(fixture)
				return React.createElement(Chip, {
					text = TEXT,
					variant = variant,
					isChecked = fixture.isChecked,
					isDisabled = fixture.isDisabled,
					onActivated = noop,
				})
			end),
		}
	end)
end

local function StatesStory()
	return React.createElement(View, {
		tag = `col auto-xy {STORY_FRAME_TAG}`,
	}, {
		Selection = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			columnHeaders = STATE_HEADERS,
			rows = stateRows(),
		}),
	})
end

local function accessoryPositionRows(): { MatrixGridRow }
	return Dash.map(SIZE_ORDER, function(size): MatrixGridRow
		return {
			label = matrixLabel(size),
			cells = Dash.map(ACCESSORY_ORDER, function(fixture)
				return React.createElement(Chip, {
					text = TEXT,
					leading = fixture.leading,
					trailing = fixture.trailing,
					size = size,
					onActivated = noop,
				})
			end),
		}
	end)
end

local function iconTypeAndSizeRows(): { MatrixGridRow }
	return StoryIcons.buildIconTypeMatrixRows(function(iconExample)
		return chipsBySize(iconExample.name)
	end)
end

type CircularFixture = { label: string, accessory: Accessory }

local CIRCULAR_ORDER: { CircularFixture } = {
	{ label = "isCircular = false", accessory = SQUARE_ACCESSORY },
	{ label = "isCircular = true", accessory = CIRCULAR_ACCESSORY },
}

local function circularSizingCells(): { React.ReactNode }
	return Dash.map(CIRCULAR_ORDER, function(fixture, index)
		return React.createElement(LabeledCell, {
			LayoutOrder = index,
			label = fixture.label,
		}, {
			Chip = React.createElement(Chip, {
				text = TEXT,
				leading = fixture.accessory,
				onActivated = noop,
			}),
		})
	end)
end

type AvatarFixture = { title: string, subtitle: string, accessory: Accessory }

local AVATAR_ORDER: { AvatarFixture } = {
	{ title = "Single avatar", subtitle = "avatars = { userId }", accessory = SINGLE_AVATAR_ACCESSORY },
	{ title = "AvatarGroup", subtitle = "avatars = { … }, max = 2", accessory = AVATAR_ACCESSORY },
}

local function avatarTypeAndSizeRows(): { MatrixGridRow }
	return Dash.map(AVATAR_ORDER, function(fixture): MatrixGridRow
		return {
			label = matrixInfoLabel(fixture.title, fixture.subtitle),
			cells = chipsBySize(fixture.accessory),
		}
	end)
end

local function TruncationExample(props: {
	LayoutOrder: number,
	scale: number,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = `parent width = {math.round(props.scale * 100)}%`,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Frame = React.createElement(View, {
			tag = `col auto-y {TRUNCATION_FRAME_TAG}`,
			Size = UDim2.fromScale(props.scale, 0),
			LayoutOrder = 2,
		}, {
			Chip = React.createElement(Chip, {
				LayoutOrder = 1,
				text = LONG_TEXT,
				trailing = TRAILING_ICON,
				onActivated = noop,
			}),
		}),
	})
end

local function truncationExamples(): { React.ReactNode }
	return Dash.map(TRUNCATION_SCALES, function(scale, index)
		return React.createElement(TruncationExample, {
			LayoutOrder = index,
			scale = scale,
		})
	end)
end

local function ContentStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge size-full-0 auto-y {STORY_FRAME_TAG}`,
	}, {
		Accessories = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Accessory by position",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			columnHeaders = ACCESSORY_HEADERS,
			rows = accessoryPositionRows(),
		}),
		IconByTypeAndSize = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Icon by type and size",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			rows = iconTypeAndSizeRows(),
		}),
		CircularSizing = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Icon by circular sizing",
		}, circularSizingCells()),
		IconOnly = React.createElement(
			Section,
			{
				LayoutOrder = 4,
				name = "Icon-only by size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Chip = React.createElement(Chip, {
						leading = LEADING_ICON,
						size = size,
						onActivated = noop,
					}),
				})
			end)
		),
		AvatarByTypeAndSize = React.createElement(MatrixSection, {
			LayoutOrder = 5,
			name = "Avatar by type and size",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			columnHeaders = SIZE_HEADERS,
			rows = avatarTypeAndSizeRows(),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 6,
			name = "Truncation",
			contentTag = "col gap-large size-full-0 auto-y",
		}, truncationExamples()),
	})
end

local PAIRED_CHIPS: { ChipGroupItem } = {
	{ text = "Chip 1", onActivated = noop },
	{ text = "Chip 2", onActivated = noop },
	{ text = "Chip 3", onActivated = noop },
}

local function InContextStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Pairing = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "ChipGroup",
				contentTag = "col gap-large auto-xy",
			},
			Dash.map(PAIRED_SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Pair = React.createElement(View, {
						tag = "row align-y-center gap-xlarge auto-xy",
					}, {
						Chip = React.createElement(Chip, {
							LayoutOrder = 1,
							text = "Chip 1",
							size = size,
							onActivated = noop,
						}),
						GroupFrame = React.createElement(View, {
							LayoutOrder = 2,
							tag = "size-full-0 auto-y",
							Size = UDim2.fromOffset(PAIRED_GROUP_WIDTH, 0),
						}, {
							Group = React.createElement(ChipGroup, {
								chips = PAIRED_CHIPS,
								size = size :: ChipGroupSize,
								variant = ChipGroupVariant.Wrap,
							}),
						}),
					}),
				})
			end)
		),
	})
end

return {
	summary = "Chip is a compact, pressable filter or selection control with optional leading and trailing accessories.",
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
			name = "States",
			story = StatesStory,
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
		text = TEXT,
		leading = LEADING_CONTROL_OPTIONS,
		trailing = TRAILING_CONTROL_OPTIONS,
		size = SIZE_ORDER,
		variant = VARIANT_ORDER,
		isChecked = false,
		isDisabled = false,
	},
}
