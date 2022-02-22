--[[
	This is very simple horizontal DividerLine created for the VersionsHistroy page.

	Necessary props:
	Position, UDim2.
	Size, UDim2.

	Optional props:
	LayoutOrder, will override position if the component is child of a layouter.
]]


local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme

return function(props)
		return Roact.createElement("Frame", {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		Size = props.Size,

		BackgroundColor3 = Color3.fromRGB(151, 151, 151),
		BorderSizePixel = 0,

		LayoutOrder = props.LayoutOrder or 0,
	})
end