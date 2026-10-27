local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ButtonGroup = require(Foundation.Components.ButtonGroup)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogSize = require(Foundation.Enums.DialogSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local Orientation = require(Foundation.Enums.Orientation)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)

local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants
local useDialog = require(script.Parent.Parent.useDialog)

type Bindable<T> = Types.Bindable<T>
type ButtonVariant = ButtonVariant.ButtonVariant
type Orientation = Orientation.Orientation
type ButtonGroupItem = ButtonGroup.ButtonGroupItem

-- TODO: replace with ButtonGroupItem in Foundation v2
export type DialogAction = {
	-- Visual style of the action button.
	variant: ButtonVariant?,
	-- BuilderIcons name rendered beside the label, or alone when `text` is omitted.
	icon: string?,
	-- Label shown on the action button.
	text: string?,
	-- Called when the action is activated.
	onActivated: () -> (),
	-- Delay in seconds before the button is enabled.
	inputDelay: number?,
	-- Forwarded to the action button instance.
	ref: React.Ref<GuiObject>?,
}

export type DialogActionsProps = {
	-- Action buttons shown in the dialog footer.
	actions: { DialogAction }?,
	-- Optional label above the actions.
	label: Bindable<string>?,
	-- Layout direction of the action buttons.
	orientation: Orientation?,
	-- **Engine**: Order of the actions row among dialog content siblings.
	LayoutOrder: Bindable<number>?,
}

local defaultProps = {
	orientation = Orientation.Horizontal,
}

local function DialogActions(dialogActionsProps: DialogActionsProps)
	local props: DialogActionsProps = withDefaults(dialogActionsProps, defaultProps)
	local variants = useDialogVariants()
	local dialogContext = useDialog()

	local isSmall = dialogContext.responsiveSize == DialogSize.Small
	local verticalOrientation = props.orientation == Orientation.Vertical and isSmall

	return React.createElement(View, {
		tag = "col size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
		testId = `{dialogContext.testId}--actions`,
	}, {
		ActionsContainer = React.createElement(ButtonGroup, {
			buttons = props.actions or {} :: any,
			orientation = if verticalOrientation then Orientation.Vertical else Orientation.Horizontal,
			fillBehavior = FillBehavior.Fill,
			LayoutOrder = 1,
			testId = `{dialogContext.testId}--actions-container`,
		}),
		ActionsLabel = if props.label
			then React.createElement(Text, {
				Text = props.label,
				tag = variants.actionsLabel.tag,
				LayoutOrder = 2,
				testId = `{dialogContext.testId}--actions-label`,
			})
			else nil,
	})
end

return DialogActions
