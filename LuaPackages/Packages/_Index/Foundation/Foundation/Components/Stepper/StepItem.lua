local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Icon = require(Foundation.Components.Icon)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local StepperStepState = require(Foundation.Enums.StepperStepState)
type StepperStepState = StepperStepState.StepperStepState
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local useStepperVariants = require(script.Parent.useStepperVariants)
type FillBehavior = FillBehavior.FillBehavior

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant

type ItemId = Types.ItemId

type StepItemStep = {
	id: ItemId,
	label: string,
	description: string?,
}

type StepItemProps = {
	step: StepItemStep,
	index: number,
	stepState: StepperStepState,
	size: InputSize,
	fillBehavior: FillBehavior,
	testId: string,
} & Types.CommonProps

local function StepItem(props: StepItemProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local isFill = props.fillBehavior == FillBehavior.Fill
	local variant = useStepperVariants(tokens, props.size, props.stepState, isFill)

	return React.createElement(View, {
		tag = variant.container.tag,
		testId = props.testId,
		LayoutOrder = props.LayoutOrder,
	}, {
		Measure = React.createElement(View, {
			LayoutOrder = 1,
			tag = "size-full",
			ref = ref,
		}),
		Content = React.createElement(View, {
			LayoutOrder = 2,
			tag = variant.content.tag,
			padding = variant.content.padding,
			testId = `{props.testId}--content`,
		}, {
			IndicatorOuter = React.createElement(View, {
				LayoutOrder = 1,
				tag = variant.indicatorOuter.tag,
				testId = `{props.testId}--indicator-outer`,
			}, {
				Indicator = React.createElement(View, {
					tag = variant.indicatorInner.tag,
					testId = `{props.testId}--indicator`,
				}, {
					StepIndex = if props.stepState == StepperStepState.Complete
						then React.createElement(Icon, {
							name = IconName.Check,
							style = tokens.Inverse.Content.Emphasis,
							size = variant.icon.size,
							variant = IconVariant.Filled,
							testId = `{props.testId}--check`,
						})
						else React.createElement(Text, {
							Text = tostring(props.index),
							tag = variant.index.tag,
							testId = `{props.testId}--index`,
						}),
				}),
			}),
			TextColumn = React.createElement(View, {
				LayoutOrder = 2,
				tag = variant.textColumn.tag,
				padding = variant.textColumn.padding,
				testId = `{props.testId}--text-column`,
			}, {
				Label = React.createElement(Text, {
					LayoutOrder = 1,
					Text = props.step.label,
					tag = variant.label.tag,
					testId = `{props.testId}--label`,
				}),
				Description = if props.step.description
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = props.step.description,
						tag = variant.description.tag,
						testId = `{props.testId}--description`,
					})
					else nil,
			}),
		}),
	})
end

return React.memo(React.forwardRef(StepItem))
