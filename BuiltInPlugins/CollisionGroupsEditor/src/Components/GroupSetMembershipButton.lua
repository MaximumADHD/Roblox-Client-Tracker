local Roact = require(script.Parent.Parent.Parent.modules.roact)

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return Roact.createElement(GroupButton, {
		Image = "rbxasset://textures/CollisionGroupsEditor/assign.png",
		HoveredImage = "rbxasset://textures/CollisionGroupsEditor/assign-hover.png",
		OnActivated = props.Group.OnMembershipSet,
		Padding = UDim.new(0, 8),
		LayoutOrder = 3,
		Window = props.Window,
		TooltipMessage = "Add selected parts to this group.",
	})
end