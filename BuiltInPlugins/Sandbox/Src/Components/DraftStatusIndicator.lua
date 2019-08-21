--[[
    An indicator for the status of a draft

	Props:
	Icon - icon for the status indicator
    Tooltip - text for the icon's tooltip
--]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local DraftStatusIndicator = Roact.PureComponent:extend("DraftStatusIndicator")

function DraftStatusIndicator:render()
	-- TODO (awarwick) 8/13/2019 Support tooltips CLISTUDIO-19341
	local tooltip = self.props.Tooltip
	local icon = self.props.Icon

	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, 0, 0.5, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),

		Image = icon,
	})
end

return DraftStatusIndicator