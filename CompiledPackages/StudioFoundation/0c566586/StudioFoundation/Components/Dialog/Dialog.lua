local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogPanel = require(Main.Components.Dialog.DialogPanel)
local DialogView = require(Main.Components.Dialog.DialogView)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local Types = require(Main.Types)
local useDialogTelemetry = require(Main.Components.Dialog.useDialogTelemetry)

local FFlagStudioFoundationDialogWidthRenderFix =
	require(Main.SharedFlags.getFFlagStudioFoundationDialogWidthRenderFix)()
local FFlagStudioFoundationDialogDeviceSimFixes =
	require(Main.SharedFlags.getFFlagStudioFoundationDialogDeviceSimFixes)()

local e = React.createElement

type Bindable<T> = Foundation.Bindable<T>
type DialogAction = Types.DialogAction
type DialogEscapeButtonAction = Types.DialogEscapeButtonAction

export type Props = {
	uri: StudioUri,

	type: Types.DialogType, -- Not bindable since Icon's name and style properties aren't bindable
	title: Bindable<string?>,
	description: Bindable<string?>,
	image: Bindable<string?>,
	showIndeterminateProgressIndicator: Bindable<boolean?>,

	-- Button properties aren't bindable since Button's text and onActivated properties aren't bindable
	primaryAction: DialogAction?,
	secondaryAction: DialogAction?,
	tertiaryAction: DialogAction?,
	escapeAction: DialogEscapeButtonAction?,

	-- Only meant to be used by custom dialogs. By default, 350px
	width: number?,

	children: React.Node?,

	-- Optional custom-dialog presentation overrides
	isContentFullBleed: boolean?,
	tertiaryActionVariant: ("Standard" | "Utility")?,
}

local function Dialog(props: Props)
	local wrappedDialogActions = useDialogTelemetry(props)

	local getSize: Signals.getter<Vector2>
	local setSize: Signals.setter<Vector2>

	if FFlagStudioFoundationDialogWidthRenderFix then
		-- TODO (STUDIOPLAT-41652): Fix dialog sizing/positioning logic with soft attachments in PanelsManager
		-- This will allow us to remove this hardcoded initial size
		local initialSize = React.useState(Vector2.new(props.width or 350, 102))

		getSize, setSize = React.useMemo(function()
			return Signals.createSignal(initialSize)
		end, { initialSize })

		-- Instantly set size for immediate render
		React.useEffect(function()
			setSize(initialSize)
		end, { initialSize :: unknown, setSize :: unknown })
	else
		getSize, setSize = React.useMemo(function()
			return Signals.createSignal(Vector2.new(props.width or 350, 102))
		end, { props.width })
	end

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setSize(rbx.AbsoluteSize)
	end, { setSize })

	return e(DialogPanel, {
		uri = props.uri,
		getSize = getSize,
		onClose = if wrappedDialogActions.escapeAction then wrappedDialogActions.escapeAction.onClose else nil,
	}, {
		DialogView = e(DialogView, {
			type = props.type,
			title = props.title,
			description = props.description,
			image = props.image,
			showIndeterminateProgressIndicator = props.showIndeterminateProgressIndicator,
			primaryAction = wrappedDialogActions.primaryAction,
			secondaryAction = wrappedDialogActions.secondaryAction,
			tertiaryAction = wrappedDialogActions.tertiaryAction,
			width = props.width,
			isContentFullBleed = if FFlagStudioFoundationDialogDeviceSimFixes then props.isContentFullBleed else nil,
			tertiaryActionVariant = if FFlagStudioFoundationDialogDeviceSimFixes
				then props.tertiaryActionVariant
				else nil,
			onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		}, props.children),
	})
end

return React.memo(Dialog)
