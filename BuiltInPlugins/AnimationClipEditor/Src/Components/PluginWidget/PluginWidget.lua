local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local function getTitleNameId(props)
	local title = props.Title or ""
	local name = props.Name or title:gsub("%s", "")
	local id = props.Id or name

	return title, name, id
end

return function(componentName, createWidgetFunc)
	local PluginWidget = Roact.PureComponent:extend(componentName)

	function PluginWidget:init(props)
		local title, name, id = getTitleNameId(props)

		self.widget = createWidgetFunc(self, id)

		if self.widget:IsA("PluginGui") then
			self.widget.Title = title
		end
		self.widget.Name = name
		self.widget.ZIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Global

		if self.props[Roact.Ref] then
			self.props[Roact.Ref](self.widget)
		end

		if self.props[Roact.Change.Enabled] then
			self.changedConnection = self.widget:GetPropertyChangedSignal("Enabled"):Connect(function()
				self.props[Roact.Change.Enabled](self.widget.Enabled)
			end)
		end
	end

	function PluginWidget:didUpdate(prevProps, prevState)
		local prevTitle, prevName, _ = getTitleNameId(prevProps)
		local title, name, _ = getTitleNameId(self.props)

		if title ~= prevTitle and self.widget:IsA("PluginGui") then
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

	function PluginWidget:willUnmount()
		if self.changedConnection then
			self.changedConnection:Disconnect()
		end
		if self.widget then
			self.widget:Destroy()
		end
	end

	return PluginWidget
end
