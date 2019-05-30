--[[
	A container of CollaboratorItems for the group and its rolesets

	Props:
		string CollaboratorName - Name of the group
		number CollaboratorId - Id of the group

		bool Enabled - Whether the component is enabled or not
		bool HideLastSeparator - Hide the last separator if there is a subsequent collaborator with its own separator
		bool Removable - Whether this collaborator can be removed

		function GroupPermissionChanged - Callback when the group's permission changes
		function RolePermissionChanged - Callback when a role's permission changes
		table Items - Which permissions can be assigned in this collaborator
		table Permissions - Permissions prop
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local ExpandableList = require(Plugin.UILibrary.Components.ExpandableList)

local getThumbnailLoader = require(Plugin.Src.Consumers.getThumbnailLoader)
local CollaboratorItem = require(Plugin.Src.Components.Permissions.CollaboratorItem)
local createFitToContent = require(Plugin.Src.Components.createFitToContent)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local function getLabelForAction(localized, action)
	if action == PermissionsConstants.NoAccessKey then
		return localized.AccessPermissions.ActionDropdown.NoAccessLabel
	elseif action == PermissionsConstants.PlayKey then
		return localized.AccessPermissions.ActionDropdown.PlayLabel
	elseif action == PermissionsConstants.EditKey then
		return localized.AccessPermissions.ActionDropdown.EditLabel
	elseif action == PermissionsConstants.AdminKey then
		return localized.AccessPermissions.ActionDropdown.AdminLabel
	else
		return ""
	end
end

local function getActionForRoleset(props, rolesetProps)
	if rolesetProps.LockedTo then
		return rolesetProps.LockedTo
	end
	
	return props.Permissions[PermissionsConstants.RoleSubjectKey][rolesetProps.Id][PermissionsConstants.ActionKey]
end

local function getRolesetItems(props, localized)
	local permissions = Cryo.List.join(
		{Cryo.Dictionary.join({Key = PermissionsConstants.NoAccessKey, Display = localized.AccessPermissions.ActionDropdown.NoAccessLabel, Description = localized.AccessPermissions.ActionDropdown.NoAccessDescription})},
		props.Items
	)
	
	return permissions
end

local GroupCollaboratorItem = Roact.PureComponent:extend("GroupCollaboratorItem")

function GroupCollaboratorItem:render()
	local props = self.props
	local thumbnailLoader = getThumbnailLoader(self)

	return withLocalization(function(localized)
		local rolesetCollaboratorItems = {}
		local anyLocked = false
		local sameAction = false

		local rolesets = {}
			
		for _,permission in pairs(props.Permissions[PermissionsConstants.RoleSubjectKey]) do
			if permission[PermissionsConstants.GroupIdKey] == props.GroupId then
				local isOwner = game.CreatorType == Enum.CreatorType.Group and props.GroupId == game.CreatorId
				table.insert(rolesets, {Name=permission[PermissionsConstants.SubjectNameKey], Id=permission[PermissionsConstants.SubjectIdKey], LockedTo=(isOwner and permission[PermissionsConstants.SubjectRankKey]==255) and localized.AccessPermissions.ActionDropdown.OwnerLabel or nil, Rank=permission[PermissionsConstants.SubjectRankKey]})
			end
		end
		table.sort(rolesets, function(a,b) return b.Rank < a.Rank end)
		
		for i,rolesetProps in pairs(rolesets) do
			local action = getActionForRoleset(props, rolesetProps)
			if i == 1 then
				sameAction = action
			end

			sameAction = sameAction == action and sameAction or false
			anyLocked = rolesetProps.LockedTo and true or anyLocked
			
			local collaboratorItem = Roact.createElement(CollaboratorItem, {
				LayoutOrder = i,
				Enabled = props.Enabled,
				
				CollaboratorName = rolesetProps.Name,
				CollaboratorId = rolesetProps.Id,
				CollaboratorIcon = "",
				
				Action = rolesetProps.LockedTo or getLabelForAction(localized, action),
				Items = rolesetProps.LockedTo and {} or getRolesetItems(props, localized),
				
				HideLastSeparator = i ~= #rolesets,
				Removable = false,
				
				PermissionChanged = function(newPermission)
					if props.RolePermissionChanged then
						props.RolePermissionChanged(rolesetProps.Id, newPermission)
					end
				end,
			})
			
			rolesetCollaboratorItems["Roleset"..i] = collaboratorItem
		end
		
		local expandableList = Roact.createElement(ExpandableList, {
			TopLevelItem = {
				GroupCollaborator = Roact.createElement(CollaboratorItem, {
					LayoutOrder = 0,
					Enabled = props.Enabled,
					
					CollaboratorName = props.GroupName,
					CollaboratorId = props.GroupId,
					CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.GroupSubjectKey, props.GroupId),
					Action = sameAction and getLabelForAction(localized, sameAction) or localized.AccessPermissions.ActionDropdown.MultipleLabel,
					Items = anyLocked and {} or props.Items,
					
					SecondaryText = props.SecondaryText,
					HideLastSeparator = true,
					Removable = props.Removable or false,
					Removed = props.Removed,
					
					PermissionChanged = function(newPermission)
						props.GroupPermissionChanged(props.GroupId, newPermission)
					end,
				})
			},
			
			Content = {
				RoleCollaborators = Roact.createElement(FitToContent, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
				}, rolesetCollaboratorItems)
			},
		})
		
		return expandableList
	end)
end

return GroupCollaboratorItem