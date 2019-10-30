--[[
	A Roact wrapper for a PluginButton instance.
	Often used in the RenderButtons function of a PluginToolbar component.
	Used to display a button inside a Toolbar on the Plugins tab.

	Props:
		string Title = The text which displays below the button.
		toolbar Toolbar = The toolbar instance to insert this PluginButton into.

		function OnClick() = A callback for when the button was clicked.

	Optional Props:
		ContentId Icon = The button's icon image.
		string Tooltip = The tooltip display text when the user hovers
			their mouse over the button.
		bool Active = Whether the button is currently highlighted to show
			that it is in an active state.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local PluginButton = Roact.PureComponent:extend("PluginButton")

function PluginButton:init(props)
	assert(props.Title, "PluginButton expects a 'Title' prop.")
	assert(props.Toolbar, "PluginButton expects a 'Toolbar' prop.")
end

function PluginButton:createButton()
	local props = self.props
	local toolbar = props.Toolbar
	local title = props.Title
	local tooltip = props.Tooltip or ""
	local icon = props.Icon or ""
	local onClick = props.OnClick
	self.button = toolbar:CreateButton(title, tooltip, icon)
	self.button.Click:Connect(onClick)
end

function PluginButton:updateButton()
	local props = self.props
	local active = props.Active
	self.button:SetActive(active)
end

function PluginButton:didMount()
	self:updateButton()
end

function PluginButton:didUpdate()
	self:updateButton()
end

function PluginButton:render()
	if not self.button then
		self:createButton()
	end
end

function PluginButton:willUnmount()
	if self.button then
		self.button:Destroy()
	end
end

return PluginButton