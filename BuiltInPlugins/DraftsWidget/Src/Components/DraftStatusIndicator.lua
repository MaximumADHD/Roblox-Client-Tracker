--[[
	An indicator for the status of a draft

	Props:
	Icon - icon for the status indicator
	Tooltip - text for the icon's tooltip
--]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)

local FFlagDevFrameworkMigrateTooltip = Framework.SharedFlags.getFFlagDevFrameworkMigrateTooltip()
local FFlagRemoveUILibraryButton = Framework.SharedFlags.getFFlagRemoveUILibraryButton()
local Tooltip = if FFlagDevFrameworkMigrateTooltip then Framework.UI.Tooltip else UILibrary.Component.Tooltip

local DraftStatusIndicator = Roact.PureComponent:extend("DraftStatusIndicator")

function DraftStatusIndicator:render()
	local tooltip = self.props.Tooltip
	local icon = self.props.Icon

	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = 1,
		Size = if FFlagRemoveUILibraryButton then UDim2.fromOffset(16, 16) else UDim2.new(0.5, 0, 0.5, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),

		Image = icon,
	}, {
		Tooltip = tooltip and Roact.createElement(Tooltip, {
			Text = tooltip,
			Enabled = true,
		})
	})
end

return DraftStatusIndicator
