local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Banner = require(Foundation.Components.Banner)
local BannerSize = require(Foundation.Enums.BannerSize)
local BannerTypes = require(script.Parent.Banner)
local CardDensity = require(Foundation.Enums.CardDensity)
local UserPresence = require(Foundation.Enums.UserPresence)

type UserPresence = UserPresence.UserPresence
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local Section = StorySection.Section
local enumHeaders = MatrixGridShared.enumHeaders
local matrixLabel = MatrixGridShared.matrixLabel

type MatrixGridRow = MatrixGridShared.MatrixGridRow

type BannerDensity = BannerTypes.BannerDensity
type BannerProps = Banner.BannerProps
type BannerThumbnail = BannerTypes.BannerThumbnail
type BannerSize = BannerSize.BannerSize

local IconName = BuilderIcons.Icon

type Controls = {
	size: BannerSize,
	density: BannerDensity,
	title: string,
	description: string,
	hasPrimary: boolean,
	hasSecondary: boolean,
	thumbnailType: string,
	userPresence: UserPresence,
}

local SIZE_ORDER: { BannerSize } = {
	BannerSize.Small,
	BannerSize.Medium,
}

local DENSITY_ORDER: { BannerDensity } = {
	CardDensity.Compact,
	CardDensity.Default,
}

local THUMBNAIL_TYPE_ORDER: { string } = {
	"Avatar",
	"Image",
	"Icon",
	"Slot",
}

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

local THUMBNAIL_SLOT_SIZE = 64

local ACTIONS_PRESET_ORDER: { string } = {
	"no actions",
	"primary",
	"primary + secondary",
}

local ACTIONS_CELL_WIDTH = 320
local ACTIONS_LABEL_WIDTH = 160

local BANNER_WIDTH = 456
local MEDIA_IMAGE = "rbxassetid://103403748802347"
local TITLE = "Title"
local DESCRIPTION = "Description"
local LONG_TITLE = "This is a longer title that runs past the width available to it"
local LONG_DESCRIPTION =
	"This is a longer description that runs past the width available to it, so the copy has to wrap onto more lines than the density allows before it ends in an ellipsis. It keeps going so every size and density hits its line limit."

local SMALL_THUMBNAIL: BannerThumbnail = {
	type = "Image",
	image = MEDIA_IMAGE,
}

local PRIMARY_ACTION = {
	onActivated = function() end,
}

local SECONDARY_ACTION = {
	text = "Secondary",
	onActivated = function() end,
}

local ACTIONS = {
	primary = PRIMARY_ACTION,
	secondary = SECONDARY_ACTION,
}

local SMALL_ACTIONS = {
	primary = PRIMARY_ACTION,
}

local WIDTH_BANNER_PROPS: BannerProps = {
	title = TITLE,
	description = DESCRIPTION,
	actions = {
		primary = PRIMARY_ACTION,
	},
}

local function SlotPlaceholder(props: {
	size: number,
})
	return React.createElement(View, {
		tag = "col align-x-center align-y-center radius-medium bg-shift-300",
		Size = UDim2.fromOffset(props.size, props.size),
	}, {
		Label = React.createElement(Text, {
			Text = "Slot",
			tag = "auto-xy text-caption-small content-muted",
		}),
	})
end

local function makeThumbnail(thumbnailType: string, userPresence: UserPresence?): BannerThumbnail
	if thumbnailType == "Avatar" then
		return {
			type = "Avatar",
			userId = 1,
			userPresence = userPresence,
		}
	elseif thumbnailType == "Icon" then
		return {
			type = "Icon",
			icon = IconName.House,
		}
	elseif thumbnailType == "Slot" then
		return {
			type = "Slot",
			children = React.createElement(SlotPlaceholder, { size = THUMBNAIL_SLOT_SIZE }) :: React.ReactNode,
		}
	end

	return SMALL_THUMBNAIL
end

local function makeActions(preset: string): {
	primary: {
		onActivated: () -> (),
	}?,
	secondary: {
		text: string,
		onActivated: () -> (),
	}?,
}?
	if preset == "primary" then
		return { primary = PRIMARY_ACTION }
	elseif preset == "primary + secondary" then
		return ACTIONS
	end

	return nil
end

local function makeBannerProps(size: BannerSize, density: BannerDensity): BannerProps
	if size == BannerSize.Small then
		return {
			size = size,
			density = density,
			title = TITLE,
			description = DESCRIPTION,
			thumbnail = SMALL_THUMBNAIL,
			actions = SMALL_ACTIONS,
		}
	end

	return {
		size = size,
		density = density,
		title = TITLE,
		description = DESCRIPTION,
		media = MEDIA_IMAGE,
		actions = ACTIONS,
	}
