--[[
	useDialogWidget is a hook that creates a QWidgetPluginGui corresponding to
	a QDialog and mounts a React tree into it. It manages its own visibility
	state and only renders child nodes if the dialog is visible.

	NOTE: If you want a dialog with a standardized design, use `useDialog`
	instead.

	Properties:
		Contents: ReactNode | { [number | string]: ReactNode }
			React elements to be rendered into the QWidgetPluginGui
		Size: Vector2
			Size of the dialog. Changing this value between renders will resize
			the currently existing QWidgetPluginGui
		Modal: boolean? (default false)
			Whether the dialog stays on top of Studio and blocks input to the
			application
		ToolDialog: boolean? (default false)
			Whether the dialog renders as a ToolDialog. This is similar to a
			modal but doesn't block input and also allows menus and other
			dialogs to raise above it
		OnClosed: () -> ()?
			Callback that is fired when the dialog is closed by the user via the
			window title bar close button. This is NOT fired when the returned
			`hide` callback is invoked
		Title: string? (default "Roblox Studio")
			Text displayed in the dialog's window title bar
		WidgetRef: React.Ref<QWidgetPluginGui>?
			React ref that will be bound to the created QWidgetPluginGui. Useful
			for unit tests and extra customization

	Returns:
		show: () -> ()
			Callback that shows the dialog on invocation
		hide: () -> ()
			Callback that hides the dialog on invocation
		visible: boolean
			Whether the dialog is currently visible

	Example usage:
		-- Button component that, when clicked, shows a 400px x 400px QDialog
		-- with a red background
		local function ButtonThatShowsDialogWidget()
			local show, hide, visible = useDialogWidget({
				Contents = React.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = Color3.new(1, 0, 0),
				}),
				Size = Vector2.new(400, 400),
			})
			return React.createElement("TextButton", {
				Text = "Show Dialog",
				[React.Event.Activated] = show,
			})
		end
]]
--!strict

local HttpService = game:GetService("HttpService")
-- Only exists in Roblox Studio, and thus not roblox-cli
local StudioWidgetsService = nil
pcall(function()
	StudioWidgetsService = game:GetService("StudioWidgetsService" :: any)
end)

local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local ReactRoblox = require(Framework.Util.ReactRoblox)

local Design = require(Framework.UI.ContextServices.Design)
local Focus = require(Framework.UI.ContextServices.Focus)
local Localization = require(Framework.UI.ContextServices.Localization)
local Mouse = require(Framework.UI.ContextServices.Mouse)
local Plugin = require(Framework.UI.ContextServices.Plugin)
local provide = require(Framework.UI.ContextServices.provide)

local StudioTheme = require(Framework.Style.Themes.StudioTheme)

local isTestEnvironment = require(Framework.TestHelpers.isTestEnvironment)

-- TODO: When require(React) indirection is removed from DF, actual ReactNode/Ref types
type ReactNode = any
type ReactNodes = ReactNode | { [number | string]: ReactNode }
type ReactRef<T> = { current: T? }

export type Props = {
	Contents: ReactNodes,
	Size: Vector2,
	Modal: boolean?,
	OnClosed: () -> ()?,
	Title: string?,
	ToolDialog: boolean?,
	WidgetRef: ReactRef<QWidgetPluginGui>?,
	DisableTitleBar: boolean?,
}

local function useDialogWidget(props: Props)
	assert(ReactRoblox, "useDialogWidget requires ReactRoblox")

	local designContext = Design.use()
	local localizationContext = Localization.use()
	local mouseContext = Mouse.use()
	local pluginContext = Plugin.use()

	local plugin = pluginContext:get()

	local mount, setMount = React.useState({
		root = nil,
		widget = nil,
	})

	local visible: boolean, setVisible = React.useState(false)
	local show: () -> () = React.useCallback(function()
		setVisible(true)
	end, { setVisible })
	local hide: () -> () = React.useCallback(function()
		setVisible(false)
	end, { setVisible })

	-- Mount the widget and React root
	React.useEffect(function()
		local id = "Dialog" .. HttpService:GenerateGUID()
		local widget = plugin:CreateQWidgetPluginGui(id, {
			Id = id,
			InitialEnabled = false,
			ToolDialog = props.ToolDialog,
			Modal = props.Modal,
			-- Not taken as effect dependency; this is the initial size
			Size = props.Size,
			DisableTitleBar = props.DisableTitleBar,
		})
		widget.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		local root = ReactRoblox.createRoot(widget)
		setMount({
			root = root,
			widget = widget,
		})

		return function()
			setMount({
				root = nil,
				widget = nil,
			})
			task.defer(function()
				root:unmount()
				widget:Destroy()
			end)
		end
	end, { props.Modal, props.DisableTitleBar })

	-- Set props.ref.current to the widget
	React.useEffect(function()
		if props.WidgetRef then
			props.WidgetRef.current = mount.widget
		end
		return function()
			if props.WidgetRef then
				props.WidgetRef.current = nil
			end
		end
	end, { props.WidgetRef, mount.widget } :: { unknown })

	-- Update size of existing widget when size changes
	React.useEffect(function()
		if mount.widget and mount.widget:IsA("PluginGui") and StudioWidgetsService then
			(StudioWidgetsService :: any):GetWidgetFromPluginGui(mount.widget):SetFixedSize(props.Size.X, props.Size.Y)
		end
	end, { mount.widget, props.Size } :: { unknown })

	-- Set title of existing widget when title changes
	local title = if props.Title then props.Title else "Roblox Studio"
	React.useEffect(function()
		if mount.widget then
			mount.widget.Name = title
			-- MockPlugin:CreateQWidgetPluginGui returns a normal ScreenGui
			if mount.widget:IsA("PluginGui") then
				mount.widget.Title = title
			end
		end
	end, { mount.widget, title } :: { unknown })

	-- Set dialog visibility
	React.useEffect(function()
		if mount.widget then
			mount.widget.Enabled = visible
		end
	end, { mount.widget, visible } :: { unknown })

	-- Set dialog close callback
	React.useEffect(function()
		-- MockPlugin:CreateQWidgetPluginGui returns a normal ScreenGui
		if mount.widget and mount.widget:IsA("PluginGui") then
			mount.widget:BindToClose(function()
				if props.OnClosed then
					props.OnClosed()
				end
				hide()
			end)
		end
		return function()
			if mount.widget and mount.widget:IsA("PluginGui") then
				mount.widget:BindToClose()
			end
		end
	end, { mount.widget, hide, props.OnClosed } :: { unknown })

	if mount.widget and mount.root then
		if visible then
			mount.root:render(provide(
				{
					designContext,
					Focus.new(mount.widget),
					localizationContext,
					mouseContext,
					pluginContext,
					if isTestEnvironment() then StudioTheme.mock() else StudioTheme.new(),
				},
				React.createElement(React.Fragment, nil, {
					React.createElement(React.Fragment, nil, props.Contents),
					StyleLink = React.createElement("StyleLink", {
						StyleSheet = designContext:get(),
					}),
				})
			))
		else
			-- Explicitly render nothing if the widget is invisible; this
			-- ensures all child nodes are unmounted so effects don't persist
			-- while the dialog is inactive.
			mount.root:render(nil)
		end
	end

	return show, hide, visible
end

return useDialogWidget
