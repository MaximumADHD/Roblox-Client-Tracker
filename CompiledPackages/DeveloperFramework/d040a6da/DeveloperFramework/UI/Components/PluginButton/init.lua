--[[
	A Roact wrapper for a PluginButton instance.
	Often used in the RenderButtons function of a PluginToolbar component.
	Used to display a button inside a Toolbar on the Plugins tab.

	Required Props:
		string Title: The text which displays below the button.
		Instance Toolbar: The toolbar instance to insert this PluginButton into.
		callback OnClick: A callback for when the button was clicked.

	Optional Props:
		string Id: The unique (within the plugin) non-localized id for the button. Falls back to Title if this is nil
		string Icon: The button's icon image.
		string Tooltip: The tooltip display text when the user hovers
			their mouse over the button.
		boolean Active: Whether the button is currently highlighted to show
			that it is in an active state.
		boolean DropdownActive: Whether the dropdown button is currently highlighted to show
			that it is in an active state.
		boolean Enabled: Whether the button is interactive
		boolean ClickableWhenViewportHidden: Whether the button is enabled
			when the main window is not active
		string ButtonType: The type of button to create. Can be "Dropdown" or defaults to a normal button
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck

local PluginButton = Roact.PureComponent:extend("PluginButton")
Typecheck.wrap(PluginButton, script)

local FFlagPluginDynamicButtonIcon = game:DefineFastFlag("DynamicPluginButtonIcon", false)

function PluginButton:createButton()
	local props = self.props
	local toolbar = props.Toolbar
	local title = props.Title
	local id = props.Id or title
	local tooltip = props.Tooltip or ""
	local icon = props.Icon or ""
	local onClick = props.OnClick
	local onDropdownClick = props.OnDropdownClick

	assert(
		typeof(title) == "string",
		string.format("PluginButton requires Title to be of type string not %s", typeof(title))
	)

	self.button = if props.ButtonType == "Dropdown"
		then toolbar:CreatePopupButton(id, tooltip, icon, title)
		else toolbar:CreateButton(id, tooltip, icon, title)

	self.button.ClickableWhenViewportHidden = (props.ClickableWhenViewportHidden == nil) and true
		or props.ClickableWhenViewportHidden

	self.button.Click:Connect(function()
		onClick()

		-- We need to call this here because when the user clicks a button,
		-- the engine automagically toggles the activate state of the
		-- button. This call will force the activated state back to what our
		-- props specify it should be.
		-- The case where this matters is one-shot action buttons which have
		-- the active prop hardcoded to false. These should not become
		-- activated after being clicked.
		self:updateButton()
	end)

	if props.ButtonType == "Dropdown" and onDropdownClick then
		self.button.DropdownClick:Connect(onDropdownClick)
	end
end

function PluginButton:updateButton()
	local props = self.props
	local enabled = props.Enabled
	local active = props.Active
	local dropdownActive = props.DropdownActive

	self.button:SetActive(active)
	if enabled ~= nil then
		self.button.Enabled = enabled
	end

	if dropdownActive ~= nil then
		self.button:SetDropdownActive(dropdownActive)
	end

	if FFlagPluginDynamicButtonIcon then
		local icon = props.Icon or ""
		if icon ~= self.button.Icon then
			self.button.Icon = icon
		end
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
