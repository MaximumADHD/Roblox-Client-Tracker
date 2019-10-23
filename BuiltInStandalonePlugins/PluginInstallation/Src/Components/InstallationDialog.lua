--[[
	A dialog which can appear separate from the main window.
	Used for warnings or errors.

	This Dialog will render its Roact children inside the window.

	Props:
		string TitleKey = The localization key for the title of the widget.
		Vector2 Size = An optional override size for the widget.
]]

local DEFAULT_DIALOG_SIZE = Vector2.new(400, 217)
local BORDER_PADDING = 24
local PROMPT_BUTTON_PADDING = 2
local PROMPT_BUTTON_SIZE = Vector2.new(120, 32)
local TEXT_SIZE = 16

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local StyledDialog = UILibrary.Component.StyledDialog

local InstallationDialog = Roact.PureComponent:extend("InstallationDialog")

function InstallationDialog:render()
	local globals = self.props.globals

	local newProps = Cryo.Dictionary.join(self.props, {
		Resizable = false,
		BorderPadding = BORDER_PADDING,
		ButtonPadding = PROMPT_BUTTON_PADDING,
		ButtonHeight = PROMPT_BUTTON_SIZE.Y,
		ButtonWidth = PROMPT_BUTTON_SIZE.X,
		TextSize = TEXT_SIZE,

		-- this string won't update if the locale changes
		Title = globals.localization:getText("DialogTitle", "InstallPlugin"),

		-- remove unnecessary props
		globals = Cryo.None,
		[Roact.Children] = Cryo.None,
	})
	newProps.Size = newProps.Size or DEFAULT_DIALOG_SIZE
	newProps.Buttons = newProps.Buttons or {
		{
			Key = true,
			-- this string won't update if the locale changes
			Text = globals.localization:getText("Dialog", "Ok"),
			Style = "Primary",
			Active = false,
		},
	}

	return Roact.createElement(ServiceWrapper, globals, {
		Dialog = Roact.createElement(StyledDialog, newProps, self.props[Roact.Children]),
	})
end

return InstallationDialog