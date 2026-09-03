local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local OverflowScrollContainer = require(Foundation.Components.OverflowScrollContainer)
local StepperStepState = require(Foundation.Enums.StepperStepState)
type StepperStepState = StepperStepState.StepperStepState
local StepItem = require(script.Parent.StepItem)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useAnimatedHighlight = require(Foundation.Utility.useAnimatedHighlight)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
type StepperSize = typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium)
type ItemId = Types.ItemId

export type Step = {
	id: ItemId,
	label: string,
	description: string?,
}

export type StepperProps = {
	steps: { Step },
	activeStepId: ItemId?,
	size: StepperSize?,
	-- Whether steps fill the whole width growing to the equal size (Fill) or take minimum space (Fit)
	fillBehavior: FillBehavior?,
} & Types.CommonProps

local defaultProps = {
	fillBehavior = FillBehavior.Fill,
	size = InputSize.Medium,
	testId = "--foundation-stepper",
	ZIndex = 1,
}

local function getStepState(index: number, activeStepIndex: number, isActive: boolean): StepperStepState
	if isActive then
		return StepperStepState.Current
	elseif index < activeStepIndex then
		return StepperStepState.Complete
	end

	return StepperStepState.Incomplete
end

local function Stepper(stepperProps: StepperProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(stepperProps, defaultProps)
	local tokens = useTokens()

	local activeStepId = props.activeStepId or Dash.get(props, { "steps", 1, "id" })
	local activeStepIndex = Dash.findIndex(props.steps, function(step)
		return step.id == activeStepId
	end) or 1

	local isFill = props.fillBehavior == FillBehavior.Fill

	local containerRef = React.useRef<<GuiObject?>>(nil)

	local stepRefsCache = React.useRef<<{ [ItemId]: React.RefObject<GuiObject?> }>>({})
	local stepRefs = React.useMemo(function()
		local cache = stepRefsCache.current
		for _, step in props.steps do
			if not cache[step.id] then
				cache[step.id] = React.createRef()
			end
		end
		return cache
	end, { props.steps })

	local highlightContainerRef: React.RefObject<GuiObject?> = (ref or containerRef) :: React.RefObject<GuiObject?>
	local animatedBorder =
		useAnimatedHighlight(activeStepId, highlightContainerRef, stepRefs, props.size, props.fillBehavior)

	local stepListWidth, setStepListWidth = React.useBinding<<number>>(0)
	local updateStepListWidth = React.useCallback(function(stepList: GuiObject)
		setStepListWidth(stepList.AbsoluteSize.X)
	end, {})

	local highlightThickness = tokens.Stroke.Standard

	local stepChildren: { [string]: React.ReactNode } = {}
	for index, step in ipairs(props.steps) do
		local isActive = activeStepId == step.id
		local stepState: StepperStepState = getStepState(index, activeStepIndex, isActive)

		stepChildren[`Step{step.id}`] = React.createElement(StepItem, {
			step = step,
			index = index,
			stepState = stepState,
			size = props.size,
			fillBehavior = props.fillBehavior,
			LayoutOrder = index,
			testId = `{props.testId}--step-{step.id}`,
			ref = stepRefs[step.id],
		})
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "size-full-0 auto-y no-clip",
			sizeConstraint = if not isFill
				then {
					MaxSize = stepListWidth:map(function(width: number)
						return Vector2.new(width, math.huge)
					end),
				}
				else nil,
		}),
		{
			Stepper = React.createElement(View, {
				ref = ref or containerRef,
				tag = "col size-full-0 auto-y",
				ZIndex = props.ZIndex,
				testId = `{props.testId}--container`,
			}, {
				ScrollContainer = React.createElement(OverflowScrollContainer, {
					LayoutOrder = 1,
					size = props.size,
					scrimBottomInset = highlightThickness,
					testId = `{props.testId}--scroll-container`,
				}, {
					StepList = React.createElement(View, {
						onAbsoluteSizeChanged = updateStepListWidth,
						tag = {
							["row flex-y-fill auto-xy"] = true,
							["size-full-0"] = isFill,
						},
						testId = `{props.testId}--list`,
					}, stepChildren),
				}),
				Border = React.createElement(View, {
					LayoutOrder = 2,
					tag = "position-bottom-left anchor-bottom-left",
					Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
					backgroundStyle = tokens.Color.Stroke.Default,
					testId = `{props.testId}--border`,
				}),
			}),
			AnimatedBorder = React.createElement(View, {
				LayoutOrder = 0,
				ZIndex = props.ZIndex + 1,
				tag = "anchor-bottom-left bg-system-contrast",
				Size = animatedBorder.highlightWidth:map(function(value)
					return UDim2.fromOffset(value, highlightThickness)
				end),
				Position = React.joinBindings({ animatedBorder.highlightPosition, animatedBorder.activeItemHeight })
					:map(function(value)
						local xPosition, yPosition = value[1], value[2]
						return UDim2.fromOffset(xPosition, yPosition)
					end),
				testId = `{props.testId}--animated-border`,
			}),
		}
	)
end

return React.memo(React.forwardRef(Stepper))
