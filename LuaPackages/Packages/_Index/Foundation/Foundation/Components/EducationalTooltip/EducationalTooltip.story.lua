local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local EducationalTooltip = require(Foundation.Components.EducationalTooltip)
local Image = require(Foundation.Components.Image)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
type ButtonGroupItem = ButtonGroup.ButtonGroupItem

local SAMPLE_TITLE = "Discover the new feature"
local SAMPLE_TEXT = "A system-triggered contextual surface that highlights new features or guides important tasks."

-- Bottom first so the tooltip opens directly beneath its anchor by default.
local SIDE_OPTIONS: { PopoverSide } = {
	PopoverSide.Bottom,
	PopoverSide.Top,
	PopoverSide.Left,
	PopoverSide.Right,
}

local ALIGN_OPTIONS: { PopoverAlign } = {
	PopoverAlign.Start,
	PopoverAlign.Center,
	PopoverAlign.End,
}

local function noop() end

local function generateActions(hasSecondaryButton: boolean): { ButtonGroupItem }
	local actions: { ButtonGroupItem } = {
		{
			text = "Got it",
			variant = ButtonVariant.Emphasis,
			onActivated = noop,
		},
	}

	if hasSecondaryButton then
		table.insert(actions, {
			text = "Skip",
			variant = ButtonVariant.Standard,
			onActivated = noop,
		})
	end

	return actions
end

-- An in-experience screenshot stands in for whatever feature the tooltip introduces, so the media
-- slot shows a realistic crop. The top corners are rounded to match the tooltip's own radius.
local SAMPLE_MEDIA = "rbxassetid://88076582911570"
local MEDIA_HEIGHT = 136

local function makeMedia(): React.ReactNode
	return React.createElement(Image, {
		Image = SAMPLE_MEDIA,
		ScaleType = Enum.ScaleType.Crop,
		tag = "radius-top-medium",
		Size = UDim2.new(1, 0, 0, MEDIA_HEIGHT),
	})
end

-- A single open tooltip inside a fixed-height block. The block reserves room for the open popover so
-- stacked showcases do not overlap. `anchorAlign` positions the anchor within the block so the
-- popover has space to open toward its `side`.
type ShowcaseProps = {
	height: number,
	LayoutOrder: number?,
	side: PopoverSide?,
	align: PopoverAlign?,
	anchorAlign: string?,
	anchorText: string?,
	title: string?,
	text: string?,
	steps: { current: number, total: number }?,
	hasClose: boolean?,
	media: React.ReactNode?,
	actions: { ButtonGroupItem }?,
}

local function Showcase(props: ShowcaseProps)
	return React.createElement(
		View,
		{
			tag = `col size-full-0 padding-large {props.anchorAlign or "align-x-left align-y-top"}`,
			Size = UDim2.new(1, 0, 0, props.height),
			LayoutOrder = props.LayoutOrder,
		},
		React.createElement(
			EducationalTooltip,
			{
				isOpen = true,
				side = props.side or PopoverSide.Bottom,
				align = props.align or PopoverAlign.Start,
				title = props.title or SAMPLE_TITLE,
				text = props.text,
				steps = props.steps,
				onClose = if props.hasClose then noop else nil,
				media = props.media,
				actions = props.actions,
			},
			React.createElement(Button, {
				text = props.anchorText or "Anchor",
				size = InputSize.Small,
				variant = ButtonVariant.Standard,
				onActivated = noop,
			})
		)
	)
end

type PlaygroundControls = {
	title: string,
	text: string,
	side: PopoverSide,
	align: PopoverAlign,
	showSteps: boolean,
	hasCloseAffordance: boolean,
	hasActions: boolean,
	hasSecondaryButton: boolean,
	hasMedia: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls
	-- Open state is driven by the anchor and the close affordance, so toggling controls leaves it open.
	local isOpen, setIsOpen = React.useState(true)

	return React.createElement(
		View,
		{
			tag = "col align-x-left align-y-top padding-large",
			Size = UDim2.new(1, 0, 0, 320),
		},
		React.createElement(
			EducationalTooltip,
			{
				title = controls.title,
				text = if controls.text ~= "" then controls.text else nil,
				side = controls.side,
				align = controls.align,
				isOpen = isOpen,
				steps = if controls.showSteps then { current = 2, total = 5 } else nil,
				onClose = if controls.hasCloseAffordance
					then function()
						setIsOpen(false)
					end
					else nil,
				media = if controls.hasMedia then makeMedia() else nil,
				actions = if controls.hasActions then generateActions(controls.hasSecondaryButton) else nil,
			},
			React.createElement(Button, {
				text = if isOpen then "Close tooltip" else "Open tooltip",
				size = InputSize.Medium,
				onActivated = function()
					setIsOpen(function(prev)
						return not prev
					end)
				end,
			})
		)
	)
end

-- Each row demonstrates a different combination of optional content props: title only, body text,
-- step indicator, media, actions, and a dismissible close affordance.
local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, {
		TitleOnly = React.createElement(Showcase, {
			LayoutOrder = 1,
			height = 140,
			title = "Title only",
		}),
		BodyText = React.createElement(Showcase, {
			LayoutOrder = 2,
			height = 220,
			title = "Title + body text",
			text = SAMPLE_TEXT,
		}),
		StepIndicator = React.createElement(Showcase, {
			LayoutOrder = 3,
			height = 240,
			title = "Step indicator",
			text = SAMPLE_TEXT,
			steps = { current = 2, total = 5 },
		}),
		Media = React.createElement(Showcase, {
			LayoutOrder = 4,
			height = 360,
			title = "Media",
			text = SAMPLE_TEXT,
			media = makeMedia(),
		}),
		Actions = React.createElement(Showcase, {
			LayoutOrder = 5,
			height = 240,
			title = "Primary + secondary actions",
			text = SAMPLE_TEXT,
			actions = generateActions(true),
		}),
		CloseAffordance = React.createElement(Showcase, {
			LayoutOrder = 6,
			height = 240,
			title = "Dismissible (close affordance)",
			text = SAMPLE_TEXT,
			hasClose = true,
			actions = generateActions(false),
		}),
	})
