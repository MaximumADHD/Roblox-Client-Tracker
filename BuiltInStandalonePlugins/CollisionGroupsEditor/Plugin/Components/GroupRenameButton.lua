local Roact = require(script.Parent.Parent.Parent.Packages.Roact)
local UILibrary = require(script.Parent.Parent.Parent.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local GroupButton = require(script.Parent.GroupButton)

return function(props)
	return withLocalization(function(localized)
		return Roact.createElement(GroupButton, {
			Image = "rbxasset://textures/CollisionGroupsEditor/rename.png",
			HoveredImage = "rbxasset://textures/CollisionGroupsEditor/rename-hover.png",
			OnActivated = function()
				props.Group.OnRenamed()
			end,
			LayoutOrder = 2,
			Visible = props.Group.Name ~= "Default",
			Window = props.Window,
			TooltipMessage = localized:getText("Tooltip", "Rename"),
		})
	end)
end