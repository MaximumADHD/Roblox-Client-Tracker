local Roact = require(script.Parent.Parent.Parent.modules.roact)

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return Roact.createElement(GroupButton, {
		Image = "rbxasset://textures/CollisionGroupsEditor/rename.png",
		HoveredImage = "rbxasset://textures/CollisionGroupsEditor/rename-hover.png",
		OnActivated = function()
			props.Group.OnRenamed()
		end,
		LayoutOrder = 2,
		Visible = props.Group.Name ~= "Default",
		Window = props.Window,
		TooltipMessage = "Rename this group.",
	})
end