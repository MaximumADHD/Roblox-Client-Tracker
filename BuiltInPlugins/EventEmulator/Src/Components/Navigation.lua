--[[
	Navbar at the top of the plugin. Clicking a tab changes what displays
	in the viewport.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local Navigation = Roact.PureComponent:extend("Navigation")


function Navigation:render()
	local theme = self.props.Theme
	local sizes = theme:get("Sizes")
	local position = theme:get("Position")
	local text = theme:get("Text")

	-- TODO: Change from TextLabel to a dropdown
	-- sworzalla 4/13/20
	return Roact.createElement("TextLabel", {
		Text = "Roblox Event",
		Size = UDim2.new(1, 0, 0, sizes.NavHeight),
		Position = position.Navigation,
		BackgroundTransparency = 1,
		TextColor3 = text.BrightText.Color,
	})
end

ContextServices.mapToProps(Navigation, {
	Theme = ContextServices.Theme,
})

return Navigation