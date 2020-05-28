--[[
	An item that displays a list of collaborators who have permissions to access, edit, and manage the game
	These collaborators can be removed or have their permission level changed

	Props:
		PermissionsChanged(newPermissions) - Dispatch function to fire when permissions change
		GroupMetadataChanged(newGroupMetadata) - Dispatch function to fire when groupMetadata changes

		GroupMetadata - Id, Name, and permissions for groups
		Permissions - Permissions for all users/roles
		
		bool Enabled - Whether the component is enabled or not
		int [LayoutOrder = 0]
]]

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")
local FFlagStudioFixUsersLocalizationInAccessPermissions = game:DefineFastFlag("StudioFixUsersLocalizationInAccessPermissions", false)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)
local ThumbnailLoader = require(Plugin.Src.Providers.DEPRECATED_ThumbnailLoaderContextItem)

local UILibrary = require(Plugin.UILibrary)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local getThumbnailLoader = require(Plugin.Src.Consumers.getThumbnailLoader)
local CollaboratorItem = require(Plugin.Src.Components.Permissions.CollaboratorItem)
local GroupCollaboratorItem = require(Plugin.Src.Components.Permissions.GroupCollaboratorItem)
local Separator = require(Plugin.Src.Components.Separator)

local createFitToContent = UILibrary.Component.createFitToContent

local FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local FitToContentList = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local function isStudioUserOwner(props)
	local isUserOwner = props.OwnerType == Enum.CreatorType.User and props.OwnerId == props.StudioUserId
	local isGroupOwner = props.OwnerType == Enum.CreatorType.Group and props.GroupOwnerUserId == props.StudioUserId

	return isUserOwner or isGroupOwner
end

local function getGroupCollaboratorPermissions(props, localized)
	if not props.CanManage then return {} end

	local playDisplayLabel
	local playDescriptionLabel
	local editDisplayLabel
	local editDescriptionLabel
	local adminDisplayLabel
	local adminDescriptionLabel
	if FFlagStudioConvertGameSettingsToDevFramework then
		playDisplayLabel = localized:getText("AccessPermissions", "PlayLabel")
		playDescriptionLabel = localized:getText("AccessPermissions", "PlayDescription")
		editDisplayLabel = localized:getText("AccessPermissions", "EditLabel")
		editDescriptionLabel = localized:getText("AccessPermissions", "EditDescription")
		adminDisplayLabel = localized:getText("AccessPermissions", "AdminLabel")
		adminDescriptionLabel = localized:getText("AccessPermissions", "AdminDescription")
	else
		playDisplayLabel = localized.AccessPermissions.ActionDropdown.PlayLabel
		playDescriptionLabel = localized.AccessPermissions.ActionDropdown.PlayDescription
		editDisplayLabel = localized.AccessPermissions.ActionDropdown.EditLabel
		editDescriptionLabel = localized.AccessPermissions.ActionDropdown.EditDescription
		adminDisplayLabel = localized.AccessPermissions.ActionDropdown.AdminLabel
		adminDescriptionLabel = localized.AccessPermissions.ActionDropdown.AdminDescription
	end

	local permissions = {
		{Key = PermissionsConstants.PlayKey, Display = playDisplayLabel, Description = playDescriptionLabel},
		{Key = PermissionsConstants.EditKey, Display = editDisplayLabel, Description = editDescriptionLabel},
	}

	return permissions
end

