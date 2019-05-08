--[[
	An item that displays game owner access permissions and can be interacted with to change them
	if the owner is a group. User owners and group owner roles can never be changed.

	Props:
		string OwnerName - Name of collaborator. Displayed in primary label
		string OwnerThumbnail - Icon to display in item (e.g. user headshot, group logo, etc)
		
		bool Enabled - Whether the component is enabled or not
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local CollaboratorItem = require(Plugin.Src.Components.CollaboratorItem)
local GroupCollaboratorItem = nil -- TODO 4/23/2019 (awarwick). Replace when component is created
local createFitToContent = require(Plugin.Src.Components.createFitToContent)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local function getGroupOwnerPermissions(props, localized)
	local permissions = {
		Cryo.Dictionary.join({Key = "Play", Display = localized.AccessPermissions.ActionDropdown.PlayLabel, Description = localized.AccessPermissions.ActionDropdown.PlayDescription}),
		Cryo.Dictionary.join({Key = "Edit", Display = localized.AccessPermissions.ActionDropdown.EditLabel, Description = localized.AccessPermissions.ActionDropdown.EditDescription}),
	}
	
	if props.GroupOwnerUserId and props.GroupOwnerUserId == props.StudioUserId then
		permissions = Cryo.List.join(
			permissions,
			{Cryo.Dictionary.join({Key = "Admin", Display = localized.AccessPermissions.ActionDropdown.ManageLabel, Description = localized.AccessPermissions.ActionDropdown.ManageDescription})}
		)
	end
	
	return permissions
end

local function getUserOwnerPermissions(props)
	return {} -- Owner can never be changed
end

local function GameOwnerWidget(props)
	return withLocalization(function(localized)
		return withTheme(function(theme)
			return Roact.createElement(FitToContent, {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
					LayoutOrder = 0,
					
					Text = localized.Title.GameOwner,
					TextXAlignment = Enum.TextXAlignment.Left,
					
					BackgroundTransparency = 1,
				})),
				
				Owner = Roact.createElement(game.CreatorType == Enum.CreatorType.Group and GroupCollaboratorItem or CollaboratorItem, {
					LayoutOrder = 1,
					
					Removable = false,
					
					-- TODO (awarwick) 4/29/2019 Clean this up when we have GroupCollaboratorItem
					CollaboratorName = props.OwnerName,
					SecondaryText = game.CreatorType ==  Enum.CreatorType.Group and "Manage: 1 roles(s) Edit: N role(s) Play: M roles(s) No access: 0 role(s)" or nil,
					CollaboratorId = game.CreatorId,
					CollaboratorIcon = props.OwnerThumbnail,
					Action = game.CreatorType == Enum.CreatorType.Group and "(Multiple)" or "Owner",
					Enabled = props.Enabled and game.CreatorType ~= Enum.CreatorType.User,
					
					-- TODO (awarwick) 4/29/2019 GroupCollaboratorItem will pass these down to its child role permissions
					Items = game.CreatorType == Enum.CreatorType.Group and getGroupOwnerPermissions(props, localized) or getUserOwnerPermissions(props),
					
					-- TODO (awarwick) 4/24/2019 - Replace with something more meaningful when we have GroupCollaboratorItem
					PermissionChanged = function(newPermission)
						if game.CreatorType == Enum.CreatorType.Group then return end
						
						local oldPermission
						local newPermissions = Cryo.List.map(props.Permissions, function(permission, index)
							if permission.subjectType == game.CreatorType.Name and permission.subjectId == game.CreatorId then
								oldPermission = permission
								return Cryo.Dictionary.join(permission, {action=newPermission})
							else
								return permission
							end
						end)

						-- Needed because dummy dropdowns don't show any real state
						print("Permission changed to", newPermission, "from", oldPermission.action)
						props.PermissionsChanged(newPermissions)
					end,
				}),
			})
		end)
	end)
end

return GameOwnerWidget