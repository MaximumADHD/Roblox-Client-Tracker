--[[
	Creates a QWidgetPluginGui dialog.

	Props:
		table Options = An options table to pass to the Create function.

		bool Enabled = Whether the dialog is currently enabled.
		string Title = The title to display at the top of the dialog.
		string Name = The name of the dialog.
		ZIndexBehavior ZIndexBehavior = The ordering behavior of elements
			in the dialog based on ZIndex.

		function OnClose() = A callback for when the dialog closes.
]]

local Library = script.Parent.Parent.Parent

local Plugin = require(Library.Plugin)
local getPlugin = Plugin.getPlugin
local Roact = require(Library.Parent.Roact)

local Dialog = Roact.PureComponent:extend("Dialog")

function Dialog:init(props)
	local options = props.Options
	local title = props.Title or ""
	local name = props.Name or title
	local id = props.Id or title
	local zIndexBehavior = props.ZIndexBehavior or Enum.ZIndexBehavior.Sibling

	local plugin = getPlugin(self)
	local widget = plugin:CreateQWidgetPluginGui(id, options)
	widget.Name = name
	widget.ZIndexBehavior = zIndexBehavior
	self.widget = widget

	if props.OnClose then
		self.changedConnection = self.widget:GetPropertyChangedSignal("Enabled"):Connect(function()
			if not self.widget.Enabled then
				props.OnClose()
			end
		end)
	end
end

function Dialog:willUpdate()
	local props = self.props
	local enabled = props.Enabled
	local title = props.Title

	if enabled ~= nil then
		self.widget.Enabled = enabled
	end

	if title ~= nil then
		self.widget.Title = title
	end
end

function Dialog:render()
	return self.widget.Enabled and Roact.createElement(Roact.Portal, {
		target = self.widget,
	}, self.props[Roact.Children])
end

function Dialog:willUnmount()
	if self.changedConnection then
		self.changedConnection:Disconnect()
	end
	if self.widget then
		self.widget:Destroy()
	end
end

return Dialog