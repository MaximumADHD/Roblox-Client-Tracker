--[[
	A function used to construct a PluginWidget component.
	This function is used as a building block to make components for the individual
	types of widgets like Dialogs or DockWidgets.
	Don't use this function directly in your plugin's code! Use DockWidget or Dialog.

	PluginGuis made using this function automatically provide a Focus to their children.
	Documentation on props can be found in Dialog and DockWidget.
]]

game:DefineFastFlag("FixDevFrameworkDockWidgetRestore", false)
game:DefineFastFlag("DevFrameworkPluginWidgetEnabledEvent2", false)
game:DefineFastFlag("DevFrameworkPluginWidgetUseSiblingZIndex", false)
game:DefineFastFlag("DevFrameworkFixCreatePluginWidget", false)

local FFlagFixDevFrameworkDockWidgetRestore = game:GetFastFlag("FixDevFrameworkDockWidgetRestore")
local FFlagDevFrameworkPluginWidgetEnabledEvent2 = game:GetFastFlag("DevFrameworkPluginWidgetEnabledEvent2")
local FFlagDevFrameworkPluginWidgetUseSiblingZIndex = game:GetFastFlag("DevFrameworkPluginWidgetUseSiblingZIndex")
local FFlagDevFrameworkFixCreatePluginWidget = game:GetFastFlag("DevFrameworkFixCreatePluginWidget")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local Focus = ContextServices.Focus

local function createPluginWidget(componentName, createWidgetFunc)
	local PluginWidget = Roact.PureComponent:extend(componentName)

	function PluginWidget:createWidget()
		if FFlagDevFrameworkFixCreatePluginWidget then
			if self.widget or not self.isMounted then
				return
			end
		end

		local props = self.props
		local title = props.Title
		local onClose = props.OnClose

		assert(onClose, "PluginWidget expects an OnClose function.")

		local widget = createWidgetFunc(props)

		if FFlagDevFrameworkFixCreatePluginWidget then
			-- createWidgetFunc can yield, so check we're still alive before continuing
			if not self.isMounted then
				widget:Destroy()
				return
			end
		end

		widget.Name = title or ""
		if FFlagDevFrameworkPluginWidgetUseSiblingZIndex then
			widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Sibling
		else
			widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Global
		end

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

		if FFlagDevFrameworkPluginWidgetEnabledEvent2 then
			-- Connect to enabled changing *after* restore
			-- Otherwise users of this will get 2 enabled changes: one from the onRestore, and the same from Roact.Change.Enabled
			self.widgetEnabledChangedConnection = widget:GetPropertyChangedSignal("Enabled"):Connect(function()
				local callback = self.props[Roact.Change.Enabled]
				if callback and self.widget and self.widget.Enabled ~= self.props.Enabled then
					callback(self.widget)
				end
			end)
		end

		self.focus = Focus.new(widget)
		self.widget = widget

		if FFlagDevFrameworkFixCreatePluginWidget then
			-- Force a rerender now that we have the widget
			self:setState({
				_widgetReady = true,
			})
		end
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
		if FFlagDevFrameworkFixCreatePluginWidget then
			self.isMounted = true

			if self.props.CreateWidgetImmediately then
				self:createWidget()
			else
				spawn(function()
					self:createWidget()
				end)
			end
		else
			self:updateWidget()
		end
	end

	function PluginWidget:didUpdate()
		self:updateWidget()
	end

	function PluginWidget:render()
		if FFlagDevFrameworkFixCreatePluginWidget then
			if not self.widget or not self.focus then
				-- Nothing we can do until the widget is ready to use
				return nil
			end
		else
			if not self.widget then
				self:createWidget()
			end
		end

		return self.focus:createProvider(Roact.createElement(Roact.Portal, {
			target = self.widget,
		}, self.props[Roact.Children]))
	end

	function PluginWidget:willUnmount()
		if FFlagDevFrameworkFixCreatePluginWidget then
			self.isMounted = false
		end

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