end

-- One open tooltip per side, anchored in the center of a tall block so the popover has room to open
-- in any direction without colliding with its neighbors.
local function PlacementStory()
	local children: { [string]: React.ReactNode } = {}

	for index, side in SIDE_OPTIONS do
		children[side] = React.createElement(Showcase, {
			LayoutOrder = index,
			height = 300,
			anchorAlign = "align-x-center align-y-center",
			anchorText = tostring(side),
			side = side :: PopoverSide,
			align = PopoverAlign.Center,
			title = `Side: {side}`,
			text = SAMPLE_TEXT,
			actions = generateActions(false),
		})
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, children)
end

-- The same side (Bottom) with each alignment, so the shift of the popover relative to its anchor is
-- easy to compare.
local function AlignmentStory()
	local children: { [string]: React.ReactNode } = {}

	for index, align in ALIGN_OPTIONS do
		children[align] = React.createElement(Showcase, {
			LayoutOrder = index,
			height = 220,
			anchorAlign = "align-x-center align-y-top",
			anchorText = tostring(align),
			side = PopoverSide.Bottom,
			align = align :: PopoverAlign,
			title = `Align: {align}`,
			text = SAMPLE_TEXT,
		})
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, children)
end

type StepConfig = {
	id: number,
	text: string,
	hasActions: boolean,
	side: PopoverSide,
	align: PopoverAlign,
}

-- Drives isOpen, side, align, steps, and actions from state to build a guided, multi-step flow.
local function MultiStepTutorialStory()
	local step, setStep = React.useState(1)

	local stepConfigs: { StepConfig } = {
		{
			id = 1,
			text = "Step 1: side = Bottom, align = Start, primary action only.",
			hasActions = true,
			side = PopoverSide.Bottom,
			align = PopoverAlign.Start,
		},
		{
			id = 2,
			text = "Step 2: side = Right, align = Center, no actions.",
			hasActions = false,
			side = PopoverSide.Right,
			align = PopoverAlign.Center,
		},
		{
			id = 3,
			text = "Step 3: side = Top, align = End, primary action only.",
			hasActions = true,
			side = PopoverSide.Top,
			align = PopoverAlign.End,
		},
		{
			id = 4,
			text = "Step 4: side = Left, align = Center, no actions.",
			hasActions = false,
			side = PopoverSide.Left,
			align = PopoverAlign.Center,
		},
	}

	local currentConfig: StepConfig = stepConfigs[step]

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y padding-large",
		Size = UDim2.new(1, 0, 0, 360),
	}, {
		Controls = React.createElement(View, {
			tag = "row align-y-center gap-small size-full-0 auto-y",
			LayoutOrder = 1,
		}, {
			PrevButton = React.createElement(Button, {
				text = "Previous",
				variant = ButtonVariant.Standard,
				isDisabled = step == 1,
				onActivated = function()
					setStep(math.max(1, step - 1))
				end,
				LayoutOrder = 1,
			}),
			NextButton = React.createElement(Button, {
				text = "Next",
				variant = ButtonVariant.Standard,
				isDisabled = step == #stepConfigs,
				onActivated = function()
					setStep(math.min(#stepConfigs, step + 1))
				end,
				LayoutOrder = 2,
			}),
			StepText = React.createElement(Text, {
				tag = "auto-xy text-body-medium",
				Text = `Step {step} of {#stepConfigs}`,
				LayoutOrder = 3,
			}),
		}),
		Arena = React.createElement(View, {
			tag = "row align-x-center align-y-center size-full-0",
			Size = UDim2.new(1, 0, 0, 260),
			LayoutOrder = 2,
		}, {
			Tooltip = React.createElement(
				EducationalTooltip,
				{
					id = currentConfig.id,
					title = `Tutorial step {step}`,
					text = currentConfig.text,
					isOpen = true,
					side = currentConfig.side,
					align = currentConfig.align,
					steps = {
						current = step,
						total = #stepConfigs,
					},
					actions = if currentConfig.hasActions
						then {
							{
								text = "Next",
								variant = ButtonVariant.Emphasis,
								onActivated = function()
									setStep(math.min(#stepConfigs, step + 1))
								end,
							},
						}
						else nil,
				},
				React.createElement(Button, {
					id = currentConfig.id,
					text = "Anchor",
					onActivated = noop,
				})
			),
		}),
	})
end

return {
	summary = "System-triggered popover for highlighting features or guiding tasks.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Content",
			summary = "Optional content props: title, body text, step indicator, media, actions, and close affordance.",
			story = ContentStory,
		},
		{
			name = "Placement",
			summary = "The `side` prop positions the popover relative to its anchor.",
			story = PlacementStory,
		},
		{
			name = "Alignment",
			summary = "The `align` prop shifts the popover along the anchor's cross axis.",
			story = AlignmentStory,
		},
		{
			name = "Multi-step tutorial",
			summary = "Drives isOpen, side, align, steps, and actions from state to build a guided flow.",
			story = MultiStepTutorialStory,
		},
	},
	controls = {
		title = SAMPLE_TITLE,
		text = SAMPLE_TEXT,
		side = SIDE_OPTIONS,
		align = ALIGN_OPTIONS,
		showSteps = true,
		hasCloseAffordance = true,
		hasActions = true,
		hasSecondaryButton = true,
		hasMedia = false,
	},
}
