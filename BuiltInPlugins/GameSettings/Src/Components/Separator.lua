--[[
	A simple gray rectangle used to separate elements in the page.
	Can also be customized using its Size and Position.

	Props:
		UDim2 Size = UDim2.new(1, 0, 0, 3)
		UDim2 Position = UDim2.new()
		int LayoutOrder = The order this Separator will sort to when placed in a UIListLayout.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Separator = Roact.PureComponent:extend("Separator")

function Separator:render()
	local props = self.props
	local theme = props.Stylizer

	return Roact.createElement("Frame", {
		Size = props.Size or UDim2.new(1, 0, 0, 2),
		Position = props.Position,
		BackgroundColor3 = theme.separator,
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder or 1,
	})
end


Separator = withContext({
	Stylizer = ContextServices.Stylizer,
})(Separator)



return Separator
