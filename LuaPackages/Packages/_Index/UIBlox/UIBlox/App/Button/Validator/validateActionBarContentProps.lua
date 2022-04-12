local Validator = script.Parent
local Button = Validator.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local validateButtonProps = require(Button.validateButtonProps)
local IconButton = require(Button.IconButton)
local validateIconButtonProps = IconButton.validateProps

local t = require(Packages.t)

return t.strictInterface({
	-- buttons: A table of button tables that contain props that PrimaryContextualButton allow.
	button = t.optional(t.strictInterface({
		props = validateButtonProps,
	})),

	-- icons: A table of button tables that contain props that IconButton allow.
	icons = t.optional(t.array(t.strictInterface({
		props = validateIconButtonProps,
	}))),
	-- Indicate whether the button should be rendered at start of the action bar. By default, the button is
	-- rendered at the end of the component.
	enableButtonAtStart = t.optional(t.boolean),
})
