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
local mapBindable = require(Foundation.Utility.mapBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useNumberInputVariants = require(Components.NumberInput.useNumberInputVariants)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)

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
	-- Deprecated, remove with FoundationNumberInputBeta
	controlsVariant: NumberInputControlsVariant?,
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

-- Remove with FoundationNumberInputBeta
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
			isDisabled = if ReactIs.isBinding(props.isDisabled) then false else props.isDisabled :: boolean,
			selection = {
				Selectable = mapBindable(props.isDisabled, function(isDisabled)
					return not isDisabled
				end),
			},
			cursor = cursor,
			padding = props.padding,
			cornerRadius = radius,
			tag = props.tag,
		}),
		props.children
	)
end

-- Remove with FoundationNumberInputBeta
local function SplitControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size, props.controlsVariant)
	local textInputVariantProps = useTextInputVariants(tokens, props.size, props.variant)
	local containerProps = textInputVariantProps.container

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local buttonSize = UDim2.fromOffset(
		variantProps.splitButton.size - outerBorderOffset,
		variantProps.splitButton.size - outerBorderOffset
	)

	local getStrokeStyle = React.useCallback(function(isDisabled: Bindable<boolean>): Types.Stroke?
		return if containerProps.strokeStyle and containerProps.strokeThickness
			then {
				Color = containerProps.strokeStyle.Color3,
				Transparency = mapBindable(isDisabled, function(disabled)
					return if disabled
						then blendTransparencies(
							containerProps.strokeStyle.Transparency,
							FoundationConstants.DISABLED_TRANSPARENCY
						)
						else containerProps.strokeStyle.Transparency :: number
				end),
				Thickness = containerProps.strokeThickness,
				BorderStrokePosition = Enum.BorderStrokePosition.Inner,
			}
			else nil
	end, { containerProps.strokeStyle, containerProps.strokeThickness } :: { unknown })

	return React.createElement(React.Fragment, {}, {
		ControlIncrement = React.createElement(View, {
			onActivated = props.increment.onClick,
			isDisabled = if ReactIs.isBinding(props.increment.isDisabled)
				then false
				else props.increment.isDisabled :: boolean,
			stateLayer = {
				affordance = (mapBindable(props.increment.isDisabled, function(isDisabled): StateLayerAffordance
					return if isDisabled then StateLayerAffordance.None else StateLayerAffordance.Background
				end) :: Bindable<unknown>) :: Bindable<StateLayerAffordance>,
			},
			padding = variantProps.button.padding,
			Size = buttonSize,
			stroke = getStrokeStyle(props.increment.isDisabled),
			tag = variantProps.splitButton.tag,
			LayoutOrder = 1,
			testId = `{props.testId}--increment`,
		}, {
			Icon = React.createElement(Icon, {
				name = BuilderIcons.Icon.PlusSmall,
				size = props.size,
				style = mapBindable(props.increment.isDisabled, function(isDisabled)
					return {
						Color3 = nil,
						Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
					}
				end),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				testId = `{props.testId}--increment-icon`,
			}),
		}),
		ControlDecrement = React.createElement(View, {
			onActivated = props.decrement.onClick,
			isDisabled = if ReactIs.isBinding(props.decrement.isDisabled)
				then false
				else props.decrement.isDisabled :: boolean,
			stateLayer = {
				affordance = (mapBindable(props.decrement.isDisabled, function(isDisabled): StateLayerAffordance
					return if isDisabled then StateLayerAffordance.None else StateLayerAffordance.Background
				end) :: Bindable<unknown>) :: Bindable<StateLayerAffordance>,
			},
			padding = variantProps.button.padding,
			Size = buttonSize,
			stroke = getStrokeStyle(props.decrement.isDisabled),
			tag = variantProps.splitButton.tag,
			LayoutOrder = -1,
			testId = `{props.testId}--decrement`,
		}, {
			Icon = React.createElement(Icon, {
				name = BuilderIcons.Icon.MinusSmall,
				size = props.size,
				style = mapBindable(props.decrement.isDisabled, function(isDisabled)
					return {
						Color3 = nil,
						Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else nil,
					}
				end),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				testId = `{props.testId}--decrement-icon`,
			}),
		}),
	})
end

-- Remove with FoundationNumberInputBeta
local function StackedControls(props: NumberInputControlsProps)
	local tokens = useTokens()
	local variantProps = useNumberInputVariants(tokens, props.size, props.controlsVariant)

	local incrementImageStyle = React.useMemo(function()
		return mapBindable(props.increment.isDisabled, function(isDisabled)
			return {
				Color3 = tokens.Color.Stroke.Emphasis.Color3,
				Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
			}
		end)
	end, { tokens, props.increment.isDisabled } :: { unknown })

	local decrementImageStyle = React.useMemo(function()
		return mapBindable(props.decrement.isDisabled, function(isDisabled)
			return {
				Color3 = tokens.Color.Stroke.Emphasis.Color3,
				Transparency = if isDisabled then FoundationConstants.DISABLED_TRANSPARENCY else 0,
			}
		end)
	end, { tokens, props.decrement.isDisabled } :: { unknown })

	return React.createElement(View, {
		tag = "col",
		Size = UDim2.new(0, variantProps.button.width, 1, 0),
		LayoutOrder = props.LayoutOrder,
	}, {
		ControlIncrement = React.createElement(StackedIconButton, {
			onActivated = props.increment.onClick,
			isDisabled = if ReactIs.isBinding(props.increment.isDisabled)
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
			isDisabled = if ReactIs.isBinding(props.decrement.isDisabled)
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
	local variantProps = useNumberInputVariants(tokens, props.size, nil)
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
	if Flags.FoundationNumberInputBeta then
		return React.createElement(IncrementControls, props)
	end

	-- Remove with FoundationNumberInputBeta
	if props.controlsVariant == NumberInputControlsVariant.Stacked then
		return React.createElement(StackedControls, props)
	else
		return React.createElement(SplitControls, props)
	end
end

return NumberInputControls
