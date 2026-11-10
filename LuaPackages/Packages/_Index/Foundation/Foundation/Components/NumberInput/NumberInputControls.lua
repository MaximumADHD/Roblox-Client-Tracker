local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local useTokens = require(Foundation.Providers.Style.useTokens)

local Components = Foundation.Components
local FoundationConstants = require(Foundation.Constants)
local Icon = require(Components.Icon)
local Types = require(Foundation.Components.Types)
local View = require(Components.View)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local mapBindable = require(Foundation.Utility.mapBindable)

local useNumberInputVariants = require(Components.NumberInput.useNumberInputVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local NumberInputControlsVariant = require(Foundation.Enums.NumberInputControlsVariant)
type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
type StateLayerAffordance = StateLayerAffordance.StateLayerAffordance

type Bindable<T> = Types.Bindable<T>

type NumberInputControlProps = {
	isDisabled: Bindable<boolean>,
	onClick: () -> (),
}

type NumberInputControlsProps = {
	variant: InputVariant,
	-- Size of the controls
	size: InputSize,
	increment: NumberInputControlProps,
	decrement: NumberInputControlProps,
	-- Only applies with FoundationNumberInputBeta set to true
	hasDivider: boolean?,
	testId: string,
	LayoutOrder: number?,
}

type StackedIconButtonProps = {
	onActivated: () -> (),
	isDisabled: Bindable<boolean>?,
	padding: Types.Padding,
	tag: string?,
	children: React.ReactNode?,
} & Types.CommonProps

local function IncrementButton(props: {
	icon: string,
	iconSize: IconSize,
	hasDivider: boolean?,
	isDisabled: Bindable<boolean>,
	onActivated: () -> (),
	radius: number,
	size: number,
	LayoutOrder: number,
	testId: string,
})
	local tokens = useTokens()

	local cursor = React.useMemo(function()
		return { radius = UDim.new(0, props.radius), offset = tokens.Size.Size_150, borderWidth = tokens.Stroke.Thicker }
	end, { props.radius, tokens.Size.Size_150, tokens.Stroke.Thicker })

	return React.createElement(View, {
		onActivated = props.onActivated,
		isDisabled = if ReactIs.isBinding(props.isDisabled) then false else props.isDisabled :: boolean,
		selection = {
			Selectable = mapBindable(props.isDisabled, function(isDisabled)
				return not isDisabled
			end),
		},
		stateLayer = {
			affordance = (mapBindable(props.isDisabled, function(isDisabled): StateLayerAffordance
				return if isDisabled then StateLayerAffordance.None else StateLayerAffordance.Background
			end) :: Bindable<unknown>) :: Bindable<StateLayerAffordance>,
		},
		cursor = cursor,
		cornerRadius = UDim.new(0, props.radius),
		Size = UDim2.fromOffset(props.size, props.size),
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	}, {
		Divider = if props.hasDivider
			then React.createElement(View, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.new(0, tokens.Stroke.Standard, 1, 0),
				backgroundStyle = tokens.Color.Stroke.Default,
				testId = `{props.testId}--divider`,
			})
			else nil,
		Icon = React.createElement(Icon, {
			name = props.icon,
			size = props.iconSize,
			style = mapBindable(props.isDisabled, function(isDisabled)
				return {
					Color3 = tokens.Color.ActionUtility.Foreground.Color3,
					Transparency = if isDisabled
						then blendTransparencies(
							tokens.Color.ActionUtility.Foreground.Transparency,
							FoundationConstants.DISABLED_TRANSPARENCY
						)
						else tokens.Color.ActionUtility.Foreground.Transparency,
				}
			end),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			testId = `{props.testId}--icon`,
		}),
	})
end

local function IncrementControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size)
	local controls = variantProps.controls

	return React.createElement(View, {
		tag = controls.tag,
		Size = UDim2.fromOffset(controls.width, controls.buttonSize),
		LayoutOrder = 1,
		testId = `{props.testId}--increment-buttons`,
	}, {
		ControlDecrement = React.createElement(IncrementButton, {
			icon = BuilderIcons.Icon.MinusSmall,
			iconSize = controls.iconSize,
			isDisabled = props.decrement.isDisabled,
			onActivated = props.decrement.onClick,
			radius = controls.radius,
			size = controls.buttonSize,
			LayoutOrder = 1,
			testId = `{props.testId}--decrement`,
		}),
		ControlIncrement = React.createElement(IncrementButton, {
			icon = BuilderIcons.Icon.PlusSmall,
			iconSize = controls.iconSize,
			hasDivider = props.hasDivider,
			isDisabled = props.increment.isDisabled,
			onActivated = props.increment.onClick,
			radius = controls.radius,
			size = controls.buttonSize,
			LayoutOrder = 2,
			testId = `{props.testId}--increment`,
		}),
	})
end

local function NumberInputControls(props: NumberInputControlsProps)
	return React.createElement(IncrementControls, props)
end

return NumberInputControls
