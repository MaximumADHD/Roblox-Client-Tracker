local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local useTokens = require(Foundation.Providers.Style.useTokens)

local Components = Foundation.Components
local Flags = require(Foundation.Utility.Flags)
local FoundationConstants = require(Foundation.Constants)
local Icon = require(Components.Icon)
local Image = require(Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Components.View)
local blendTransparencies = require(Foundation.Utility.blendTransparencies)
local getDisabledStyle = require(Foundation.Utility.getDisabledStyle)
local mapBindable = require(Foundation.Utility.mapBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useNumberInputVariants = require(Components.NumberInput.useNumberInputVariants)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

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
	controlsVariant: NumberInputControlsVariant,
	-- Size of the controls
	size: InputSize,
	increment: NumberInputControlProps,
	decrement: NumberInputControlProps,
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

local StackedIconButton = function(props: StackedIconButtonProps)
	local tokens = useTokens()
	local radius = UDim.new(0, tokens.Radius.Medium)

	local cursor = React.useMemo(function()
		return {
			radius = radius,
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	return React.createElement(
		View,
		withCommonProps(props, {
			onActivated = props.onActivated,
			isDisabled = if Flags.FoundationNumberInputBindableValue and ReactIs.isBinding(props.isDisabled)
				then false
				else props.isDisabled :: boolean,
			selection = {
				Selectable = if Flags.FoundationNumberInputBindableValue
					then mapBindable(props.isDisabled, function(isDisabled)
						return not isDisabled
					end)
					else not props.isDisabled,
			},
			cursor = cursor,
			padding = props.padding,
			cornerRadius = radius,
			tag = props.tag,
		}),
		props.children
	)
end

-- TODO: clean up with FFlagFoundationNumberInputVariant or FFlagFoundationNumberInputBindableValue
-- selene: allow(high_cyclomatic_complexity)
local function SplitControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size, props.controlsVariant)
	local textInputVariantProps = useTextInputVariants(
		tokens,
		props.size,
		if Flags.FoundationNumberInputVariant then props.variant else nil :: never
	)
	-- TODO: clean up with FFlagFoundationInputVariantsConsolidateContainer
	local containerProps = if Flags.FoundationInputVariantsConsolidateContainer
		then textInputVariantProps.container
		else textInputVariantProps.outerView

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local buttonSize = UDim2.fromOffset(
		variantProps.splitButton.size - outerBorderOffset,
		variantProps.splitButton.size - outerBorderOffset
	)

	local getBackgroundStyle = if Flags.FoundationNumberInputVariant
		then React.useCallback(function(isDisabled: boolean)
			return if containerProps.bgStyle
				then getDisabledStyle(containerProps.bgStyle :: Types.ColorStyleValue, isDisabled)
				else nil
		end, { containerProps.bgStyle } :: { unknown })
		else nil :: never

	local getStrokeStyle = if Flags.FoundationNumberInputVariant
		then React.useCallback(function(isDisabled: Bindable<boolean>): Types.Stroke?
			return if containerProps.strokeStyle and containerProps.strokeThickness
				then {
					Color = containerProps.strokeStyle.Color3,
					Transparency = if Flags.FoundationNumberInputBindableValue
						then mapBindable(isDisabled, function(disabled)
							return if disabled
								then blendTransparencies(
									containerProps.strokeStyle.Transparency,
									FoundationConstants.DISABLED_TRANSPARENCY
								)
								else containerProps.strokeStyle.Transparency :: number
						end)
						elseif isDisabled then blendTransparencies(
							containerProps.strokeStyle.Transparency,
							FoundationConstants.DISABLED_TRANSPARENCY
						)
						else containerProps.strokeStyle.Transparency,
					Thickness = containerProps.strokeThickness,
					BorderStrokePosition = Enum.BorderStrokePosition.Inner,
				}
				else nil
		end, { containerProps.strokeStyle, containerProps.strokeThickness } :: { unknown })
		else nil :: never

	return React.createElement(React.Fragment, {}, {
		ControlIncrement = React.createElement(View, {
			onActivated = props.increment.onClick,
			isDisabled = if Flags.FoundationNumberInputBindableValue
					and ReactIs.isBinding(props.increment.isDisabled)
				then false
				else props.increment.isDisabled :: boolean,
			stateLayer = if Flags.FoundationNumberInputBindableValue
				then {
					affordance = (mapBindable(props.increment.isDisabled, function(isDisabled): StateLayerAffordance
						return if isDisabled then StateLayerAffordance.None else StateLayerAffordance.Background
					end) :: Bindable<unknown>) :: Bindable<StateLayerAffordance>,
				}
				else nil,
			padding = variantProps.button.padding,
			Size = buttonSize,
			backgroundStyle = if Flags.FoundationNumberInputBindableValue
				then mapBindable(props.increment.isDisabled, function(isDisabled): Types.ColorStyleValue?
					return if Flags.FoundationNumberInputVariant
						then getBackgroundStyle(isDisabled)
						else getDisabledStyle(tokens.Color.Shift.Shift_100, isDisabled) :: Types.ColorStyleValue?
				end) :: Bindable<Types.ColorStyleValue>
				else if Flags.FoundationNumberInputVariant
					then getBackgroundStyle(props.increment.isDisabled :: boolean)
					else getDisabledStyle(
							tokens.Color.Shift.Shift_100,
							props.increment.isDisabled :: boolean
						) :: Types.ColorStyleValue?,
			stroke = if Flags.FoundationNumberInputVariant
				then getStrokeStyle(props.increment.isDisabled)
				else {
					Color = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if Flags.FoundationNumberInputBindableValue
						then mapBindable(props.increment.isDisabled, function(isDisabled)
							return math.lerp(
								tokens.Color.Stroke.Emphasis.Transparency,
								1,
								if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0
							)
						end)
						else math.lerp(
							tokens.Color.Stroke.Emphasis.Transparency,
							1,
							if props.increment.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0
						),
					Thickness = tokens.Stroke.Standard,
				},
			tag = variantProps.splitButton.tag,
			LayoutOrder = 1,
			GroupTransparency = if not Flags.FoundationNumberInputBindableValue and props.increment.isDisabled
				then FoundationConstants.DISABLED_TRANSPARENCY
				else nil,
			testId = `{props.testId}--increment`,
		}, {
			Icon = React.createElement(Icon, {
				name = BuilderIcons.Icon.PlusSmall,
				size = props.size,
				style = if Flags.FoundationNumberInputBindableValue
					then mapBindable(props.increment.isDisabled, function(isDisabled)
						return {
							Color3 = nil,
							Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
						}
					end)
					else nil,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				testId = `{props.testId}--increment-icon`,
			}),
		}),
		ControlDecrement = React.createElement(View, {
			onActivated = props.decrement.onClick,
			isDisabled = if Flags.FoundationNumberInputBindableValue
					and ReactIs.isBinding(props.decrement.isDisabled)
				then false
				else props.decrement.isDisabled :: boolean,
			stateLayer = if Flags.FoundationNumberInputBindableValue
				then {
					affordance = (mapBindable(props.decrement.isDisabled, function(isDisabled): StateLayerAffordance
						return if isDisabled then StateLayerAffordance.None else StateLayerAffordance.Background
					end) :: Bindable<unknown>) :: Bindable<StateLayerAffordance>,
				}
				else nil,
			padding = variantProps.button.padding,
			Size = buttonSize,
			backgroundStyle = if Flags.FoundationNumberInputBindableValue
				then mapBindable(props.decrement.isDisabled, function(isDisabled): Types.ColorStyleValue?
					return if Flags.FoundationNumberInputVariant
						then getBackgroundStyle(isDisabled)
						else getDisabledStyle(tokens.Color.Shift.Shift_100, isDisabled) :: Types.ColorStyleValue?
				end) :: Bindable<Types.ColorStyleValue>
				else if Flags.FoundationNumberInputVariant
					then getBackgroundStyle(props.decrement.isDisabled :: boolean)
					else getDisabledStyle(
							tokens.Color.Shift.Shift_100,
							props.decrement.isDisabled :: boolean
						) :: Types.ColorStyleValue?,
			stroke = if Flags.FoundationNumberInputVariant
				then getStrokeStyle(props.decrement.isDisabled)
				else {
					Color = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if Flags.FoundationNumberInputBindableValue
						then mapBindable(props.decrement.isDisabled, function(isDisabled)
							return math.lerp(
								tokens.Color.Stroke.Emphasis.Transparency,
								1,
								if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0
							)
						end)
						else math.lerp(
							tokens.Color.Stroke.Emphasis.Transparency,
							1,
							if props.decrement.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0
						),
					Thickness = tokens.Stroke.Standard,
				},
			tag = variantProps.splitButton.tag,
			LayoutOrder = -1,
			GroupTransparency = if not Flags.FoundationNumberInputBindableValue and props.decrement.isDisabled
				then FoundationConstants.DISABLED_TRANSPARENCY
				else nil,
			testId = `{props.testId}--decrement`,
		}, {
			Icon = React.createElement(Icon, {
				name = BuilderIcons.Icon.MinusSmall,
				size = props.size,
				style = if Flags.FoundationNumberInputBindableValue
					then mapBindable(props.decrement.isDisabled, function(isDisabled)
						return {
							Color3 = nil,
							Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
						}
					end)
					else nil,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				testId = `{props.testId}--decrement-icon`,
			}),
		}),
	})
end

local function StackedControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size, props.controlsVariant)

	local incrementImageStyle = React.useMemo(function()
		return if Flags.FoundationNumberInputBindableValue
			then mapBindable(props.increment.isDisabled, function(isDisabled)
				return {
					Color3 = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
				}
			end)
			else {
				Color3 = tokens.Color.Stroke.Emphasis.Color3,
				Transparency = if props.increment.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
			}
	end, { tokens, props.increment.isDisabled } :: { unknown })

	local decrementImageStyle = React.useMemo(function()
		return if Flags.FoundationNumberInputBindableValue
			then mapBindable(props.decrement.isDisabled, function(isDisabled)
				return {
					Color3 = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
				}
			end)
			else {
				Color3 = tokens.Color.Stroke.Emphasis.Color3,
				Transparency = if props.decrement.isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
			}
	end, { tokens, props.decrement.isDisabled } :: { unknown })

	return React.createElement(View, {
		tag = "col",
		Size = UDim2.new(0, variantProps.button.width, 1, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		ControlIncrement = React.createElement(StackedIconButton, {
			onActivated = props.increment.onClick,
			isDisabled = if Flags.FoundationNumberInputBindableValue
					and ReactIs.isBinding(props.increment.isDisabled)
				then false
				else props.increment.isDisabled :: boolean,
			padding = variantProps.button.padding,
			tag = variantProps.upButton.tag,
			testId = `{props.testId}--increment`,
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleUp_16",
				imageStyle = incrementImageStyle,
				tag = variantProps.icon.tag,
				testId = `{props.testId}--increment-icon`,
			}),
		}),
		ControlDecrement = React.createElement(StackedIconButton, {
			tag = variantProps.downButton.tag,
			onActivated = props.decrement.onClick,
			isDisabled = if Flags.FoundationNumberInputBindableValue
					and ReactIs.isBinding(props.decrement.isDisabled)
				then false
				else props.decrement.isDisabled :: boolean,
			padding = variantProps.button.padding,
			testId = `{props.testId}--decrement`,
		}, {
			Icon = React.createElement(Image, {
				Image = "component_assets/triangleDown_16",
				imageStyle = decrementImageStyle,
				tag = variantProps.icon.tag,
				testId = `{props.testId}--decrement-icon`,
			}),
		}),
	})
end

local function NumberInputControls(props: NumberInputControlsProps)
	if props.controlsVariant == NumberInputControlsVariant.Stacked then
		return React.createElement(StackedControls, props)
	else
		return React.createElement(SplitControls, props)
	end
end

return NumberInputControls
