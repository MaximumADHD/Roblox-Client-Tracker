local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)

local getBuilderIconForCurrentPlatform = require(script.Parent.getBuilderIconForCurrentPlatform)

return {
	name = "getBuilderIconForCurrentPlatform",
	story = function(): React.ReactNode
		local icon = getBuilderIconForCurrentPlatform()

		if icon then
			return React.createElement(Icon, {
				name = icon,
			})
		else
			return React.createElement(Text, {
				Text = `No BuilderIcon associated with your current platform.`,
				tag = "size-full-0 auto-y text-align-x-left",
			})
		end
	end,
}
