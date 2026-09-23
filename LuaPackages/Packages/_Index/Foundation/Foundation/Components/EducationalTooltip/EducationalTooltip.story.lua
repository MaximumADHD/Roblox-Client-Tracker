local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local EducationalTooltip = require(Foundation.Components.EducationalTooltip)
local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local OverlayStoryAnchor = require(Foundation.Utility.Stories.Shared.OverlayStoryAnchor)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type ButtonGroupItem = ButtonGroup.ButtonGroupItem
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
type MatrixGridRow = MatrixGridShared.MatrixGridRow
type Steps = { current: number, total: number }

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG
local matrixLabel = MatrixGridShared.matrixLabel
local Anchor = OverlayStoryAnchor.Anchor

local SIDE_ORDER: { PopoverSide } = {
	PopoverSide.Right,
	PopoverSide.Bottom,
	PopoverSide.Left,
	PopoverSide.Top,
}

local ALIGN_ORDER: { PopoverAlign } = {
	PopoverAlign.Start,
	PopoverAlign.Center,
	PopoverAlign.End,
}

local ALIGN_HEADERS = Dash.map(ALIGN_ORDER, function(value): string
	return value
end)

local TITLE = "Title"
local TEXT = "Text"
local LONG_TITLE = "This is a longer title that should truncate at the tooltip max width instead of growing the panel"
local LONG_TEXT =
	"This is a longer body that should wrap within the tooltip max width instead of growing the panel past a few lines."

local STEPS: Steps = { current = 2, total = 5 }

local ACTIONS_NONE = "None"
local ACTIONS_PRIMARY = "Primary"
local ACTIONS_PRIMARY_AND_SECONDARY = "Primary + Secondary"

local ACTIONS_PRESET_ORDER: { string } = {
	ACTIONS_NONE,
	ACTIONS_PRIMARY,
	ACTIONS_PRIMARY_AND_SECONDARY,
}

local TALL_ANCHOR_SIZE = OverlayStoryAnchor.TALL_SIZE
local PLACEMENT_CELL_WIDTH = 96
local PLACEMENT_LABEL_WIDTH = 72
local DISMISS_CELL_WIDTH = 220
local HERO_MEDIA = "rbxassetid://103403748802347"
local MEDIA_HEIGHT = 120

local function noop() end

local PRIMARY_ACTIONS: { ButtonGroupItem } = {
	{ text = "Primary", variant = ButtonVariant.Emphasis, onActivated = noop },
}

local PRIMARY_AND_SECONDARY_ACTIONS: { ButtonGroupItem } = {
	{ text = "Primary", variant = ButtonVariant.Emphasis, onActivated = noop },
	{ text = "Secondary", variant = ButtonVariant.Standard, onActivated = noop },
}

local function resolveActionsPreset(preset: string): { ButtonGroupItem }?
	if preset == ACTIONS_PRIMARY then
		return PRIMARY_ACTIONS
	elseif preset == ACTIONS_PRIMARY_AND_SECONDARY then
		return PRIMARY_AND_SECONDARY_ACTIONS
	end

	return nil
end

local function mediaPlaceholder(): React.ReactNode
	return React.createElement(Image, {
		Image = HERO_MEDIA,
		ScaleType = Enum.ScaleType.Crop,
		tag = "radius-top-medium",
		Size = UDim2.new(1, 0, 0, MEDIA_HEIGHT),
	})
end

type TooltipTargetProps = {
	LayoutOrder: number?,
	title: string?,
	text: string?,
	steps: Steps?,
	hasArrow: boolean?,
	media: React.ReactNode?,
	actions: { ButtonGroupItem }?,
	hasCloseAffordance: boolean?,
	hasDismissAction: boolean?,
	hasPressOutsideDismiss: boolean?,
	side: PopoverSide?,
	align: PopoverAlign?,
	anchorSize: UDim2?,
	anchorLabel: string?,
	onOpenChanged: ((isOpen: boolean, reason: string) -> ())?,
}

