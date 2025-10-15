local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local useOverlay = require(script.Parent.useOverlay)

return {
	name = "useOverlay",
	summary = "Provides access to the overlay",
	story = function()
		local overlay = useOverlay()
		local name = if overlay ~= nil then overlay:GetFullName() else "N/A"
		local text = `Overlay Name: {name}`

		return React.createElement(Text, {
			tag = "auto-y align-x-center size-full-0 text-wrap",
			Text = text,
		})
	end,
}