end

local function makePresetBannerProps(size: BannerSize, preset: string): BannerProps
	if size == BannerSize.Small then
		return {
			size = size,
			title = TITLE,
			description = DESCRIPTION,
			thumbnail = SMALL_THUMBNAIL,
			actions = if preset == "no actions" then nil else SMALL_ACTIONS,
		}
	end

	return {
		size = size,
		title = TITLE,
		description = DESCRIPTION,
		media = MEDIA_IMAGE,
		actions = makeActions(preset),
	}
end

local function BannerFrame(props: {
	LayoutOrder: number?,
	width: number?,
	fillParent: boolean?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = if props.fillParent then "size-full-0 auto-y" else "auto-y",
		Size = if props.fillParent then nil else UDim2.fromOffset(props.width or BANNER_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

type BannerCellProps = {
	LayoutOrder: number,
	label: string,
	width: number?,
	fillParent: boolean?,
	bannerProps: BannerProps,
}

local function BannerCell(props: BannerCellProps)
	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
		tag = if props.fillParent then "col align-x-left gap-small size-full-0 auto-y" else nil,
		contentTag = if props.fillParent then "col size-full-0 auto-y" else nil,
	}, {
		Banner = React.createElement(BannerFrame, { width = props.width, fillParent = props.fillParent }, {
			Banner = React.createElement(Banner, props.bannerProps),
		}),
	})
end

local function buildActionsRows(): { MatrixGridRow }
	local rows: { MatrixGridRow } = {}

	for _, preset in ACTIONS_PRESET_ORDER do
		local cells: { React.ReactNode } = {}

		for _, size in SIZE_ORDER do
			cells[#cells + 1] = React.createElement(BannerFrame, { width = ACTIONS_CELL_WIDTH }, {
				Banner = React.createElement(Banner, makePresetBannerProps(size :: BannerSize, preset)),
			})
		end

		rows[#rows + 1] = {
			label = matrixLabel(preset),
			cells = cells,
		}
	end

	return rows
end

local function buildDensityRows(): { MatrixGridRow }
	local rows: { MatrixGridRow } = {}

	for _, density in DENSITY_ORDER do
		local cells: { React.ReactNode } = {}

		for _, size in SIZE_ORDER do
			cells[#cells + 1] = React.createElement(BannerFrame, nil, {
				Banner = React.createElement(Banner, makeBannerProps(size :: BannerSize, density :: BannerDensity)),
			})
		end

		rows[#rows + 1] = {
			label = matrixLabel(density),
			cells = cells,
		}
	end

	return rows
end

local function buildOverflowRows(): { MatrixGridRow }
	local rows: { MatrixGridRow } = {}

	for _, size in SIZE_ORDER do
		local cells: { React.ReactNode } = {}

		for _, density in DENSITY_ORDER do
			local bannerProps: BannerProps
			if size == BannerSize.Small then
				bannerProps = {
					size = BannerSize.Small,
					density = density :: BannerDensity,
					title = LONG_TITLE,
					description = LONG_DESCRIPTION,
					thumbnail = SMALL_THUMBNAIL,
					actions = SMALL_ACTIONS,
				}
			else
				bannerProps = {
					density = density :: BannerDensity,
					title = LONG_TITLE,
					description = LONG_DESCRIPTION,
					media = MEDIA_IMAGE,
					actions = {
						primary = PRIMARY_ACTION,
					},
				}
			end

			cells[#cells + 1] = React.createElement(BannerFrame, { width = BANNER_WIDTH }, {
				Banner = React.createElement(Banner, bannerProps),
			})
		end

		rows[#rows + 1] = {
			label = matrixLabel(size),
			cells = cells,
		}
	end

	return rows
end

