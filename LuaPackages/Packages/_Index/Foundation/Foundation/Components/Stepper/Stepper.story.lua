local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local Stepper = require(Foundation.Components.Stepper)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon

type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
type StepperSize = typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium)
type ItemId = Types.ItemId
type Step = Stepper.Step

local SIZE_ORDER: { StepperSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local FILL_BEHAVIOR_ORDER: { FillBehavior } = {
	FillBehavior.Fill,
	FillBehavior.Fit,
}

local PLAYGROUND_SIZE_OPTIONS: { StepperSize } = {
	InputSize.Medium,
	InputSize.XSmall,
	InputSize.Small,
}

local STEPPER_WIDTH = 460
local NARROW_STEPPER_WIDTH = 600
local COMPACT_STEPPER_WIDTH = 240
local OVERFLOW_CONTAINER_WIDTH = 500

local STEP_POOL_SIZE = 5

local STEP_POOL: { Step } = {}
for index = 1, STEP_POOL_SIZE do
	table.insert(STEP_POOL, { id = `step-{index}`, label = `Step {index}`, description = "Description" })
end

local LONG_LABEL_STEPS: { Step } = {}
for index = 1, 4 do
	table.insert(LONG_LABEL_STEPS, {
		id = `long-step-{index}`,
		label = `Step {index} with a title far wider than the step`,
		description = "Description that also runs wider than the step",
	})
end

local function takeSteps(count: number): { Step }
	local steps: { Step } = {}
	for index = 1, math.clamp(count, 1, #STEP_POOL) do
		table.insert(steps, STEP_POOL[index])
	end
	return steps
end

local function withoutDescriptions(steps: { Step }): { Step }
	return Dash.map(steps, function(step: Step): Step
		return { id = step.id, label = step.label }
	end)
end

local BASE_STEPS = takeSteps(4)
local MINIMAL_STEPS = takeSteps(2)
local OVERFLOW_STEPS = takeSteps(#STEP_POOL)
local SINGLE_STEP = takeSteps(1)

local DEFAULT_ACTIVE_STEP_ID: ItemId = BASE_STEPS[2].id

local THREE_STEPS = takeSteps(3)

local PLAYGROUND_STEP_ID_OPTIONS: { ItemId } = {
	THREE_STEPS[1].id,
	THREE_STEPS[2].id,
	THREE_STEPS[3].id,
}

local MIXED_DESCRIPTION_STEPS: { Step } = Dash.map(MINIMAL_STEPS, function(step: Step, index: number): Step
	if index % 2 == 0 then
		return { id = step.id, label = step.label }
	end
	return step
end)

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
			tag = props.contentTag or "col gap-large align-x-left auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

-- Stepper's scroll container anchors its scrims to the nearest clipping ancestor, falling back to
-- the whole page, and Stepper's own root opts out with `no-clip`. Without this wrapper, overflowing
-- steps paint across the page.
local function ClippedStepper(props: {
	LayoutOrder: number?,
	steps: { Step }?,
	activeStepId: ItemId?,
	size: StepperSize?,
	fillBehavior: FillBehavior?,
})
	return React.createElement(View, {
		tag = "size-full-0 auto-y",
		ClipsDescendants = true,
		LayoutOrder = props.LayoutOrder,
	}, {
		Stepper = React.createElement(Stepper, {
			steps = props.steps or BASE_STEPS,
			activeStepId = props.activeStepId or DEFAULT_ACTIVE_STEP_ID,
			size = props.size,
			fillBehavior = props.fillBehavior,
		}),
	})
end

-- hasParentSurface paints the frame so the width the stepper lays itself out against is visible.
local function StepperFrame(props: {
	LayoutOrder: number?,
	steps: { Step }?,
	activeStepId: ItemId?,
	size: StepperSize?,
	fillBehavior: FillBehavior?,
	hasParentSurface: boolean?,
	width: number?,
})
	return React.createElement(View, {
		tag = if props.hasParentSurface
			then "size-full-0 auto-y padding-large radius-medium bg-surface-100"
			else "size-full-0 auto-y",
		Size = UDim2.fromOffset(props.width or STEPPER_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		Clip = React.createElement(ClippedStepper, {
			steps = props.steps,
			activeStepId = props.activeStepId,
			size = props.size,
			fillBehavior = props.fillBehavior,
		}),
	})
end

local function LabeledStepper(props: {
	label: string,
	LayoutOrder: number,
	steps: { Step }?,
	activeStepId: ItemId?,
	size: StepperSize?,
	fillBehavior: FillBehavior?,
	hasParentSurface: boolean?,
	width: number?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Frame = React.createElement(StepperFrame, {
			LayoutOrder = 2,
			steps = props.steps,
			activeStepId = props.activeStepId,
			size = props.size,
			fillBehavior = props.fillBehavior,
			hasParentSurface = props.hasParentSurface,
			width = props.width,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		activeStepId: ItemId,
		size: StepperSize,
		fillBehavior: FillBehavior,
		hasDescriptions: boolean,
	},
}): React.ReactNode
	local controls = props.controls
	local steps = if controls.hasDescriptions then THREE_STEPS else withoutDescriptions(THREE_STEPS)

	-- The storybook plugin remembers control values, so a stale id can outlive the step it named.
	local isActiveStepPresent = Dash.findIndex(steps, function(step)
		return step.id == controls.activeStepId
	end) ~= nil
	local activeStepId = if isActiveStepPresent then controls.activeStepId else PLAYGROUND_STEP_ID_OPTIONS[1]

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Stepper = React.createElement(ClippedStepper, {
			LayoutOrder = 1,
			steps = steps,
			activeStepId = activeStepId,
			size = controls.size,
			fillBehavior = controls.fillBehavior,
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
				contentTag = "row wrap align-y-top gap-xlarge size-full-0 auto-y",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledStepper, {
					label = size,
					LayoutOrder = index,
					steps = SINGLE_STEP,
					activeStepId = SINGLE_STEP[1].id,
					size = size,
					fillBehavior = FillBehavior.Fit,
					width = COMPACT_STEPPER_WIDTH,
				})
			end)
		),
		FillBehaviorSection = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Fill behavior",
			},
			-- Two steps leave enough slack in the frame for Fill to stretch where Fit does not.
			Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior, index)
				return React.createElement(LabeledStepper, {
					label = `fillBehavior = {fillBehavior}`,
					LayoutOrder = index,
					steps = MINIMAL_STEPS,
					activeStepId = MINIMAL_STEPS[2].id,
					fillBehavior = fillBehavior,
					hasParentSurface = true,
				})
			end)
		),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		StepStates = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Step states",
		}, {
			Current = React.createElement(LabeledStepper, {
				LayoutOrder = 1,
				label = "Current — the active step",
				steps = SINGLE_STEP,
				activeStepId = SINGLE_STEP[1].id,
				fillBehavior = FillBehavior.Fit,
			}),
			Complete = React.createElement(LabeledStepper, {
				LayoutOrder = 2,
				label = "Complete — Step 1, with Step 2 active",
				steps = MINIMAL_STEPS,
				activeStepId = MINIMAL_STEPS[2].id,
				fillBehavior = FillBehavior.Fit,
			}),
			Incomplete = React.createElement(LabeledStepper, {
				LayoutOrder = 3,
				label = "Incomplete — Step 2, with Step 1 active",
				steps = MINIMAL_STEPS,
				activeStepId = MINIMAL_STEPS[1].id,
				fillBehavior = FillBehavior.Fit,
			}),
		}),
	})