-- `isOpen` is caller-owned, so each cell holds its own and starts closed: pressing the anchor is
-- the only way into the panel.
local function EducationalTooltipTarget(props: TooltipTargetProps): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)

	local function setOpen(nextIsOpen: boolean, reason: string)
		setIsOpen(nextIsOpen)
		if props.onOpenChanged then
			props.onOpenChanged(nextIsOpen, reason)
		end
	end

	local dismissActions: { ButtonGroupItem } = {
		{
			text = "Primary",
			variant = ButtonVariant.Emphasis,
			onActivated = function()
				setOpen(false, "Action")
			end,
		},
	}

	return React.createElement(
		EducationalTooltip,
		{
			LayoutOrder = props.LayoutOrder,
			title = props.title or TITLE,
			text = props.text,
			steps = props.steps,
			hasArrow = props.hasArrow,
			media = props.media,
			actions = if props.hasDismissAction then dismissActions else props.actions,
			isOpen = isOpen,
			onClose = if props.hasCloseAffordance
				then function()
					setOpen(false, "Close affordance")
				end
				else nil,
			onPressedOutside = if Flags.FoundationCoachmarkPressedOutside and props.hasPressOutsideDismiss
				then function()
					setOpen(false, "Press outside")
				end
				else nil,
			side = props.side,
			align = props.align,
		},
		React.createElement(Anchor, {
			Size = props.anchorSize,
			label = props.anchorLabel,
			onActivated = function()
				setOpen(not isOpen, "Anchor")
			end,
		})
	)
end

local function DismissExample(props: {
	LayoutOrder: number,
	label: string,
	prompt: string,
	hasCloseAffordance: boolean?,
	hasDismissAction: boolean?,
	hasPressOutsideDismiss: boolean?,
}): React.ReactNode
	local closeReason, setCloseReason = React.useState("")

	return React.createElement(View, {
		tag = "col gap-small auto-y",
		Size = UDim2.fromOffset(DISMISS_CELL_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
		}),
		Target = React.createElement(EducationalTooltipTarget, {
			LayoutOrder = 2,
			title = TITLE,
			text = TEXT,
			hasCloseAffordance = props.hasCloseAffordance,
			hasDismissAction = props.hasDismissAction,
			hasPressOutsideDismiss = props.hasPressOutsideDismiss,
			onOpenChanged = function(isOpen: boolean, reason: string)
				setCloseReason(if isOpen then "" else reason)
			end,
		}),
		Status = React.createElement(Text, {
			LayoutOrder = 3,
			Text = if closeReason == "" then props.prompt else `Closed via: {closeReason}`,
			tag = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default",
		}),
	})
end

type SubpartCase = {
	label: string,
	title: string,
	text: string?,
	steps: Steps?,
	hasMedia: boolean?,
	actions: { ButtonGroupItem }?,
	hasCloseAffordance: boolean?,
}

local SUBPART_ORDER: { SubpartCase } = {
	{ label = "Title", title = TITLE },
	{ label = "Title + text", title = TITLE, text = TEXT },
	{ label = "Text only", title = "", text = TEXT },
	{ label = "Steps", title = TITLE, text = TEXT, steps = STEPS },
	{ label = "Media", title = TITLE, text = TEXT, hasMedia = true },
	{ label = "Primary action", title = TITLE, text = TEXT, actions = PRIMARY_ACTIONS },
	{ label = "Primary + secondary", title = TITLE, text = TEXT, actions = PRIMARY_AND_SECONDARY_ACTIONS },
	{ label = "Close affordance", title = TITLE, text = TEXT, hasCloseAffordance = true },
}

type PlaygroundControls = {
	title: string,
	text: string,
	side: PopoverSide,
	align: PopoverAlign,
	hasSteps: boolean,
	hasMedia: boolean,
	actionsPreset: string,
	hasCloseAffordance: boolean,
	hasArrow: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = OverlayStoryAnchor.PLAYGROUND_TAG,
		Size = OverlayStoryAnchor.PLAYGROUND_FRAME_SIZE,
	}, {
		Target = React.createElement(EducationalTooltipTarget, {
			LayoutOrder = 1,
			title = controls.title,
			text = if controls.text ~= "" then controls.text else nil,
			steps = if controls.hasSteps then STEPS else nil,
			hasArrow = controls.hasArrow,
			media = if controls.hasMedia then mediaPlaceholder() else nil,
			actions = resolveActionsPreset(controls.actionsPreset),
			hasCloseAffordance = controls.hasCloseAffordance,
			side = controls.side,
			align = controls.align,
		}),
	})
