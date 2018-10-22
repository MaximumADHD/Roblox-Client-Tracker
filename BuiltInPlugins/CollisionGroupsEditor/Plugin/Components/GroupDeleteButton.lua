local Roact = require(script.Parent.Parent.Parent.Roact)

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return Roact.createElement(GroupButton, {
		Image = "rbxasset://textures/CollisionGroupsEditor/delete.png",
		HoveredImage = "rbxasset://textures/CollisionGroupsEditor/delete-hover.png",
		OnActivated = props.Group.OnDeleted,
		LayoutOrder = 1,
		Visible = props.Group.Name ~= "Default",
		Window = props.Window,
		TooltipMessage = "Delete this group.",
	})
end