end

local function ControlledStepperExample(props: {
	LayoutOrder: number,
	steps: { Step },
	fillBehavior: FillBehavior?,
	hasParentSurface: boolean?,
	width: number?,
}): React.ReactNode
	local steps = props.steps
	local activeStepId: ItemId, setActiveStepId = React.useState(steps[1].id :: ItemId)

	local activeStepIndex = Dash.findIndex(steps, function(step)
		return step.id == activeStepId
	end) or 1

	local goToPrevious = React.useCallback(function()
		local previousStep = steps[activeStepIndex - 1]
		if previousStep then
			setActiveStepId(previousStep.id)
		end
	end, { activeStepIndex, steps } :: { unknown })

	local goToNext = React.useCallback(function()
		local nextStep = steps[activeStepIndex + 1]
		if nextStep then
			setActiveStepId(nextStep.id)
		end
	end, { activeStepIndex, steps } :: { unknown })

	return React.createElement(View, {
		tag = "col align-x-left gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Navigation = React.createElement(View, {
			LayoutOrder = 1,
			tag = "row align-y-center gap-small auto-xy",
		}, {
			Previous = React.createElement(IconButton, {
				LayoutOrder = 1,
				icon = IconName.ChevronSmallLeft,
				size = InputSize.Small,
				isDisabled = activeStepIndex <= 1,
				onActivated = goToPrevious,
			}),
			Next = React.createElement(IconButton, {
				LayoutOrder = 2,
				icon = IconName.ChevronSmallRight,
				size = InputSize.Small,
				isDisabled = activeStepIndex >= #steps,
				onActivated = goToNext,
			}),
			Value = React.createElement(Text, {
				LayoutOrder = 3,
				Text = `activeStepId = "{activeStepId}"`,
				tag = "auto-xy text-body-small text-align-x-left content-muted",
			}),
		}),
		Frame = React.createElement(StepperFrame, {
			LayoutOrder = 2,
			steps = steps,
			activeStepId = activeStepId,
			fillBehavior = props.fillBehavior,
			hasParentSurface = props.hasParentSurface,
			width = props.width,
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Stepping = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Stepping through a flow",
		}, {
			Example = React.createElement(ControlledStepperExample, {
				LayoutOrder = 1,
				steps = THREE_STEPS,
			}),
		}),
		Overflow = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Overflow",
		}, {
			-- Fit is required for the steps to outgrow the frame: under Fill they are scale-sized,
			-- which never contributes to the scroll canvas, so the scrims would never engage.
			Example = React.createElement(ControlledStepperExample, {
				LayoutOrder = 1,
				steps = OVERFLOW_STEPS,
				fillBehavior = FillBehavior.Fit,
				hasParentSurface = true,
				width = OVERFLOW_CONTAINER_WIDTH,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-y-large bg-surface-0",
	}, {
		Descriptions = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Descriptions",
		}, {
			LabelOnly = React.createElement(LabeledStepper, {
				LayoutOrder = 1,
				label = "Label only",
				steps = withoutDescriptions(MINIMAL_STEPS),
			}),
			WithDescriptions = React.createElement(LabeledStepper, {
				LayoutOrder = 2,
				label = "Label and description",
				steps = MINIMAL_STEPS,
			}),
			Mixed = React.createElement(LabeledStepper, {
				LayoutOrder = 3,
				label = "Mixed — description on some steps only",
				steps = MIXED_DESCRIPTION_STEPS,
			}),
		}),
		LongText = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Long text",
		}, {
			Fill = React.createElement(LabeledStepper, {
				LayoutOrder = 1,
				label = `fillBehavior = {FillBehavior.Fill}`,
				steps = LONG_LABEL_STEPS,
				activeStepId = LONG_LABEL_STEPS[2].id,
				fillBehavior = FillBehavior.Fill,
				width = NARROW_STEPPER_WIDTH,
			}),
			Fit = React.createElement(LabeledStepper, {
				LayoutOrder = 2,
				label = `fillBehavior = {FillBehavior.Fit}`,
				steps = LONG_LABEL_STEPS,
				activeStepId = LONG_LABEL_STEPS[2].id,
				fillBehavior = FillBehavior.Fit,
				width = NARROW_STEPPER_WIDTH,
			}),
		}),
	})
end

return {
	summary = "Stepper displays a horizontal sequence of steps with a leading indicator, a label, and an optional description. The bottom border highlights the current step and animates between steps.",
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
			name = "States",
			story = StatesStory,
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
		activeStepId = PLAYGROUND_STEP_ID_OPTIONS,
		size = PLAYGROUND_SIZE_OPTIONS,
		fillBehavior = FILL_BEHAVIOR_ORDER,
		hasDescriptions = true,
	},
}
