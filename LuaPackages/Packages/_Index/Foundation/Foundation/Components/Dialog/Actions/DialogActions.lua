local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local Orientation = require(Foundation.Enums.Orientation)
local DialogSize = require(Foundation.Enums.DialogSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)

local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants
local useDialogLayout = require(script.Parent.Parent.useDialogLayout)

type Bindable<T> = Types.Bindable<T>
type ButtonVariant = ButtonVariant.ButtonVariant

export type DialogAction = {
	variant: ButtonVariant?,
	icon: string?,
	text: string?,
	onActivated: () -> (),
	inputDelay: number?,
	ref: React.Ref<GuiObject>?,
}

export type DialogActionsProps = {
	actions: { DialogAction }?,
	label: Bindable<string>?,
	orientation: Orientation.Orientation?,
	LayoutOrder: Bindable<number>?,
}

local defaultProps = {
	orientation = Orientation.Horizontal,
}

local function DialogActions(dialogActionsProps: DialogActionsProps)
	local props: DialogActionsProps = withDefaults(dialogActionsProps, defaultProps)
	local variants = useDialogVariants()
	local layout = useDialogLayout()

	local actions = React.useMemo(function()
		if not props.actions then
			return nil :: React.ReactNode
		end
		return React.createElement(
			React.Fragment,
			nil,
			Dash.map(props.actions, function(actionProps, index)
				return React.createElement(
					Button,
					Dash.join(actionProps, {
						key = `{index}-{actionProps.text}`,
						Name = actionProps.text,
						LayoutOrder = index,
						fillBehavior = FillBehavior.Fill,
					})
				)
			end)
		)
	end, { props.actions })

	local isSmall = layout.responsiveSize == DialogSize.Small
	local horizontalOrientation = props.orientation == Orientation.Horizontal or not isSmall
	local verticalOrientation = props.orientation == Orientation.Vertical and isSmall

	return React.createElement(View, {
		tag = "col gap-large auto-y size-full-0",
		LayoutOrder = props.LayoutOrder,
	}, {
		ActionsContainer = React.createElement(View, {
			tag = {
				["gap-large auto-y size-full-0"] = true,
				["row wrap"] = horizontalOrientation,
				["col flex-x-fill"] = verticalOrientation,
			},
			LayoutOrder = 1,
		}, {
			Actions = actions,
		}),
		ActionsLabel = if props.label
			then React.createElement(Text, {
				Text = props.label,
				tag = variants.actionsLabel.tag,
				LayoutOrder = 2,
			})
			else nil,
	})
end

return DialogActions
