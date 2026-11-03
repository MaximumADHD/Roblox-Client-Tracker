local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local useWidgetRef = require(Main.Hooks.useWidgetRef)
local Types = require(Main.Types)
local getTertiaryActionTreatment = require(Main.Components.Dialog.getTertiaryActionTreatment)
local isTextLabelTruncatedAsync = require(Main.Components.Dialog.isTextLabelTruncatedAsync)
local useBindable = require(Main.Hooks.useBindable)
local useButtonGroupFairWidth = require(Main.Components.Dialog.useButtonGroupFairWidth)

local FFlagStudioFoundationDialogDeviceSimFixes =
	require(Main.SharedFlags.getFFlagStudioFoundationDialogDeviceSimFixes)()
local FFlagStudioDialogManagerTertiaryButtonVariant =
	require(Main.SharedFlags.getFFlagStudioDialogManagerTertiaryButtonVariant)()

local counter = Framework.Util.counter
local MAX_BUTTON_WIDTH = 120
local e = React.createElement
local useTooltip = Framework.UI.Hooks.useTooltip

type Bindable<T> = Foundation.Bindable<T>
type DialogAction = Types.DialogAction

type ButtonProps = {
	action: DialogAction,
	variant: "Emphasis" | Types.DialogTertiaryActionVariant,
	measureRef: ((GuiObject?) -> ())?,
	widthOverride: number?,
	LayoutOrder: number,
	testId: string,
}

-- Wrapper for individual buttons to handle truncation tooltip logic
local Button = React.memo(function(props: ButtonProps)
	local ref = useWidgetRef(props.action.uri)

	local show, hide = useTooltip({
		Uri = props.action.uri,
		Text = props.action.text,
		Location = "Below",
	})

	local measurementThreadRef
	if FFlagStudioDialogManagerTertiaryButtonVariant then
		measurementThreadRef = React.useRef<<thread?>>(nil)
		React.useEffect(function()
			return function()
				if measurementThreadRef.current then
					task.cancel(measurementThreadRef.current)
				end
			end
		end, { measurementThreadRef })
	end

	local onStateChanged
	if FFlagStudioDialogManagerTertiaryButtonVariant then
		onStateChanged = React.useCallback(function(newState: Foundation.ControlState)
			if measurementThreadRef.current then
				task.cancel(measurementThreadRef.current)
			end

			local textElement = if ref.current and newState == Foundation.Enums.ControlState.Hover
				then if ref.current:IsA("TextLabel")
					then ref.current
					else ref.current:FindFirstChildWhichIsA("TextLabel")
				else nil

			if textElement then
				-- Measuring yields; leaving hover or unmounting cancels it before the tooltip can show
				measurementThreadRef.current = task.spawn(function()
					if isTextLabelTruncatedAsync(textElement) then
						show()
					end
				end)
				return
			end

			hide()
		end, { measurementThreadRef :: unknown, ref, show, hide })
	else
		onStateChanged = React.useCallback(function(newState: Foundation.ControlState)
			if ref.current and newState == Foundation.Enums.ControlState.Hover then
				local textElement = if ref.current:IsA("TextLabel")
					then ref.current
					else ref.current:FindFirstChildWhichIsA("TextLabel")

				if textElement and not textElement.TextFits then
					show()
					return
				end
			end

			hide()
		end, { ref, show, hide })
	end

	local onActivated = React.useCallback(function()
		props.action.onActivated(props.action.uri)
	end, { props.action.onActivated :: unknown, props.action.uri })

	-- Close tooltip on unmount
	React.useEffect(function()
		return hide
	end, { hide })

	local isConstrained = props.widthOverride ~= nil

	return e(Foundation.View, {
		ref = props.measureRef,
		tag = "auto-xy",
		onStateChanged = onStateChanged,
		LayoutOrder = props.LayoutOrder,
		testId = if FFlagStudioDialogManagerTertiaryButtonVariant or FFlagStudioFoundationDialogDeviceSimFixes
			then `{props.testId}-wrapper`
			else nil,
	}, {
		Button = e(Foundation.Button, {
			ref = ref,
			text = props.action.text,
			variant = props.variant,
			size = Foundation.Enums.InputSize.XSmall,
			onActivated = onActivated,
			isDisabled = props.action.disabled,
			testId = props.testId,
		}),
		UISizeConstraint = e("UISizeConstraint", {
			MaxSize = Vector2.new(if isConstrained then props.widthOverride :: number else MAX_BUTTON_WIDTH, math.huge),
		}),
	})
end)

