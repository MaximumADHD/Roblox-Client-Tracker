--[[
	A function used to construct a PluginWidget component.
	This function is used as a building block to make components for the individual
	types of widgets like Dialogs or DockWidgets.
	Don't use this function directly in your plugin's code! Use DockWidget or Dialog.

	PluginGuis made using this function automatically provide a Focus to their children.
	Documentation on props can be found in Dialog and DockWidget.
]]

-- Only exists in Roblox Studio, and thus not roblox-cli
local StudioWidgetsService
pcall(function()
	StudioWidgetsService = game:GetService("StudioWidgetsService" :: any)
end)

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Focus = ContextServices.Focus

local function createPluginWidget(componentName, createWidgetFunc)
	local PluginWidget = Roact.PureComponent:extend(componentName)
	function PluginWidget:init()
		self.state = {}
	end

	function PluginWidget:createWidget()
		if self.widget or not self.isMounted then
			return
		end

		local props = self.props
		local title = props.Title
		local onClose = props.OnClose

		local widget = createWidgetFunc(props)

		-- createWidgetFunc can yield, so check we're still alive before continuing
		if not self.isMounted then
			widget:Destroy()
			return
		end

		-- TODO STUDIOPLAT-26329: We might want to assert that a title is provided
		widget.Name = title or ""
		widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Sibling

		if widget:IsA("PluginGui") then
			if type(onClose) == "function" then
				widget:BindToClose(onClose)
			end

			if self.props.OnWidgetFocused then
				self.windowFocusedConnection = widget.WindowFocused:Connect(function()
					self.props.OnWidgetFocused(self.widget)
				end)
			end

			if self.props.OnWidgetFocusReleased then
				self.windowFocusReleasedConnection = widget.WindowFocusReleased:Connect(function()
					self.props.OnWidgetFocusReleased(self.widget)
				end)
			end

			-- plugin:CreateDockWidgetPluginGui() blocks until after restore logic has ran
			-- By the time Lua thread resumes, HostWidgetWasRestored has been set and is safe to use
			if widget:IsA("DockWidgetPluginGui") and widget.HostWidgetWasRestored and props.OnWidgetRestored then
				props.OnWidgetRestored(widget.Enabled)
			end

			if widget:IsA("DockWidgetPluginGui") and props.OnWidgetCreated then
				props.OnWidgetCreated(widget.Enabled, widget.HostWidgetWasRestored)
			end
		end

		-- Connect to enabled changing *after* restore
		-- Otherwise users of this will get 2 enabled changes: one from the onRestore, and the same from Roact.Change.Enabled
		self.widgetEnabledChangedConnection = widget:GetPropertyChangedSignal("Enabled"):Connect(function()
			local callback = self.props[Roact.Change.Enabled]
			if callback and self.widget and self.widget.Enabled ~= self.props.Enabled then
				callback(self.widget)
			end
		end)

		self.focus = Focus.new(widget)
		self.widget = widget

		-- Force a rerender now that we have the widget
		self:setState({
			_widgetReady = true,
		})
	end

	function PluginWidget:updateWidget(prevProps)
		local props = self.props
		local enabled = props.Enabled
		local onClose = props.OnClose
		local title = props.Title

		local widget = self.widget
		if widget then
			if enabled ~= nil then
				widget.Enabled = enabled
			end

			if title ~= nil and widget:IsA("PluginGui") then
				widget.Title = title
			end

			if type(onClose) == "function" and onClose ~= prevProps.OnClose and widget:IsA("PluginGui") then
				widget:BindToClose(onClose)
			end

			if widget:IsA("PluginGui") and StudioWidgetsService ~= nil and props.Size ~= prevProps.Size then
				StudioWidgetsService:GetWidgetFromPluginGui(widget):SetFixedSize(props.Size.X, props.Size.Y)
			end
		end
	end

	function PluginWidget:didMount()
		self.isMounted = true

		if self.props.CreateWidgetImmediately then
			self:createWidget()
		else
			task.spawn(function()
				self:createWidget()
			end)
		end
	end

	function PluginWidget:didUpdate(prevProps)
		self:updateWidget(prevProps)
	end

	function PluginWidget:render()
		if not self.widget or not self.focus then
			-- Nothing we can do until the widget is ready to use
			return nil
		end

		return ContextServices.provide({
			self.focus,
		}, {
			Child = Roact.createElement(
				Roact.Portal,
				{
					target = self.widget,
				},
				if self.props.PluginDesign
					then {
						-- Wrapper is used to avoid potential stylelink clashes
						Wrapper = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
						}, self.props[Roact.Children]),
						StyleLink = Roact.createElement("StyleLink", {
							StyleSheet = self.props.PluginDesign,
						}),
					}
					else self.props[Roact.Children]
			),
		})
	end

	function PluginWidget:willUnmount()
		self.isMounted = false

		if self.widgetEnabledChangedConnection then
			self.widgetEnabledChangedConnection:Disconnect()
			self.widgetEnabledChangedConnection = nil
		end

		if self.windowFocusReleasedConnection then
			self.windowFocusReleasedConnection:Disconnect()
			self.windowFocusReleasedConnection = nil
		end

		if self.windowFocusedConnection then
			self.windowFocusedConnection:Disconnect()
			self.windowFocusedConnection = nil
		end

		if self.widget then
			self.widget:Destroy()
			self.widget = nil
		end
	end

	PluginWidget = withContext({
		Plugin = ContextServices.Plugin,
	})(PluginWidget)

	return PluginWidget
end

return createPluginWidget
