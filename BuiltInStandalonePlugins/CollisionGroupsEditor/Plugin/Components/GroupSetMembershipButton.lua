local Roact = require(script.Parent.Parent.Parent.Packages.Roact)
local UILibrary = require(script.Parent.Parent.Parent.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return withLocalization(function(localized)
		return Roact.createElement(GroupButton, {
			Image = "rbxasset://textures/CollisionGroupsEditor/assign.png",
			HoveredImage = "rbxasset://textures/CollisionGroupsEditor/assign-hover.png",
			OnActivated = props.Group.OnMembershipSet,
			Padding = UDim.new(0, 8),
			LayoutOrder = 3,
			Window = props.Window,
			TooltipMessage = localized:getText("Tooltip", "Add"),
		})
	end)
end