local function PlaygroundStory(props: { controls: Controls })
	local controls = props.controls
	local mediumActions = if controls.hasPrimary or controls.hasSecondary
		then {
			primary = if controls.hasPrimary then PRIMARY_ACTION else nil,
			secondary = if controls.hasSecondary then SECONDARY_ACTION else nil,
		}
		else nil
	local smallActions = if controls.hasPrimary then SMALL_ACTIONS else nil

	return React.createElement(View, {
		tag = `align-x-center {StorySection.STORY_PAGE_TAG}`,
	}, {
		Banner = React.createElement(BannerFrame, nil, {
			Banner = if controls.size == BannerSize.Small
				then React.createElement(Banner, {
					size = controls.size,
					density = controls.density,
					title = controls.title,
					description = controls.description,
					thumbnail = makeThumbnail(controls.thumbnailType, controls.userPresence),
					actions = smallActions,
				})
				else React.createElement(Banner, {
					size = controls.size,
					density = controls.density,
					title = controls.title,
					description = controls.description,
					media = MEDIA_IMAGE,
					actions = mediumActions,
				}),
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
			note = "Size picks the layout. Small is a leading-thumbnail row; Medium is the default Card with end media.",
			contentTag = "row gap-large align-y-top auto-xy wrap",
		}, {
			Small = React.createElement(
				BannerCell,
				{
					LayoutOrder = 1,
					label = BannerSize.Small,
					bannerProps = {
						size = BannerSize.Small,
						title = TITLE,
						description = DESCRIPTION,
						thumbnail = SMALL_THUMBNAIL,
						actions = SMALL_ACTIONS,
					},
				} :: BannerCellProps
			),
			Medium = React.createElement(
				BannerCell,
				{
					LayoutOrder = 2,
					label = BannerSize.Medium,
					bannerProps = {
						title = TITLE,
						description = DESCRIPTION,
						media = MEDIA_IMAGE,
						actions = ACTIONS,
					},
				} :: BannerCellProps
			),
		}),
		Density = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Density",
			note = "Density rows modulate each size: padding, corner radius, and header typography change, and on Small the thumbnail box scales too.",
			labelColumnWidth = ACTIONS_LABEL_WIDTH,
			columnHeaders = enumHeaders(SIZE_ORDER),
			cellColumnWidth = BANNER_WIDTH,
			rowAlign = "top",
			rows = buildDensityRows(),
		}),
		Width = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Width",
			note = "Banner has no width prop; it fills the parent. These cells are harness widths.",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Canonical = React.createElement(BannerCell, {
				LayoutOrder = 1,
				label = `{BANNER_WIDTH}px`,
				width = BANNER_WIDTH,
				bannerProps = WIDTH_BANNER_PROPS,
			}),
			Fill = React.createElement(BannerCell, {
				LayoutOrder = 2,
				label = "Unconstrained — fills the parent",
				fillParent = true,
				bannerProps = WIDTH_BANNER_PROPS,
			}),
		}),
	})
end

type Activation = {
	action: string,
	count: number,
}

local function ActivationProbe(props: {
	LayoutOrder: number,
	label: string,
	size: BannerSize,
	hasSecondary: boolean?,
})
	local activation, setActivation = React.useState({ action = "nothing", count = 0 } :: Activation)

	local onPrimaryActivated = React.useCallback(function()
		setActivation(function(previous: Activation): Activation
			return { action = "primary", count = previous.count + 1 }
		end)
	end, {})

	local onSecondaryActivated = React.useCallback(function()
		setActivation(function(previous: Activation): Activation
			return { action = "secondary", count = previous.count + 1 }
		end)
	end, {})

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Content = React.createElement(View, {
			tag = "col gap-small auto-xy",
		}, {
			Banner = React.createElement(BannerFrame, { LayoutOrder = 1 }, {
				Banner = if props.size == BannerSize.Small
					then React.createElement(Banner, {
						size = props.size,
						title = TITLE,
						description = DESCRIPTION,
						thumbnail = SMALL_THUMBNAIL,
						actions = {
							primary = { onActivated = onPrimaryActivated },
						},
					})
					else React.createElement(Banner, {
						size = props.size,
						title = TITLE,
						description = DESCRIPTION,
						media = MEDIA_IMAGE,
						actions = {
							primary = { onActivated = onPrimaryActivated },
							secondary = if props.hasSecondary
								then { text = SECONDARY_ACTION.text, onActivated = onSecondaryActivated }
								else nil,
						},
					}),
			}),
			Status = React.createElement(Text, {
				Text = `fired: {activation.action} ({activation.count})`,
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
		}),
	})
end

local function ControlledStory()
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Activation = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Activation",
			note = "Banner renders nothing of its own when pressed, so each cell reports the callback that fired and how many times.",
		}, {
			MediumPrimary = React.createElement(ActivationProbe, {
				LayoutOrder = 1,
				label = "Medium, primary",
				size = BannerSize.Medium,
			}),
			MediumBoth = React.createElement(ActivationProbe, {
				LayoutOrder = 2,
				label = "Medium, primary + secondary",
				size = BannerSize.Medium,
				hasSecondary = true,
			}),
			Small = React.createElement(ActivationProbe, {
				LayoutOrder = 3,
				label = "Small, primary",
				size = BannerSize.Small,
			}),
		}),
	})