local function getUserCollaboratorPermissions(props, localized)
	if not props.CanManage then return {} end

	local playDisplayLabel
	local playDescriptionLabel
	local editDisplayLabel
	local editDescriptionLabel
	local adminDisplayLabel
	local adminDescriptionLabel
	if FFlagStudioConvertGameSettingsToDevFramework then
		playDisplayLabel = localized:getText("AccessPermissions", "PlayLabel")
		playDescriptionLabel = localized:getText("AccessPermissions", "PlayDescription")
		editDisplayLabel = localized:getText("AccessPermissions", "EditLabel")
		editDescriptionLabel = localized:getText("AccessPermissions", "EditDescription")
		adminDisplayLabel = localized:getText("AccessPermissions", "AdminLabel")
		adminDescriptionLabel = localized:getText("AccessPermissions", "AdminDescription")
	else
		playDisplayLabel = localized.AccessPermissions.ActionDropdown.PlayLabel
		playDescriptionLabel = localized.AccessPermissions.ActionDropdown.PlayDescription
		editDisplayLabel = localized.AccessPermissions.ActionDropdown.EditLabel
		editDescriptionLabel = localized.AccessPermissions.ActionDropdown.EditDescription
		adminDisplayLabel = localized.AccessPermissions.ActionDropdown.AdminLabel
		adminDescriptionLabel = localized.AccessPermissions.ActionDropdown.AdminDescription
	end

	local permissions = {
		{Key = PermissionsConstants.PlayKey, Display = playDisplayLabel, Description = playDescriptionLabel},
		{Key = PermissionsConstants.EditKey, Display = editDisplayLabel, Description = editDescriptionLabel},
	}

	return permissions
end

local function permissionLocked(currentPermission, assignablePermissions)
	for _,v in pairs(assignablePermissions) do
		if v.Key == currentPermission then
			return false
		end
	end

	return true
end

local function getLabelForAction(localized, action)
	if FFlagStudioConvertGameSettingsToDevFramework then
		if action == PermissionsConstants.NoAccessKey then
			return localized:getText("AccessPermissions", "NoAccessLabel")
		elseif action == PermissionsConstants.PlayKey then
			return localized:getText("AccessPermissions", "PlayLabel")
		elseif action == PermissionsConstants.EditKey then
			return localized:getText("AccessPermissions", "EditLabel")
		elseif action == PermissionsConstants.AdminKey then
			return localized:getText("AccessPermissions", "AdminLabel")
		else
			return ""
		end
	else
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
end

local CollaboratorsWidget = Roact.PureComponent:extend("CollaboratorsWidget")

