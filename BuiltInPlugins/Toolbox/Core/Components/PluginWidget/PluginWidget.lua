local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local function getTitleNameId(props)
	local title = props.Title or ""
	local name = props.Name or title:gsub("%s", "")
	local id = props.Id or name

	return title, name, id
end

return function(componentName, createWidgetFunc)
	local PluginWidget = Roact.PureComponent:extend(componentName)

	function PluginWidget:init(props)
		self.state = {
			pluginGui = nil
		}

		local title, name, id = getTitleNameId(props)

		self.widget = createWidgetFunc(self, id)

		self.widget.Title = title
		self.widget.Name = name
		self.widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Global

		self.widget:GetPropertyChangedSignal("Enabled"):connect(function(...)
			if self.props[Roact.Change.Enabled] then
				self.props[Roact.Change.Enabled](self.widget, ...)
			end
		end)

		self.widget.AncestryChanged:connect(function(...)
			if self.props[Roact.Event.AncestryChanged] then
				self.props[Roact.Event.AncestryChanged](self.widget, ...)
			end
		end)

		if self.props[Roact.Ref] then
			self.props[Roact.Ref](self.widget)
		end
	end

	function PluginWidget:didUpdate(prevProps, prevState)
		local prevTitle, prevName, _ = getTitleNameId(prevProps)
		local title, name, _ = getTitleNameId(self.props)

		if title ~= prevTitle then
			self.widget.Title = title
		end

		if name ~= prevName then
			self.widget.Name = name
		end

		if self.props.ZIndexBehavior ~= prevProps.ZIndexBehavior then
			self.widget.ZIndexBehavior = self.props.ZIndexBehavior
		end

		if self.props.Enabled ~= prevProps.Enabled then
			self.widget.Enabled = self.props.Enabled
		end
	end

	function PluginWidget:render()
		return Roact.createElement(Roact.Portal, {
			target = self.widget,
		}, self.props[Roact.Children])
	end

	function PluginWidget:didMount()
		self:setState({
			pluginGui = self.widget
		})
	end

	function PluginWidget:willUnmount()
		if self.widget then
			self.widget:Destroy()
		end
	end

	return PluginWidget
end