end

local function ContentStory()
	local accessoryCells: { [string]: React.ReactNode } = {}
	for index, thumbnailType in THUMBNAIL_TYPE_ORDER do
		accessoryCells[`Thumbnail-{thumbnailType}`] = React.createElement(BannerCell, {
			LayoutOrder = index,
			label = thumbnailType,
			bannerProps = {
				size = BannerSize.Small,
				title = TITLE,
				description = DESCRIPTION,
				thumbnail = makeThumbnail(thumbnailType),
				actions = SMALL_ACTIONS,
			} :: BannerProps,
		})
	end
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Media = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Media",
			note = "A string is an end image at the default width. { image, width } sets a custom width. Omit media and the trailing image is gone.",
		}, {
			WithImage = React.createElement(BannerCell, {
				LayoutOrder = 1,
				label = `media = "{MEDIA_IMAGE}"`,
				bannerProps = {
					title = TITLE,
					description = DESCRIPTION,
					media = MEDIA_IMAGE,
					actions = ACTIONS,
				} :: BannerProps,
			}),
			CustomWidth = React.createElement(BannerCell, {
				LayoutOrder = 2,
				label = "width = 172",
				bannerProps = {
					title = TITLE,
					description = DESCRIPTION,
					media = {
						image = MEDIA_IMAGE,
						width = 172,
					},
					actions = ACTIONS,
				} :: BannerProps,
			}),
			WithoutImage = React.createElement(BannerCell, {
				LayoutOrder = 3,
				label = "media omitted",
				bannerProps = {
					title = TITLE,
					description = DESCRIPTION,
					actions = ACTIONS,
				} :: BannerProps,
			}),
		}),
		LeadingAccessories = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Leading accessories",
			note = "Small reserves a square leading box, so every thumbnail arm occupies the same footprint and a slot child larger than the box is clipped rather than widening the row.",
		}, accessoryCells),
		Presence = React.createElement(
			Section,
			{
				LayoutOrder = 3,
				name = "Presence",
				note = "userPresence is an Avatar-arm field; None is the default Leading accessories Avatar cell.",
			},
			(function()
				local presenceCells: { [string]: React.ReactNode } = {}
				for index, userPresence in CONTENT_PRESENCE_ORDER do
					presenceCells[userPresence] = React.createElement(BannerCell, {
						LayoutOrder = index,
						label = userPresence,
						bannerProps = {
							size = BannerSize.Small,
							title = TITLE,
							description = DESCRIPTION,
							thumbnail = makeThumbnail("Avatar", userPresence :: UserPresence),
							actions = SMALL_ACTIONS,
						} :: BannerProps,
					})
				end
				return presenceCells
			end)()
		),
		Actions = React.createElement(MatrixSection, {
			LayoutOrder = 4,
			name = "Actions",
			note = "A primary action makes the whole Banner pressable, which Small marks with a trailing chevron and Medium does not mark at all; a secondary action is the only one that renders a button.",
			labelColumnWidth = ACTIONS_LABEL_WIDTH,
			columnHeaders = enumHeaders(SIZE_ORDER),
			cellColumnWidth = ACTIONS_CELL_WIDTH,
			rowAlign = "top",
			rows = buildActionsRows(),
		}),
		Overflow = React.createElement(MatrixSection, {
			LayoutOrder = 5,
			name = "Overflow",
			note = "Medium stops the description at two lines in Compact and three in Default; Small stops at one and two. Leftover copy ellipsizes.",
			labelColumnWidth = ACTIONS_LABEL_WIDTH,
			columnHeaders = enumHeaders(DENSITY_ORDER),
			cellColumnWidth = BANNER_WIDTH,
			rowAlign = "top",
			rows = buildOverflowRows(),
		}),
	})
end

return {
	summary = "Banner presents a message with an optional action on an emphasized Card, in Medium or Small size.",
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
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		size = SIZE_ORDER,
		density = DENSITY_ORDER,
		title = TITLE,
		description = DESCRIPTION,
		hasPrimary = true,
		hasSecondary = true,
		thumbnailType = THUMBNAIL_TYPE_ORDER,
		userPresence = USER_PRESENCE_ORDER,
	},
}
