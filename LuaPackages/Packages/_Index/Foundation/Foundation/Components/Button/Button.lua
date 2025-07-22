local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]

local Motion = require(Packages.Motion)
local useMotion = Motion.useMotion
local AnimatePresence = Motion.AnimatePresence

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local Spinner = require(script.Parent.Spinner)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local Types = require(Foundation.Components.Types)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local getIconScale = require(Foundation.Utility.getIconScale)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon

local useButtonVariants = require(script.Parent.useButtonVariants)
local useButtonMotionStates = require(script.Parent.useButtonMotionStates)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)

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

local function getTransparency(
	transparency: number?,
	disabledTransparency: React.Binding<number>
): React.Binding<number>
	return disabledTransparency:map(function(disabledValue)
		if transparency ~= nil then
			return transparency + (1 - transparency) * disabledValue
		end
		return disabledValue
	end)
end

type ButtonProps = {
	text: string?,
	icon: string?,
	onActivated: () -> (),
	isDisabled: boolean?,
	isLoading: boolean?,
	variant: ButtonVariant?,
	size: InputSize?,
	-- Width of the button. `fillBehavior` is preferred and works better with flex layouts. Intended for cross-directional scaled sizing.
	width: UDim?,
	fillBehavior: FillBehavior?,
	-- The delay in seconds before the button is enabled.
	-- This will only take effect on component mount and visually show on buttons
	-- whose variants use a filled background (Standard and Emphasis).
	inputDelay: number?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	isDisabled = false,
	isLoading = false,
	variant = ButtonVariant.Standard,
	size = InputSize.Medium,
	width = UDim.new(0, 0),
	inputDelay = 0,
}

local function Button(buttonProps: ButtonProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(buttonProps, defaultProps)
	local inputDelay: number = props.inputDelay
	local intrinsicIconSize, scale = getIconScale(props.icon, props.size)

	local textSizeOffset = useTextSizeOffset()
	local controlState, setControlState = React.useBinding(ControlState.Initialize :: ControlState)
	local isDelaying, setIsDelaying = React.useState(inputDelay > 0)
	local progress, setGoal = ReactOtter.useAnimatedBinding(0, function(value: number)
		setIsDelaying(false)
	end)

	-- UIBLOX-1801: Support inputDelay at times other than just component mount
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

	local motionStates = useButtonMotionStates(variantProps.content.style.Transparency, DISABLED_TRANSPARENCY)
	local disabledValues, animateDisabledValues = useMotion(motionStates.Default)
	local values, animate = useMotion(motionStates.Default)

	React.useEffect(function()
		if props.isLoading then
			animate(motionStates.Loading)
		else
			animate(motionStates.Default)
		end
	end, { props.isLoading })

	React.useEffect(function()
		if props.isDisabled then
			animateDisabledValues(motionStates.Disabled)
		else
			animateDisabledValues(motionStates.Default)
		end
	end, { props.isDisabled })

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, variantProps.container.radius),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens :: unknown, variantProps.container.radius })

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
			AutomaticSize = if props.width.Scale == 0 then Enum.AutomaticSize.X else nil,
			cornerRadius = UDim.new(0, variantProps.container.radius),
			backgroundStyle = if variantProps.container.style
				then getTransparency(variantProps.container.style.Transparency, disabledValues.transparency):map(
					function(transparency)
						return {
							Color3 = variantProps.container.style.Color3,
							Transparency = transparency,
						}
					end
				)
				else nil,
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
					Transparency = getTransparency(
						variantProps.container.stroke.Transparency,
						disabledValues.transparency
					),
				}
				else nil,
			Size = UDim2.new(
				if props.fillBehavior == FillBehavior.Fill then 1 else props.width.Scale,
				if props.fillBehavior == FillBehavior.Fill then 0 else props.width.Offset,
				0,
				variantProps.container.height
			),
			-- Allow focus to be set if inputDelay or isLoading is responsible for disabling the button
			selection = {
				Selectable = if props.isDisabled then false else props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			cursor = cursor,
			onActivated = props.onActivated,
			onStateChanged = setControlState :: StateChangedCallback,
			isDisabled = props.isDisabled or props.isLoading or isDelaying,
			stateLayer = variantProps.container.stateLayer,
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			-- If there is an icon, render icon and spinner in place of eachother.
			-- Otherwise, render a Folder to exempt from layout, and use exclusively for loading spinnner.
			IconWrapper = if props.icon or props.isLoading
				then React.createElement(if props.icon then View else "Folder", {
					Size = if props.icon then variantProps.icon.size else nil,
				}, {
					PresenceWrapper = React.createElement(AnimatePresence, {}, {
						Spinner = if props.isLoading
							then React.createElement(Spinner, {
								Size = variantProps.icon.size,
								style = disabledValues.transparency:map(function(transparency)
									return {
										Color3 = variantProps.content.style.Color3,
										Transparency = transparency,
									}
								end),
							})
							else nil,
						Icon = if not props.isLoading and props.icon
							then if isBuilderOrMigratedIcon(props.icon)
								then React.createElement(Text, {
									Text = if isMigrated(props.icon)
										then migrationLookup[props.icon].name
										else props.icon,
									fontStyle = {
										Font = BuilderIcons.Font[if isMigrated(props.icon)
											then migrationLookup[props.icon].variant
											else BuilderIcons.IconVariant.Regular],
										FontSize = variantProps.icon.size.Y.Offset,
									},
									tag = "anchor-center-center position-center-center",
									Size = variantProps.icon.size,
									textStyle = disabledValues.transparency:map(function(transparency)
										return {
											Color3 = variantProps.content.style.Color3,
											Transparency = transparency,
										}
									end),
									scale = values.iconScale,
								}, {
									UITextSizeConstraint = if textSizeOffset > 0
										then React.createElement("UITextSizeConstraint", {
											MaxTextSize = values.iconScale:map(function(iconScale: number)
												return iconScale * variantProps.icon.size.Y.Offset
											end),
										})
										else nil,
								})
								else React.createElement(Image, {
									tag = "anchor-center-center position-center-center",
									Image = props.icon,
									Size = if intrinsicIconSize
										then UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y)
										else variantProps.icon.size,
									imageStyle = disabledValues.transparency:map(function(transparency)
										return {
											Color3 = variantProps.content.style.Color3,
											Transparency = transparency,
										}
									end),
									scale = values.iconScale:map(function(iconScale: number)
										return iconScale * scale
									end),
								})
							else nil,
					}),
				})
				else nil,
			Text = if hasText
				then React.createElement(Text, {
					Text = controlState:map(formatText) :: any,
					RichText = if BUTTON_VARIANT_TO_RICH_TEXT_FORMAT[props.variant] ~= nil then true else false,
					tag = variantProps.text.tag,
					textStyle = React.joinBindings({ disabledValues.transparency, values.textTransparency })
						:map(function(transparencies)
							local disabledTransparency: number = transparencies[1]
							local textTransparency: number = transparencies[2]
							return {
								Color3 = variantProps.content.style.Color3,
								Transparency = if props.icon
									then disabledTransparency
									else textTransparency + disabledTransparency,
							}
						end),
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
