--[[
	A Roact wrapper for a PluginButton instance.
	Often used in the RenderButtons function of a PluginToolbar component.
	Used to display a button inside a Toolbar on the Plugins tab.

	Required Props:
		string Title: The text which displays below the button.
		Instance Toolbar: The toolbar instance to insert this PluginButton into.
		callback OnClick: A callback for when the button was clicked.

	Optional Props:
		string Icon: The button's icon image.
		string Tooltip: The tooltip display text when the user hovers
			their mouse over the button.
		boolean Active: Whether the button is currently highlighted to show
			that it is in an active state.
		boolean Enabled: Whether the button is interactive
		boolean ClickableWhenViewportHidden: Whether the button is enabled
			when the main window is not active
]]
local FFlagAssetManagerLuaCleanup1 = settings():GetFFlag("AssetManagerLuaCleanup1")
local FFlagMakePluginsActivatableInScripts = game:DefineFastFlag("MakePluginsActivatableInScripts", false)

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck

local PluginButton = Roact.PureComponent:extend("PluginButton")
Typecheck.wrap(PluginButton, script)

function PluginButton:createButton()
	local props = self.props
	local toolbar = props.Toolbar
	local title = props.Title
	local tooltip = props.Tooltip or ""
	local icon = props.Icon or ""
	local onClick = props.OnClick


	if FFlagAssetManagerLuaCleanup1 then
		assert(typeof(title) == "string", string.format("PluginButton requires Title to be of type string not %s", typeof(title)))
	end

	self.button = toolbar:CreateButton(title, tooltip, icon)

	if FFlagMakePluginsActivatableInScripts then
		self.button.ClickableWhenViewportHidden = props.ClickableWhenViewportHidden == nil and true or props.ClickableWhenViewportHidden
	end

	self.button.Click:Connect(onClick)
end

function PluginButton:updateButton()
	local props = self.props
	local enabled = props.Enabled
	local active = props.Active
	self.button:SetActive(active)
	if enabled ~= nil then
		self.button.Enabled = enabled
	end
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