function CollaboratorsWidget:DEPRECATED_render()
	local props = self.props
	local thumbnailLoader = getThumbnailLoader(self)

	return withLocalization(function(localized)
		return withTheme(function(theme)
			local function rolePermissionChanged(roleId, newPermission)
				local roleData = props.Permissions[PermissionsConstants.RoleSubjectKey][roleId]
				local groupId = roleData[PermissionsConstants.GroupIdKey]

				local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.Dictionary.join(props.GroupMetadata[groupId], {Action=PermissionsConstants.NoAccessKey})})

				local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
											props.Permissions[PermissionsConstants.RoleSubjectKey], {[roleId]=Cryo.Dictionary.join(
												props.Permissions[PermissionsConstants.RoleSubjectKey][roleId], {[PermissionsConstants.ActionKey]=newPermission}
											)}
										)})
				
				props.PermissionsChanged(newPermissions)
				props.GroupMetadataChanged(newGroupMetadata)
			end

			local function groupPermissionChanged(groupId, newPermission)
				local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.Dictionary.join(props.GroupMetadata[groupId], {Action=newPermission})})

				local nonePermissions = {}
				for roleId,roleData in pairs(props.Permissions[PermissionsConstants.RoleSubjectKey]) do
					if roleData[PermissionsConstants.GroupIdKey] == groupId then
						nonePermissions[roleId] = Cryo.Dictionary.join(roleData, {[PermissionsConstants.ActionKey]=newPermission})
					end
				end

				local newPermissions = Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
					props.Permissions[PermissionsConstants.RoleSubjectKey], nonePermissions
				)})

				props.PermissionsChanged(newPermissions)
				props.GroupMetadataChanged(newGroupMetadata)
			end

			local function userPermissionChanged(userId, newPermission)
				local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.UserSubjectKey]=Cryo.Dictionary.join(
											props.Permissions[PermissionsConstants.UserSubjectKey], {[userId]=Cryo.Dictionary.join(
												props.Permissions[PermissionsConstants.UserSubjectKey][userId], {[PermissionsConstants.ActionKey]=newPermission}
											)}
										)})
				
				props.PermissionsChanged(newPermissions)
			end

			local function groupRemoved(groupId)
				local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.None})

				groupPermissionChanged(groupId, PermissionsConstants.NoAccessKey)

				props.GroupMetadataChanged(newGroupMetadata)
			end

			local function userRemoved(userId)
				local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.UserSubjectKey]=Cryo.Dictionary.join(
											props.Permissions[PermissionsConstants.UserSubjectKey], {[userId]=Cryo.None}
										)})
				
				props.PermissionsChanged(newPermissions)
			end
		
			-- Sort groups by alphabetical order for collaborator list
			local groups = {}
			for groupId,groupData in pairs(props.GroupMetadata) do
				if props.OwnerType ~= Enum.CreatorType.Group or props.OwnerId ~= groupId then
					table.insert(groups, {Name=groupData.Name, Id=groupId})
				end
			end
			table.sort(groups, function(a,b)
				return a.Name < b.Name
			end)

			-- Sort users by alphabetical order for collaborator list
			local users = {}
			for userId,permission in pairs(props.Permissions[PermissionsConstants.UserSubjectKey]) do
				if props.OwnerType ~= Enum.CreatorType.User or props.OwnerId ~= userId then
					table.insert(users, {Name=permission[PermissionsConstants.SubjectNameKey], Id=permission[PermissionsConstants.SubjectIdKey], Action=permission[PermissionsConstants.ActionKey], IsFriend = permission[PermissionsConstants.IsFriendKey]})
				end
			end
			table.sort(users, function(a,b)
				return a.Name < b.Name
			end)
			
			-- Roact elements built from users and groups tables
			local userCollaborators = {}
			local userAssignablePermissions = getUserCollaboratorPermissions(props, localized)			
			for i,user in pairs(users) do
				local separatorProvidedByNextElement = i ~= #users
				local lockedPermission = permissionLocked(user.Action, userAssignablePermissions)

				userCollaborators["User"..i] = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					-- TODO (awarwick) 5/29/2019. We're using hardcoded sizes now because this design is a WIP
					-- and we don't want to spend the engineering resources on somethat that could drastically change
					Size = UDim2.new(1, 0, 0, 60),
					LayoutOrder = i,
				}, {
					FirstSeparator = Roact.createElement(Separator, {
						Size = UDim2.new(1, 0, 0, 1),
						Position = UDim2.new(0, 0, 0, 0),
					}),
					CollaboratorItem = Roact.createElement(CollaboratorItem, {
						Enabled = props.Enabled,
						IsDropdownLocked = props.OwnerType == Enum.CreatorType.Group or (props.OwnerType == Enum.CreatorType.User and not user.IsFriend),
						
						CollaboratorName = user.Name,
						CollaboratorId = user.Id,
						CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.UserSubjectKey, user.Id),
						UseMask = true,

						Items = lockedPermission and {} or userAssignablePermissions,
						Action = getLabelForAction(localized, user.Action),

						Removable = props.CanManage,
						Removed = function() userRemoved(user.Id) end,
						PermissionChanged = function(newPermission) userPermissionChanged(user.Id, newPermission) end,
						HideLastSeparator = i ~= #users,
					}),
					LastSeparator = (not separatorProvidedByNextElement) and Roact.createElement(Separator, {
						Size = UDim2.new(1, 0, 0, 1),
						Position = UDim2.new(0, 0, 1, -1),
					}),
				})
			end
			
			local groupCollaborators = {}
			local groupAssignablePermissions = getGroupCollaboratorPermissions(props, localized)
			for i,group in pairs(groups) do
				if props.OwnerType ~= Enum.CreatorType.Group or props.OwnerId ~= group.Id then
					groupCollaborators["Groups"..i] = Roact.createElement(GroupCollaboratorItem, {
						LayoutOrder = i,
						Enabled = props.Enabled,
						
						GroupName = group.Name,
						GroupId = group.Id,
						Rolesets = group.RolePermissions,
						Permissions = props.Permissions,
						Items = groupAssignablePermissions,

						RolePermissionChanged = rolePermissionChanged,
						GroupPermissionChanged = groupPermissionChanged,
						
						Removable = props.CanManage,
						Removed = function() groupRemoved(group.Id) end,
						HideLastSeparator = i ~= #groups,
						Thumbnails = props.Thumbnails,
					})
				end
			end

			return Roact.createElement(FitToContentWidget, {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
			}, {
				UsersTitle = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
					LayoutOrder = 0,
					
					Text = FFlagStudioFixUsersLocalizationInAccessPermissions and localized.Collaborators.UsersCollaboratorType or "Users",
					TextXAlignment = Enum.TextXAlignment.Left,
					
					Visible = #users > 0,
					BackgroundTransparency = 1,
				})),
				
				Users = Roact.createElement(FitToContentList, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
				}, userCollaborators),
			})
		end)
	end)
