local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local getBuilderIconForKeycode = require(script.Parent.getBuilderIconForKeycode)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)

return {
	name = "getBuilderIconForKeycode",
	story = function(props): React.ReactNode
		local icon = getBuilderIconForKeycode(props.controls.keycode)

		if icon then
			return React.createElement(Icon, {
				name = icon,
			})
		else
			return React.createElement(Text, {
				Text = `No BuilderIcon associated with: {props.controls.keycode}`,
				tag = "text-align-x-left size-full-0 auto-y",
			})
		end
	end,
	controls = {
		keycode = Dash.values(Enum.KeyCode:GetEnumItems()),
	},
}
