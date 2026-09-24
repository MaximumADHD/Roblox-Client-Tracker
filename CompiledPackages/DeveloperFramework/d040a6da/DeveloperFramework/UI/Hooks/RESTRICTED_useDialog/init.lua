--[[
	Deprecated:
		Use StudioFoundation.Dialog for new work.

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
			`hide` callback is invoked, nor when DisableTitleBar is set, since the
			close button is the only way for the user to close the dialog
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
			local show, hide, visible = RESTRICTED_useDialog({
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
local Packages = Framework.Parent
local Types = require(Framework.Types)

local React = require(Framework.Util.React)
local ReactRoblox = require(Framework.Util.ReactRoblox)
local StudioUri = require(Framework.Util.StudioUri)

local Foundation = require(Packages.Foundation)

local DialogAction = require(Framework.Util.DialogAction)

local UseDialogLayout = require(Framework.UI.Components.UseDialogLayout)
local styles = require(Framework.UI.Components.UseDialogLayout.styles)

local Design = require(Framework.UI.ContextServices.Design)
local Focus = require(Framework.UI.ContextServices.Focus)
local Localization = require(Framework.UI.ContextServices.Localization)
local Mouse = require(Framework.UI.ContextServices.Mouse)
local Plugin = require(Framework.UI.ContextServices.Plugin)
local provide = require(Framework.UI.ContextServices.provide)

local getStudioThemeNameOrDefault = require(Framework.Style.getStudioThemeNameOrDefault)
local StudioTheme = require(Framework.Style.Themes.StudioTheme)

local isTestEnvironment = require(Framework.TestHelpers.isTestEnvironment)

local useDialogWidget = require(Framework.UI.Hooks.useDialogWidget)

local FFlagDevFrameworkUsesFoundationDialog = require(Framework.SharedFlags.getFFlagDevFrameworkUsesFoundationDialog)()

local MINIMUM_SIZE: Vector2 = styles:GetAttribute("MinimumDialogSize") :: Vector2

export type Intent = "Confirmation" | "Destructive" | "Error" | "Information" | "Question" | "Warning"

-- TODO: When require(React) indirection is removed from DF, actual ReactNode/Ref types
type ReactNode = any
type ReactNodes = ReactNode | { [number | string]: ReactNode }
type ReactRef<T> = { current: T? }

-- Mirrored from StudioFoundation.Types.DialogType
export type StudioFoundationDialogType = "Default" | "Warning" | "Critical" | "Success"

-- Mirrored from StudioFoundation.Types.DialogAction
export type StudioFoundationDialogAction = {
	uri: Types.StudioUri,
	text: string,
	disabled: boolean?,
	onActivated: (Types.StudioUri) -> (),
}

-- Mirrored from StudioFoundation.Types.DialogEscapeButtonAction
export type StudioFoundationDialogEscapeButtonAction = {
	uri: Types.StudioUri,
	onClose: () -> (),
}

-- Mirrored from StudioFoundation.Dialog.Props
export type StudioFoundationDialogProps = {
	uri: Types.StudioUri,

	type: StudioFoundationDialogType,
	title: Foundation.Bindable<string?>,
	description: Foundation.Bindable<string?>,
	image: Foundation.Bindable<string?>,
	showIndeterminateProgressIndicator: Foundation.Bindable<boolean?>,

	primaryAction: StudioFoundationDialogAction?,
	secondaryAction: StudioFoundationDialogAction?,
	tertiaryAction: StudioFoundationDialogAction?,
	escapeAction: StudioFoundationDialogEscapeButtonAction?,

	width: number?,

	children: React.Node?,

	isContentFullBleed: boolean?,
	modal: boolean?,
	tertiaryActionVariant: ("Standard" | "Utility")?,
	toolDialog: boolean?,
}

export type MigrateToStudioFoundation = {
	DialogComponent: (StudioFoundationDialogProps) -> React.Node,
	DialogUri: Types.StudioUri,
}

export type Props = {
	Intent: Intent,

	Heading: string,
	Body: string?,
	Contents: ReactNodes?,

	ActionPrimary: DialogAction.Type?,
	ActionSecondary: DialogAction.Type?,
	ActionTertiary: DialogAction.Type?,

	DisableTitleBar: boolean?,
	Modal: boolean?,
	OnClosed: () -> ()?,
	Title: string?,
	ToolDialog: boolean?,
	--- @warning Unused in StudioFoundation.Dialog
	WidgetRef: ReactRef<QWidgetPluginGui>?,
	Width: number?,

	MigrateToStudioFoundation: MigrateToStudioFoundation?,
}

local intentToTypeMap = setmetatable(
	{
		Confirmation = "Success",
		Destructive = "Warning",
		Error = "Critical",
		Information = "Default",
		Question = "Default",
		Warning = "Warning",
	} :: { [Intent]: StudioFoundationDialogType },
	{
		__index = function(_, key): StudioFoundationDialogType
			warn("Unknown intent: " .. key)
			return "Default"
		end,
	}
)

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

local function useStudioFoundationDialogAction(
	action: DialogAction.Type?,
	hide: () -> (),
	dialogUri: Types.StudioUri
): StudioFoundationDialogAction?
	assert(
		FFlagDevFrameworkUsesFoundationDialog,
		"FFlagDevFrameworkUsesFoundationDialog is required for useStudioFoundationDialogAction"
	)
	local localization = Localization.use()

	local actionProps = React.useMemo(function(): StudioFoundationDialogAction?
		if not action then
			return nil
		end

		local label = action.Label
		local labelStr: string = if typeof(label) == "string"
			then label
			elseif label.Project then localization:getProjectText(label.Project, label.Scope, label.Key)
			else localization:getText(label.Scope, label.Key)

		return {
			uri = StudioUri.child(dialogUri, if typeof(label) == "string" then label else label.Key),
			text = labelStr,
			disabled = action.Enabled == false,
			onActivated = function(_: Types.StudioUri)
				if action.HidesDialog then
					hide()
				end
				if action.OnActivated then
					action.OnActivated()
				end
			end,
		}
	end, { action, hide, dialogUri } :: { unknown })

	return actionProps
end

--[[
	Mounts `dialogElement` into a root detached from the caller's tree, so that a
	hook can render a dialog without its callers rendering a returned element. This
	is required to make the new StudioFoundation.Dialog (which has no visible prop and
	is tied to mount/dismount) be backwards compatible with the original useDialog hook.
]]
local function useDetachedDialogRoot(dialogElement: ReactNode)
	assert(
		FFlagDevFrameworkUsesFoundationDialog,
		"FFlagDevFrameworkUsesFoundationDialog is required for useDetachedDialogRoot"
	)
	local designContext = Design.use()
	local localizationContext = Localization.use()
	local mouseContext = Mouse.use()
	local pluginContext = Plugin.use()

	local mount, setMount = React.useState({
		root = nil,
		container = nil,
	})

	React.useEffect(function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)
		setMount({ root = root, container = container })
		return function()
			setMount({ root = nil, container = nil })
			task.defer(function()
				root:unmount()
				container:Destroy()
			end)
		end
	end, { setMount })

	local contextItems = React.useMemo(function(): { any }?
		local container = mount.container
		if not container then
			return nil
		end
		return {
			designContext,
			Focus.new(container),
			localizationContext,
			mouseContext,
			pluginContext,
			if isTestEnvironment() then StudioTheme.mock() else StudioTheme.new(),
		}
	end, { mount, designContext, localizationContext, mouseContext, pluginContext } :: { unknown })

	React.useEffect(function()
		if not mount.root then
			return
		elseif not dialogElement or not contextItems then
			mount.root:render(nil)
		else
			mount.root:render(provide(
				contextItems,
				React.createElement(Foundation.FoundationProvider, {
					colorMode = getStudioThemeNameOrDefault(),
				}, dialogElement)
			))
		end
	end, { mount, contextItems, dialogElement } :: { unknown })
end

local function RESTRICTED_useDialog(props: Props)
	assert(ReactRoblox, "ReactRoblox is required for useDialog.")

	if FFlagDevFrameworkUsesFoundationDialog and props.MigrateToStudioFoundation ~= nil then
		local migration = props.MigrateToStudioFoundation
		local visible: boolean, setVisible = React.useState(false)
		local show: () -> () = React.useCallback(function()
			setVisible(true)
		end, { setVisible })
		local hide: () -> () = React.useCallback(function()
			setVisible(false)
		end, { setVisible })

		local title, setTitle = React.useBinding("")
		React.useEffect(function()
			setTitle(if props.Title then props.Title else props.Heading)
		end, { props.Title, props.Heading } :: { unknown })

		local description, setDescription = React.useBinding("")
		React.useEffect(function()
			if not props.Title or not props.Heading then
				-- If no Title is provided, the Heading is used as the title, so the description is only the Body
				setDescription(props.Body)
			elseif props.Body then
				-- When Heading and Body are both provided, the old UseDialogLayout would stack two TextLabels
				-- with the same font and size. We can mimic that behavior by simply concatenating the strings.
				setDescription(props.Heading .. "\n\n" .. props.Body)
			else
				setDescription(props.Heading)
			end
		end, { props.Title, props.Heading, props.Body } :: { unknown })

		local uri = migration.DialogUri
		local primaryAction = useStudioFoundationDialogAction(props.ActionPrimary, hide, uri)
		local secondaryAction = useStudioFoundationDialogAction(props.ActionSecondary, hide, uri)
		local tertiaryAction = useStudioFoundationDialogAction(props.ActionTertiary, hide, uri)
		local escapeAction = React.useMemo(function(): StudioFoundationDialogEscapeButtonAction?
			if props.DisableTitleBar then
				return nil
			end
			return {
				uri = StudioUri.child(uri, "Escape"),
				onClose = function()
					if props.OnClosed then
						props.OnClosed()
					end
					hide()
				end,
			}
		end, { props.DisableTitleBar, props.OnClosed, uri, hide } :: { unknown })

		local revealPanel = React.useCallback(function(frame: Frame?)
			local panel = if frame then frame:FindFirstAncestorWhichIsA("PluginGui") else nil
			if panel then
				panel.Enabled = true
			end
		end, {})

		-- Contents element
		-- We wrap the provided element(s) in an additional Frame to guarantee
		-- ordering via LayoutOrder, to allow the user to specify their own layout
		-- internal to the contents, and so that revealPanel has something to hang off of.
		local contents = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Visible = props.Contents ~= nil,
			[React.Tag] = "X-FitY",
			ref = revealPanel,
		}, props.Contents)

		local fixedWidth = if props.Width then math.max(MINIMUM_SIZE.X, props.Width) else MINIMUM_SIZE.X

		local dialogElement = React.useMemo(
			function()
				if not visible then
					return nil
				end
				return React.createElement(migration.DialogComponent, {
					uri = uri,

					type = intentToTypeMap[props.Intent],
					title = title,
					description = description,

					primaryAction = primaryAction,
					secondaryAction = secondaryAction,
					tertiaryAction = tertiaryAction,
					escapeAction = escapeAction,

					width = fixedWidth,

					children = contents,

					modal = props.Modal == true,
					toolDialog = props.ToolDialog,
				})
			end,
			{
				visible,
				uri,
				migration.DialogComponent,
				props.Intent,
				title,
				description,
				primaryAction,
				secondaryAction,
				tertiaryAction,
				escapeAction,
				fixedWidth,
				props.Contents,
				props.Modal,
				props.ToolDialog,
			} :: { unknown }
		)

		useDetachedDialogRoot(dialogElement)

		return show, hide, visible
	else
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
end

return RESTRICTED_useDialog
