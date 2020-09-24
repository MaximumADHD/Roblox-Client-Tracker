--[[
	A function used to construct a PluginWidget component.
	This function is used as a building block to make components for the individual
	types of widgets like Dialogs or DockWidgets.
	Don't use this function directly in your plugin's code! Use DockWidget or Dialog.

	PluginGuis made using this function automatically provide a Focus to their children.
	Documentation on props can be found in Dialog and DockWidget.
]]

game:DefineFastFlag("FixDevFrameworkDockWidgetRestore", false)
game:DefineFastFlag("DevFrameworkPluginWidgetEnabledEvent", false)

local FFlagFixDevFrameworkDockWidgetRestore = game:GetFastFlag("FixDevFrameworkDockWidgetRestore")
local FFlagDevFrameworkPluginWidgetEnabledEvent = game:GetFastFlag("DevFrameworkPluginWidgetEnabledEvent")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Focus = ContextServices.Focus

local function createPluginWidget(componentName, createWidgetFunc)
	local PluginWidget = Roact.PureComponent:extend(componentName)

	function PluginWidget:createWidget()
		local props = self.props
		local title = props.Title
		local onClose = props.OnClose

		assert(onClose, "PluginWidget expects an OnClose function.")

		local widget = createWidgetFunc(props)
		widget.Name = title or ""
		widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Global

		if widget:IsA("PluginGui") then
			widget:BindToClose(onClose)

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

			if FFlagFixDevFrameworkDockWidgetRestore then
				-- plugin:CreateDockWidgetPluginGui() blocks until after restore logic has ran
				-- By the time Lua thread resumes, HostWidgetWasRestored has been set and is safe to use
				if widget:IsA("DockWidgetPluginGui") and widget.HostWidgetWasRestored and props.OnWidgetRestored then
					props.OnWidgetRestored(widget.Enabled)
				end
			else
				if widget:IsA("DockWidgetPluginGui") and props.OnWidgetRestored then
					widget:GetPropertyChangedSignal("HostWidgetWasRestored"):Connect(function()
						-- The widget restore logic does not correctly set the Enabled state
						-- until one frame after setting the HostWidgetWasRestored property.
						-- Because of this, we have to wait.
						wait()
						props.OnWidgetRestored(widget.Enabled)
					end)
				end
			end
		end

		if FFlagDevFrameworkPluginWidgetEnabledEvent then
			-- Connect to enabled changing *after* restore
			-- Otherwise users of this will get 2 enabled changes: one from the onRestore, and the same from Roact.Change.Enabled
			self.widgetEnabledChangedConnection = widget:GetPropertyChangedSignal("Enabled"):Connect(function()
				if self.props[Roact.Change.Enabled] then
					self.props[Roact.Change.Enabled](self.widget)
				end
			end)
		end

		self.focus = Focus.new(widget)
		self.widget = widget
	end

	function PluginWidget:updateWidget()
		local props = self.props
		local enabled = props.Enabled
		local title = props.Title

		local widget = self.widget
		if widget then
			if enabled ~= nil then
				widget.Enabled = enabled
			end

			if title ~= nil and widget:IsA("PluginGui") then
				widget.Title = title
			end
		end
	end

	function PluginWidget:didMount()
		self:updateWidget()
	end

	function PluginWidget:didUpdate()
		self:updateWidget()
	end

	function PluginWidget:render()
		if not self.widget then
			self:createWidget()
		end

		return self.focus:createProvider(Roact.createElement(Roact.Portal, {
			target = self.widget,
		}, self.props[Roact.Children]))
	end

	function PluginWidget:willUnmount()
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

	ContextServices.mapToProps(PluginWidget, {
		Plugin = ContextServices.Plugin,
	})

	return PluginWidget
end

return createPluginWidget