export type Props = {
	-- Action properties aren't bindable since Button's text and onActivated properties aren't bindable
	primaryAction: DialogAction?,
	secondaryAction: DialogAction?,
	tertiaryAction: DialogAction?,

	LayoutOrder: Bindable<number>?,
	tertiaryActionVariant: Types.DialogTertiaryActionVariant?,
}

local function DialogButtonGroup(props: Props)
	local layoutOrder = useBindable(props.LayoutOrder)
	local count = counter()
	local tokens = Foundation.Hooks.useTokens()

	-- Fair-width distribution: hug when buttons fit, truncate the longest first when they overflow
	local buttonWidths, registerButton, onContainerSizeChanged =
		useButtonGroupFairWidth(tokens.Gap.Small, MAX_BUTTON_WIDTH)

	local primaryRef = React.useCallback(function(rbx: GuiObject?)
		registerButton("primary", rbx)
	end, { registerButton })
	local secondaryRef = React.useCallback(function(rbx: GuiObject?)
		registerButton("secondary", rbx)
	end, { registerButton })
	local tertiaryRef = React.useCallback(function(rbx: GuiObject?)
		registerButton("tertiary", rbx)
	end, { registerButton })

	local tertiaryActionTreatment
	local primaryAndSecondaryOrder, tertiaryOrder
	if FFlagStudioDialogManagerTertiaryButtonVariant then
		tertiaryActionTreatment = getTertiaryActionTreatment(props.tertiaryAction, props.tertiaryActionVariant)

		-- Tertiary comes before primary/secondary if it's isolated
		if tertiaryActionTreatment.isIsolated then
			tertiaryOrder, primaryAndSecondaryOrder = count(), count()
		else
			primaryAndSecondaryOrder, tertiaryOrder = count(), count()
		end
	else
		-- Atomically allocate two LayoutOrder values: PrimaryAndSecondary first, tertiary second (right, grouped)
		primaryAndSecondaryOrder, tertiaryOrder = count(), count()
	end

	return e(Foundation.View, {
		tag = if FFlagStudioDialogManagerTertiaryButtonVariant
			then {
				["row items-stretch gap-small size-full-0 auto-y"] = true,
				["flex-x-between"] = tertiaryActionTreatment.isIsolated,
				["align-x-right"] = not tertiaryActionTreatment.isIsolated,
			}
			else "row align-x-right items-stretch gap-small size-full-0 auto-y",
		onAbsoluteSizeChanged = onContainerSizeChanged,
		LayoutOrder = layoutOrder,
		testId = "--dialog-button-group",
	}, {
		Tertiary = if props.tertiaryAction
			then e(Button, {
				action = props.tertiaryAction,
				variant = if FFlagStudioDialogManagerTertiaryButtonVariant
					then tertiaryActionTreatment.variant
					else FFlagStudioFoundationDialogDeviceSimFixes and props.tertiaryActionVariant
						or Foundation.Enums.ButtonVariant.Standard,
				measureRef = tertiaryRef,
				widthOverride = if buttonWidths then buttonWidths.tertiary else nil,
				LayoutOrder = tertiaryOrder,
				testId = "--dialog-button-tertiary",
			})
			else nil,
		PrimaryAndSecondary = e(Foundation.View, {
			tag = "row items-stretch gap-small auto-xy",
			LayoutOrder = primaryAndSecondaryOrder,
			testId = if FFlagStudioDialogManagerTertiaryButtonVariant or FFlagStudioFoundationDialogDeviceSimFixes
				then "--dialog-button-primary-secondary-group"
				else nil,
		}, {
			Primary = if props.primaryAction
				then e(Button, {
					action = props.primaryAction,
					variant = Foundation.Enums.ButtonVariant.Emphasis,
					measureRef = primaryRef,
					widthOverride = if buttonWidths then buttonWidths.primary else nil,
					LayoutOrder = count(),
					testId = "--dialog-button-primary",
				})
				else nil,
			Secondary = if props.secondaryAction
				then e(Button, {
					action = props.secondaryAction,
					variant = Foundation.Enums.ButtonVariant.Standard,
					measureRef = secondaryRef,
					widthOverride = if buttonWidths then buttonWidths.secondary else nil,
					LayoutOrder = count(),
					testId = "--dialog-button-secondary",
				})
				else nil,
		}),
	})
end

return React.memo(DialogButtonGroup)
