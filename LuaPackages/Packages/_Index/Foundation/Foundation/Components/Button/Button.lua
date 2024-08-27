local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local ButtonSize = require(Foundation.Enums.ButtonSize)
type ButtonSize = ButtonSize.ButtonSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local useTokens = require(Foundation.Providers.Style.useTokens)
local useButtonVariants = require(script.Parent.useButtonVariants)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local Types = require(Foundation.Components.Types)
local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type StateChangedCallback = Types.StateChangedCallback

local BUTTON_VARIANT_TO_RICH_TEXT_FORMAT: { [ButtonVariant]: { format: string, controlState: { ControlState } } } = {
	[ButtonVariant.Link] = {
		format = "<u>%s</u>",
		controlState = { ControlState.Hover, ControlState.Pressed },
	},
}

local PROGRESS_TRANSPARENCY = 0.5
local DISABLED_TRANSPARENCY = 0.5

local function onProgressChange(progress: number)
	local percentage = progress
	if percentage == 1 then
		return NumberSequence.new(0)
	elseif percentage == 0 then
		return NumberSequence.new(PROGRESS_TRANSPARENCY)
	end

	return NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(math.max(0, percentage - 0.0001), 0),
		NumberSequenceKeypoint.new(percentage, PROGRESS_TRANSPARENCY),
		NumberSequenceKeypoint.new(1, PROGRESS_TRANSPARENCY),
	})
end

local function getTransparency(transparency: number, isDisabled: boolean)
	return if isDisabled then transparency + (1 - transparency) * DISABLED_TRANSPARENCY else transparency
end

type ButtonProps = {
	text: string?,
	icon: string?,
	onActivated: () -> (),
	isDisabled: boolean?,
	variant: ButtonVariant?,
	size: ButtonSize?,
	fillBehavior: FillBehavior?,
	-- The delay in seconds before the button is enabled.
	-- This will only take effect on component mount and visually show on buttons
	-- whose variants use a filled background (Standard and Emphasis).
	inputDelay: number?,
} & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	variant = ButtonVariant.Standard,
	size = ButtonSize.Small,
	inputDelay = 0,
}

local function Button(buttonProps: ButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(buttonProps, defaultProps)
	local inputDelay: number = props.inputDelay

	local controlState, setControlState = React.useBinding(ControlState.Initialize :: ControlState)
	local isDelaying, setIsDelaying = React.useState(inputDelay > 0)
	local progress, setGoal = ReactOtter.useAnimatedBinding(0, function(value: number)
		setIsDelaying(false)
	end)

	-- Support inputDelay on component mount
	React.useEffect(function()
		if inputDelay > 0 then
			setGoal(ReactOtter.ease(1, {
				duration = inputDelay,
				easingStyle = Enum.EasingStyle.Quad,
			}) :: ReactOtter.Goal)
		end
	end, {})

	local tokens = useTokens()
	local variantProps = useButtonVariants(tokens, props.size, props.variant)

	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Medium),
		offset = tokens.Size.Size_200,
		borderWidth = tokens.Stroke.Thicker,
	})

	local hasText = props.text and props.text ~= ""

	local formatText = React.useCallback(function(guiState)
		local richTextFormat = BUTTON_VARIANT_TO_RICH_TEXT_FORMAT[props.variant]
		if hasText and richTextFormat and table.find(richTextFormat.controlState, guiState) then
			return richTextFormat.format:format(props.text) :: string?
		end
		return props.text
	end, { props.text :: any, props.variant, hasText })

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled and not isDelaying then DISABLED_TRANSPARENCY else nil,
			backgroundStyle = variantProps.container.background,
			flexItem = if props.fillBehavior
				then {
					FlexMode = if props.fillBehavior == FillBehavior.Fill
						then Enum.UIFlexMode.Fill
						else Enum.UIFlexMode.Shrink,
				}
				else nil,
			stroke = if variantProps.container.stroke
				then {
					Color = variantProps.container.stroke.Color,
					Transparency = getTransparency(variantProps.container.stroke.Transparency, props.isDisabled),
				}
				else nil,
			Size = UDim2.new(
				if props.fillBehavior == FillBehavior.Fill then 1 else 0,
				0,
				0,
				variantProps.container.height
			),
			aspectRatio = if not hasText and props.fillBehavior ~= FillBehavior.Fill then 1 else nil,
			-- Allow focus to be set if inputDelay is responsible for disabling the button
			selection = {
				Selectable = not props.isDisabled,
				SelectionImageObject = cursor,
			},
			onActivated = props.onActivated,
			onStateChanged = setControlState :: StateChangedCallback,
			isDisabled = props.isDisabled or isDelaying,
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Icon = if props.icon
				then React.createElement(Icon, {
					name = props.icon,
					size = variantProps.icon.size,
					style = variantProps.icon.style,
					LayoutOrder = 1,
				})
				else nil,
			Text = if hasText
				then React.createElement(Text, {
					Text = controlState:map(formatText) :: any,
					RichText = if BUTTON_VARIANT_TO_RICH_TEXT_FORMAT[props.variant] ~= nil then true else false,
					tag = variantProps.text.tag,
					LayoutOrder = 2,
				})
				else nil,
			Gradient = if isDelaying
				then React.createElement("UIGradient", {
					Transparency = progress:map(onProgressChange),
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Button))
