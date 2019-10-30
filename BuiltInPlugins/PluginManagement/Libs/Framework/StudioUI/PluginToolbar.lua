--[[
	A Roact wrapper for a PluginToolbar instance.
	Used to display a toolbar column in the Plugins tab.

	Props:
		string Title = The text which displays below the toolbar.
		function RenderButtons(toolbar) = A function for rendering
			the PluginButtons under this toolbar. Passes the toolbar itself
			as a parameter to be used as the button parent.

	Example:
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "MyPlugin",
			RenderButtons = function(toolbar)
				return {
					Toggle = Roact.createElement(PluginButton, {
						Title = "Toggle",
						Toolbar = toolbar,
						Active = self.state.enabled,
						OnClick = self.toggleEnabled,
					},
				},
			end,
		}),
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)

local PluginToolbar = Roact.PureComponent:extend("PluginToolbar")

function PluginToolbar:init(props)
	assert(props.Title, "PluginToolbar expects a 'Title' prop.")
	assert(props.RenderButtons, "PluginToolbar expects a 'RenderButtons' function.")
end

function PluginToolbar:createToolbar()
	local props = self.props
	local plugin = props.Plugin:get()
	local title = props.Title
	self.toolbar = plugin:CreateToolbar(title)
end

function PluginToolbar:render()
	if not self.toolbar then
		self:createToolbar()
	end

	local props = self.props
	local renderButtons = props.RenderButtons

	local children = renderButtons(self.toolbar)
	if children then
		return Roact.createFragment(children)
	end
end

function PluginToolbar:willUnmount()
	if self.toolbar then
		self.toolbar:Destroy()
	end
end

ContextServices.mapToProps(PluginToolbar, {
	Plugin = ContextServices.Plugin,
})

return PluginToolbar