end

local function PlacementStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = true,
			labelColumnWidth = PLACEMENT_LABEL_WIDTH,
			columnHeaders = ALIGN_HEADERS,
			cellColumnWidth = PLACEMENT_CELL_WIDTH,
			rows = Dash.map(SIDE_ORDER, function(side): MatrixGridRow
				return {
					label = matrixLabel(side),
					cells = Dash.map(ALIGN_ORDER, function(align)
						return React.createElement(EducationalTooltipTarget, {
							side = side,
							align = align,
							anchorSize = TALL_ANCHOR_SIZE,
						})
					end),
				}
			end),
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		DismissPaths = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Dismiss paths",
			note = "onPressedOutside only reaches the panel behind FoundationCoachmarkPressedOutside; with the flag off an outside press leaves the tooltip open.",
		}, {
			CloseAffordance = React.createElement(DismissExample, {
				LayoutOrder = 1,
				label = "onClose",
				prompt = "Open the tooltip, then press the close affordance.",
				hasCloseAffordance = true,
			}),
			Action = React.createElement(DismissExample, {
				LayoutOrder = 2,
				label = "Action",
				prompt = "Open the tooltip, then press Primary.",
				hasDismissAction = true,
			}),
			PressedOutside = React.createElement(DismissExample, {
				LayoutOrder = 3,
				label = "onPressedOutside",
				prompt = "Open the tooltip, then press anywhere outside the panel.",
				hasPressOutsideDismiss = true,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Subparts = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Subparts",
			},
			Dash.map(SUBPART_ORDER, function(case, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = case.label,
				}, {
					Target = React.createElement(EducationalTooltipTarget, {
						LayoutOrder = 1,
						title = case.title,
						text = case.text,
						steps = case.steps,
						media = if case.hasMedia then mediaPlaceholder() else nil,
						actions = case.actions,
						hasCloseAffordance = case.hasCloseAffordance,
					}),
				})
			end)
		),
		FullComposition = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Full composition",
		}, {
			Target = React.createElement(EducationalTooltipTarget, {
				LayoutOrder = 1,
				title = TITLE,
				text = TEXT,
				steps = STEPS,
				media = mediaPlaceholder(),
				actions = PRIMARY_AND_SECONDARY_ACTIONS,
				hasCloseAffordance = true,
			}),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Truncation",
		}, {
			LongTitle = React.createElement(EducationalTooltipTarget, {
				LayoutOrder = 1,
				title = LONG_TITLE,
				steps = STEPS,
			}),
		}),
		Wrapping = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Wrapping",
		}, {
			LongText = React.createElement(EducationalTooltipTarget, {
				LayoutOrder = 1,
				title = TITLE,
				text = LONG_TEXT,
			}),
		}),
		Arrow = React.createElement(Section, {
			LayoutOrder = 5,
			name = "Arrow",
		}, {
			WithArrow = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "true",
			}, {
				Target = React.createElement(EducationalTooltipTarget, {
					LayoutOrder = 1,
					title = TITLE,
					text = TEXT,
					hasArrow = true,
				}),
			}),
			WithoutArrow = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "false",
			}, {
				Target = React.createElement(EducationalTooltipTarget, {
					LayoutOrder = 1,
					title = TITLE,
					text = TEXT,
					hasArrow = false,
				}),
			}),
		}),
	})
end

return {
	summary = "System-triggered popover with a title, optional media, step indicator, and actions, anchored to the element it introduces.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
		},
		{
			name = "Placement",
			summary = "Rows are side, columns are align. Press a cell's anchor to open it.",
			story = PlacementStory,
		},
		{
			name = "Controlled component",
			summary = "The caller owns isOpen. The anchor toggles it in every cell; each cell reports which path closed the panel.",
			story = ControlledStory,
		},
		{
			name = "Content",
			summary = "Press each anchor to open its panel.",
			story = ContentStory,
		},
	},
	controls = {
		title = TITLE,
		text = TEXT,
		side = SIDE_ORDER,
		align = ALIGN_ORDER,
		hasSteps = false,
		hasMedia = false,
		actionsPreset = ACTIONS_PRESET_ORDER,
		hasCloseAffordance = false,
		hasArrow = true,
	},
}