end

function CollaboratorsWidget:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local thumbnailLoader = props.ThumbnailLoader
	local theme = props.Theme:get("Plugin")
	local localized = props.Localization

	local function rolePermissionChanged(roleId, newPermission)
		local roleData = props.Permissions[PermissionsConstants.RoleSubjectKey][roleId]
		local groupId = roleData[PermissionsConstants.GroupIdKey]

		local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.Dictionary.join(props.GroupMetadata[groupId], {Action=PermissionsConstants.NoAccessKey})})

		local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
									props.Permissions[PermissionsConstants.RoleSubjectKey], {[roleId]=Cryo.Dictionary.join(
										props.Permissions[PermissionsConstants.RoleSubjectKey][roleId], {[PermissionsConstants.ActionKey]=newPermission}
									)}
								)})

		props.PermissionsChanged(newPermissions)
		props.GroupMetadataChanged(newGroupMetadata)
	end

	local function groupPermissionChanged(groupId, newPermission)
		local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.Dictionary.join(props.GroupMetadata[groupId], {Action=newPermission})})

		local nonePermissions = {}
		for roleId,roleData in pairs(props.Permissions[PermissionsConstants.RoleSubjectKey]) do
			if roleData[PermissionsConstants.GroupIdKey] == groupId then
				nonePermissions[roleId] = Cryo.Dictionary.join(roleData, {[PermissionsConstants.ActionKey]=newPermission})
			end
		end

		local newPermissions = Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
			props.Permissions[PermissionsConstants.RoleSubjectKey], nonePermissions
		)})

		props.PermissionsChanged(newPermissions)
		props.GroupMetadataChanged(newGroupMetadata)
	end

	local function userPermissionChanged(userId, newPermission)
		local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.UserSubjectKey]=Cryo.Dictionary.join(
									props.Permissions[PermissionsConstants.UserSubjectKey], {[userId]=Cryo.Dictionary.join(
										props.Permissions[PermissionsConstants.UserSubjectKey][userId], {[PermissionsConstants.ActionKey]=newPermission}
									)}
								)})

		props.PermissionsChanged(newPermissions)
	end

	local function groupRemoved(groupId)
		local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.None})

		groupPermissionChanged(groupId, PermissionsConstants.NoAccessKey)

		props.GroupMetadataChanged(newGroupMetadata)
	end

	local function userRemoved(userId)
		local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.UserSubjectKey]=Cryo.Dictionary.join(
									props.Permissions[PermissionsConstants.UserSubjectKey], {[userId]=Cryo.None}
								)})

		props.PermissionsChanged(newPermissions)
	end

	-- Sort groups by alphabetical order for collaborator list
	local groups = {}
	for groupId,groupData in pairs(props.GroupMetadata) do
		if props.OwnerType ~= Enum.CreatorType.Group or props.OwnerId ~= groupId then
			table.insert(groups, {Name=groupData.Name, Id=groupId})
		end
	end
	table.sort(groups, function(a,b)
		return a.Name < b.Name
	end)

	-- Sort users by alphabetical order for collaborator list
	local users = {}
	for userId,permission in pairs(props.Permissions[PermissionsConstants.UserSubjectKey]) do
		if props.OwnerType ~= Enum.CreatorType.User or props.OwnerId ~= userId then
			table.insert(users, {Name=permission[PermissionsConstants.SubjectNameKey], Id=permission[PermissionsConstants.SubjectIdKey], Action=permission[PermissionsConstants.ActionKey], IsFriend = permission[PermissionsConstants.IsFriendKey]})
		end
	end
	table.sort(users, function(a,b)
		return a.Name < b.Name
	end)

	-- Roact elements built from users and groups tables
	local userCollaborators = {}
	local userAssignablePermissions = getUserCollaboratorPermissions(props, localized)
	for i,user in pairs(users) do
		local separatorProvidedByNextElement = i ~= #users
		local lockedPermission = permissionLocked(user.Action, userAssignablePermissions)

		userCollaborators["User"..i] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			-- TODO (awarwick) 5/29/2019. We're using hardcoded sizes now because this design is a WIP
			-- and we don't want to spend the engineering resources on somethat that could drastically change
			Size = UDim2.new(1, 0, 0, 60),
			LayoutOrder = i,
		}, {
			FirstSeparator = Roact.createElement(Separator, {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 0, 0),
			}),
			CollaboratorItem = Roact.createElement(CollaboratorItem, {
				Enabled = props.Enabled,
				IsDropdownLocked = props.OwnerType == Enum.CreatorType.Group or (props.OwnerType == Enum.CreatorType.User and not user.IsFriend),

				CollaboratorName = user.Name,
				CollaboratorId = user.Id,
				CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.UserSubjectKey, user.Id),
				UseMask = true,

				Items = lockedPermission and {} or userAssignablePermissions,
				Action = getLabelForAction(localized, user.Action),

				Removable = props.CanManage,
				Removed = function() userRemoved(user.Id) end,
				PermissionChanged = function(newPermission) userPermissionChanged(user.Id, newPermission) end,
				HideLastSeparator = i ~= #users,
			}),
			LastSeparator = (not separatorProvidedByNextElement) and Roact.createElement(Separator, {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, -1),
			}),
		})
	end

	local groupCollaborators = {}
	local groupAssignablePermissions = getGroupCollaboratorPermissions(props, localized)
	for i,group in pairs(groups) do
		if props.OwnerType ~= Enum.CreatorType.Group or props.OwnerId ~= group.Id then
			groupCollaborators["Groups"..i] = Roact.createElement(GroupCollaboratorItem, {
				LayoutOrder = i,
				Enabled = props.Enabled,

				GroupName = group.Name,
				GroupId = group.Id,
				Rolesets = group.RolePermissions,
				Permissions = props.Permissions,
				Items = groupAssignablePermissions,

				RolePermissionChanged = rolePermissionChanged,
				GroupPermissionChanged = groupPermissionChanged,

				Removable = props.CanManage,
				Removed = function() groupRemoved(group.Id) end,
				HideLastSeparator = i ~= #groups,
				Thumbnails = props.Thumbnails,
			})
		end
	end

	return Roact.createElement(FitToContentWidget, {
		LayoutOrder = props.LayoutOrder or 0,
		BackgroundTransparency = 1,
	}, {
		UsersTitle = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
			LayoutOrder = 0,

			Text = localized:getText("AccessPermissions", "UsersCollaboratorType"),
			TextXAlignment = Enum.TextXAlignment.Left,

			Visible = #users > 0,
			BackgroundTransparency = 1,
		})),

		Users = Roact.createElement(FitToContentList, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, userCollaborators),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(CollaboratorsWidget, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		ThumbnailLoader = ThumbnailLoader,
	})
end

return CollaboratorsWidget