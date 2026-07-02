local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Coachmark = require(Foundation.Components.Coachmark)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local function generateActions(hasSecondaryButton: boolean)
	local actions: { Types.ActionProps } = {
		{
			text = "Got it",
			onActivated = function()
				print("Primary button clicked")
			end,
			variant = ButtonVariant.Emphasis,
		},
	}

	if hasSecondaryButton then
		table.insert(actions, {
			text = "Skipppp",
			onActivated = function()
				print("Secondary button clicked")
			end,
			variant = ButtonVariant.Standard,
		})
	end

	return actions
end

type StepConfig = {
	id: number,
	text: string,
	hasActions: boolean,
	side: PopoverSide.PopoverSide,
	align: PopoverAlign.PopoverAlign,
}

type StoryProps = {
	controls: {
		title: string,
		text: string,
		side: PopoverSide.PopoverSide,
		align: PopoverAlign.PopoverAlign,
		hasSecondaryButton: boolean,
		hasCloseAffordance: boolean,
		hasActions: boolean,
		isOpen: boolean,
		showSteps: boolean,
	},
}

return {
	summary = "Coachmark",
	stories = {
		{
			name = "Default",
			story = function(props: StoryProps)
				return React.createElement(
					View,
					{
						tag = "row align-x-center align-y-center",
						Size = UDim2.new(1, 0, 0, 300),
					},
					React.createElement(
						Coachmark,
						{
							title = props.controls.title,
							side = props.controls.side,
							align = props.controls.align,
							text = props.controls.text,
							isOpen = props.controls.isOpen,
							onClose = if props.controls.hasCloseAffordance
								then function()
									print("Close affordance clicked")
								end
								else nil,
							steps = if props.controls.showSteps
								then {
									current = 2,
									total = 5,
								}
								else nil,
							actions = if props.controls.hasActions
								then generateActions(props.controls.hasSecondaryButton)
								else nil,
						},
						React.createElement(IconButton, {
							icon = "reactions/heart",
							size = InputSize.Medium,
							onActivated = function()
								print("Icon button clicked")
							end,
						})
					)
				)
			end,
		},
		{
			name = "Multi-Step Tutorial",
			story = function()
				local step, setStep = React.useState(1)

				local stepConfigs: { StepConfig } = {
					{
						id = 1,
						text = "Step 1: Side=Right, Align=Start, anchor with action button",
						hasActions = true,
						side = PopoverSide.Right,
						align = PopoverAlign.Start,
					},
					{
						id = 2,
						text = "Step 2: Side=Left, Align=Start, NO actions",
						hasActions = false,
						side = PopoverSide.Left,
						align = PopoverAlign.Start,
					},
					{
						id = 3,
						text = "Step 3: Side=Top, Align=End, with action button",
						hasActions = true,
						side = PopoverSide.Top,
						align = PopoverAlign.End,
					},
					{
						id = 4,
						text = "Step 4: Side=Top, Align=Start, NO actions",
						hasActions = false,
						side = PopoverSide.Top,
						align = PopoverAlign.Start,
					},
					{
						id = 5,
						text = "Step 5: Side=Bottom, Align=Center, with action button",
						hasActions = false,
						side = PopoverSide.Bottom,
						align = PopoverAlign.Center,
					},
				}

				local currentConfig: StepConfig = stepConfigs[step]

				return React.createElement(View, {
					tag = "col gap-small",
					Size = UDim2.new(1, 0, 0, 300),
				}, {
					Controls = React.createElement(View, {
						tag = "row align-y-center gap-small size-full-0 auto-y",
						LayoutOrder = 1,
					}, {
						PrevButton = React.createElement(Button, {
							text = "Previous",
							onActivated = function()
								setStep(math.max(1, step - 1))
							end,
							variant = ButtonVariant.Standard,
							isDisabled = step == 1,
							LayoutOrder = 1,
						}),
						NextButton = React.createElement(Button, {
							text = "Next",
							onActivated = function()
								setStep(math.min(#stepConfigs, step + 1))
							end,
							variant = ButtonVariant.Standard,
							isDisabled = step == #stepConfigs,
							LayoutOrder = 2,
						}),
						ResetButton = React.createElement(Button, {
							text = "Reset",
							onActivated = function()
								setStep(1)
							end,
							variant = ButtonVariant.Standard,
							LayoutOrder = 3,
						}),
						StepText = React.createElement(Text, {
							tag = "auto-xy text-body-medium",
							Text = `Step {step} of {#stepConfigs} - Side: {currentConfig.side} - Actions: {if currentConfig.hasActions
								then "Yes"
								else "nil"}`,
							LayoutOrder = 4,
						}),
					}),
					AnchorContainer = React.createElement(View, {
						tag = "col align-x-center align-y-center auto-xy",
						Size = UDim2.new(1, 0, 1, 300),
						LayoutOrder = 2,
					}, {
						Anchor = React.createElement(
							Coachmark,
							{
								id = currentConfig.id,
								title = `Tutorial Step {step}`,
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
								size = InputSize.Large,
								text = "Button",
								width = UDim.new(1, 100),
								onActivated = function()
									print(`Anchor {step} clicked`)
								end,
							})
						),
					}),
				})
			end,
		},
	},
	controls = {
		title = "Title",
		text = "Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines.",
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
		hasSecondaryButton = false,
		hasCloseAffordance = false,
		hasActions = true,
		isOpen = true,
		showSteps = true,
	},
}
