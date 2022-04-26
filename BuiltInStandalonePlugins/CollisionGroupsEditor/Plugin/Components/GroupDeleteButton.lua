local Roact = require(script.Parent.Parent.Parent.Packages.Roact)
local UILibrary = require(script.Parent.Parent.Parent.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return withLocalization(function(localized)
		return Roact.createElement(GroupButton, {
			Image = "rbxasset://textures/CollisionGroupsEditor/delete.png",
			HoveredImage = "rbxasset://textures/CollisionGroupsEditor/delete-hover.png",
			OnActivated = props.Group.OnDeleted,
			LayoutOrder = 1,
			Visible = props.Group.Name ~= "Default",
			Window = props.Window,
			TooltipMessage = localized:getText("Tooltip", "Delete"),
		})
	end)
end