--[[
	useDialog is a hook that creates a QWidgetPluginGui corresponding to a
	QDialog and renders a standard dialog design into it. Internally, it wraps
	around a `useDialogWidget` call, returning the same values.

	The standard dialog design is sourced from this Figma:
	https://www.figma.com/file/bvuKcCdA3fecmwDcvZGTDu/Studio-Dialogs

	The design comes in several "intents" (styles):
		Confirmation: Green checkmark icon
		Destructive: Yellow hazard icon, red primary button
		Error: Red X icon
		Information: Blue exclamation icon
		Question: Blue question icon
		Warning: Yellow hazard icon

	Properties:
		Intent: any of the intent names above
			The high-level intent of the dialog's request to the user, which
			maps to a particular variation of the design
		Heading: string
			Text displayed at the top of the dialog, in bold
		Body: string
			Text displayed under the heading, in normal weight
		Contents: ReactNode | { [number | string]: ReactNode } (optional)
			Additional custom elements to display under the body
		ActionPrimary: DialogAction.Type (optional)
			The default choice of the dialog, displayed as a primary button
			and aligned to the right side of the dialog
			See `src/Util/DialogAction.lua` for more info.
		ActionSecondary: DialogAction.Type (optional)
			An additional choice, displayed as a button aligned to the right
			side of the dialog but to the left of the primary action button
		ActionTertiary: DialogAction.Type (optional)
			For rare circumstances, a third choice, displayed as a button
			aligned to the left side of the dialog
		DisableTitleBar: boolean? (default false)
			Whether the dialog includes a exit button at the title bar
		ToolDialog: boolean? (default false)
			Whether the dialog renders as a ToolDialog. This is similar to a
			modal but doesn't block input and also allows menus and other
			dialogs to raise above it
		Modal: boolean? (default false)
			Whether the dialog stays on top of Studio and blocks input to the
			application
		OnClosed: () -> ()?
			Callback that is fired when the dialog is closed by the user via the
			window title bar close button. This is NOT fired when the returned
			`hide` callback is invoked
		Title: string? (default "Roblox Studio")
			Text displayed in the dialog's window title bar
		WidgetRef: React.Ref<QWidgetPluginGui>?
			React ref that will be bound to the created QWidgetPluginGui. Useful
			for unit tests and extra customization
		Width: number? (default 400)
			Width of the dialog, in pixels. Enforces a minimum value of 400

	Returns:
		show: () -> ()
			Callback that shows the dialog on invocation
		hide: () -> ()
			Callback that hides the dialog on invocation
		visible: boolean
			Whether the dialog is currently visible

	Example usage:
		-- Button component that, when clicked, shows a standard warning dialog
		local function ButtonThatShowsDialog()
			local show, hide, visible = useDialog({
				Intent = "Warning",
				Heading = "Are you sure?",
				Body = "Performing this action may break expected behavior.",
				ActionPrimary = DialogAction.NO,
				ActionSecondary = DialogAction.YES,
				Modal = true,
			})
			return React.createElement("TextButton", {
				Text = "Show Dialog",
				[React.Event.Activated] = show,
			})
		end
]]
--!strict

local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local ReactRoblox = require(Framework.Util.ReactRoblox)

local DialogAction = require(Framework.Util.DialogAction)

local UseDialogLayout = require(Framework.UI.Components.UseDialogLayout)
local styles = require(Framework.UI.Components.UseDialogLayout.styles)

local Localization = require(Framework.UI.ContextServices.Localization)

local useDialogWidget = require(Framework.UI.Hooks.useDialogWidget)

local MINIMUM_SIZE: Vector2 = styles:GetAttribute("MinimumDialogSize")

export type Intent = "Confirmation" | "Destructive" | "Error" | "Information" | "Question" | "Warning"

-- TODO: When require(React) indirection is removed from DF, actual ReactNode/Ref types
type ReactNode = any
type ReactNodes = ReactNode | { [number | string]: ReactNode }
type ReactRef<T> = { current: T? }

export type Props = {
	Intent: Intent,

	Heading: string,
	Body: string,
	Contents: ReactNodes?,

	ActionPrimary: DialogAction.Type?,
	ActionSecondary: DialogAction.Type?,
	ActionTertiary: DialogAction.Type?,

	DisableTitleBar: boolean?,
	Modal: boolean?,
	OnClosed: () -> ()?,
	Title: string?,
	ToolDialog: boolean?,
	WidgetRef: ReactRef<QWidgetPluginGui>?,
	Width: number?,
}

local function useDialogAction(action: DialogAction.Type?, hideRef: ReactRef<() -> ()>): UseDialogLayout.ActionProps?
	local localization = Localization.use()

	local actionProps = React.useMemo(function(): UseDialogLayout.ActionProps?
		if not action then
			return nil
		end

		assert(action, "Luau doesn't refine the type of `action` here")
		local label = action.Label
		local labelStr: string = if typeof(label) == "string"
			then label
			elseif label.Project then localization:getProjectText(label.Project, label.Scope, label.Key)
			else localization:getText(label.Scope, label.Key)

		return {
			Label = labelStr,
			Enabled = if action.Enabled ~= nil then action.Enabled else true,
			OnActivated = function()
				if action.HidesDialog and hideRef.current then
					hideRef.current()
				end
				if action.OnActivated then
					action.OnActivated()
				end
			end,
		}
	end, { action, hideRef } :: { unknown })

	return actionProps
end

local function useDialog(props: Props)
	assert(ReactRoblox, "ReactRoblox is required for useDialog.")

	local fixedWidth = if props.Width then math.max(MINIMUM_SIZE.X, props.Width) else MINIMUM_SIZE.X
	local size, setSize = React.useState(Vector2.new(fixedWidth, MINIMUM_SIZE.Y))

	-- Cyclic dependency (actions > hide callback > useDialogWidget > actions)
	-- So use a ref here and set the value after receiving hide callback
	local hideRef = React.useRef(nil)
	local actionPrimary = useDialogAction(props.ActionPrimary, hideRef)
	local actionSecondary = useDialogAction(props.ActionSecondary, hideRef)
	local actionTertiary = useDialogAction(props.ActionTertiary, hideRef)

	-- Contents element
	-- We wrap the provided element(s) in an additional Frame to guarantee
	-- ordering via LayoutOrder, and allow the user to specify their own layout
	-- internal to the contents.
	local contents = if props.Contents
		then React.createElement("Frame", {
			BackgroundTransparency = 1,
			[React.Tag] = "X-FitY",
		}, props.Contents)
		else nil

	local show, hide, visible = useDialogWidget({
		Contents = React.createElement(UseDialogLayout, {
			Body = props.Body,
			Heading = props.Heading,
			Width = fixedWidth,

			ActionPrimary = actionPrimary,
			ActionSecondary = actionSecondary,
			ActionTertiary = actionTertiary,

			OnSizeChanged = setSize,
			[React.Tag] = props.Intent,
		}, {
			Contents = contents,
		}),
		Size = size,

		DisableTitleBar = props.DisableTitleBar,
		Modal = props.Modal,
		OnClosed = props.OnClosed,
		Title = props.Title,
		ToolDialog = props.ToolDialog,
		WidgetRef = props.WidgetRef,
	})

	hideRef.current = hide

	return show, hide, visible
end

return useDialog
