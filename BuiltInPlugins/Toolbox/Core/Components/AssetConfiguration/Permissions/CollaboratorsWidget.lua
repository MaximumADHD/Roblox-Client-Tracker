--[[
	An item that displays a list of collaborators who have permissions to access or edit the package
	These collaborators can be removed or have their permission level changed

	Necessary Propreties:
		PermissionsChanged(newPermissions) - function, Dispatch function to fire when permissions change
		GroupMetadataChanged(newGroupMetadata) - function, Dispatch function to fire when groupMetadata changes

		GroupMetadata - table, Id, Name, and permissions for groups
		Permissions - table, Permissions for all users/roles
		
		Enabled - bool, Whether the component is enabled or not
		LayoutOrder - int, Where this component will be placed in hierarchy
]]

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:GetFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local Urls = require(Util.Urls)
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)
local CollaboratorItem = require(PermissionsDirectory.CollaboratorItem)
local GroupCollaboratorItem = require(PermissionsDirectory.GroupCollaboratorItem)

local UILibrary = require(Libs.UILibrary)
local Separator = UILibrary.Component.Separator
local createFitToContent = UILibrary.Component.createFitToContent
local deepJoin = UILibrary.Util.deepJoin

local FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local FitToContentList = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local function getGroupCollaboratorPermissions(props, localized)
	if not props.CanManage then return {} end

	local permissions = {
		{Key = PermissionsConstants.UseViewKey, Display = localized.PackagePermissions.ActionDropdown.UseViewLabel, Description = localized.PackagePermissions.ActionDropdown.UseViewDescription},
		{Key = PermissionsConstants.EditKey, Display = localized.PackagePermissions.ActionDropdown.EditLabel, Description = localized.PackagePermissions.ActionDropdown.EditDescription},
	}

	return permissions
end

local function getUserCollaboratorPermissions(props, localized)
	if not props.CanManage then return {} end

	local permissions = {
		{Key = PermissionsConstants.UseViewKey, Display = localized.PackagePermissions.ActionDropdown.UseViewLabel, Description = localized.PackagePermissions.ActionDropdown.UseViewDescription},
		{Key = PermissionsConstants.EditKey, Display = localized.PackagePermissions.ActionDropdown.EditLabel, Description = localized.PackagePermissions.ActionDropdown.EditDescription},
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
	if action == PermissionsConstants.NoAccessKey then
		return localized.PackagePermissions.ActionDropdown.NoAccessLabel
	elseif action == PermissionsConstants.UseViewKey then
		return localized.PackagePermissions.ActionDropdown.UseViewLabel
	elseif action == PermissionsConstants.EditKey then
		return localized.PackagePermissions.ActionDropdown.EditLabel
	elseif action == PermissionsConstants.NoneKey then
		return ""
	else
		error("Unsupported Action: "..tostring(action))
		return ""
	end
end

local CollaboratorsWidget = Roact.PureComponent:extend("CollaboratorsWidget")

function CollaboratorsWidget:render()
	local props = self.props

	return withLocalization(function(localization, localized)
		return withTheme(function(theme)
			local function rolePermissionChanged(roleId, newPermission)
				local roleData = props.Permissions[PermissionsConstants.RoleSubjectKey][roleId]
				local groupId = roleData[PermissionsConstants.GroupIdKey]
				local groupKey = props.GroupMetadata[groupId]

				local newGroupMetadata = deepJoin(props.GroupMetadata, {
					[groupId] = {
						[groupKey] = {
							[PermissionsConstants.ActionKey] = PermissionsConstants.NoAccessKey
						}						
					}
				})

				local newPermissions = 	deepJoin(props.Permissions, {
					[PermissionsConstants.RoleSubjectKey] = {
						[roleId] = {
							[PermissionsConstants.ActionKey] = newPermission
						}
					}
				})

				props.PermissionsChanged(newPermissions)
				props.GroupMetadataChanged(newGroupMetadata)
			end

			local function groupPermissionChanged(groupId, newPermission)
				local groupKey = props.GroupMetadata[groupId]
				local newGroupMetadata = deepJoin(props.GroupMetadata, {
					[groupId] = {
						[groupKey] = {
							[PermissionsConstants.ActionKey] = newPermission
						}						
					}
				})

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
				local newPermissions = deepJoin(props.Permissions, {
					[PermissionsConstants.UserSubjectKey] = {
						[userId] = {
							[PermissionsConstants.ActionKey] = newPermission
						}
					}
				})
				
				props.PermissionsChanged(newPermissions)
			end

			local function groupRemoved(groupId)
				local newGroupMetadata = Cryo.Dictionary.join(props.GroupMetadata, {[groupId] = Cryo.None})

				groupPermissionChanged(groupId, PermissionsConstants.NoAccessKey)

				props.GroupMetadataChanged(newGroupMetadata)
			end

			local function userRemoved(userId)
				local newPermissions = deepJoin(props.Permissions, {
					[PermissionsConstants.UserSubjectKey] = {
						[userId] = {
							[PermissionsConstants.ActionKey] = PermissionsConstants.NoAccessKey
						}
					}
				})
				
				props.PermissionsChanged(newPermissions)
			end
		
			-- Sort groups by alphabetical order for collaborator list
			local groups = {}
			if FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then 
				for groupId,groupData in pairs(props.GroupMetadata) do
					if props.OwnerType ~= Enum.CreatorType.Group or props.OwnerId ~= groupId then
						table.insert(groups, {Name=groupData.Name, Id=groupId})
					end
				end
				table.sort(groups, function(a,b)
					return a.Name < b.Name
				end)
			end

			-- Sort users by alphabetical order for collaborator list
			local users = {}
			if (props.Permissions[PermissionsConstants.UserSubjectKey]) then
				for userId,permission in pairs(props.Permissions[PermissionsConstants.UserSubjectKey]) do
					if props.OwnerType ~= Enum.CreatorType.User or props.OwnerId ~= userId and permission[PermissionsConstants.ActionKey] ~= PermissionsConstants.NoAccessKey then
						table.insert(users, {Name=permission[PermissionsConstants.SubjectNameKey], Id=permission[PermissionsConstants.SubjectIdKey], Action=permission[PermissionsConstants.ActionKey]})
					end
				end

				table.sort(users, function(a,b)
					return a.Name < b.Name
				end)
			end
						
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
					Size = UDim2.new(1, 0, 0, 70),
					LayoutOrder = i,
				}, {
					FirstSeparator = Roact.createElement(Separator, {
						Size = UDim2.new(1, 0, 0, 1),
						Position = UDim2.new(0.5, 0, 0, 0),
					}),
					CollaboratorItem = Roact.createElement(CollaboratorItem, {
						Enabled = props.Enabled,

						SubjectType = Enum.CreatorType.User,
						
						CollaboratorName = user.Name,
						CollaboratorId = user.Id,
						CollaboratorIcon = Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["AvatarHeadShot"], user.Id, 
							AssetConfigConstants.rbxThumbSizes.AvatarHeadshotImageSize),
						UseMask = true,

						Items = lockedPermission and {} or userAssignablePermissions,
						Action = getLabelForAction(localized, user.Action),
						SelectedItem = user.Action,

						Removable = true,
						Removed = function() userRemoved(user.Id) end,
						PermissionChanged = function(newPermission) userPermissionChanged(user.Id, newPermission) end,
						HideLastSeparator = i ~= #users,
					}),
					LastSeparator = (not separatorProvidedByNextElement) and Roact.createElement(Separator, {
						Size = UDim2.new(1, 0, 0, 0),
						Position = UDim2.new(0.5, 0, 1, -1),
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
						
						Removable = true,
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
				Padding = Roact.createElement("UIPadding", {
                    PaddingLeft = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
				}),
				
				UsersTitle = Roact.createElement("TextLabel", {
					LayoutOrder = 0,

					Font = Constants.FONT,
					
					Text = localized.PackagePermissions.Collaborators.UsersCollaboratorType,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					
					Visible = #users > 0,
					BackgroundTransparency = 1,
				}),
				
				Users = Roact.createElement(FitToContentList, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
				}, userCollaborators),
				
				-- TODO: re-enable when groups are added to package permisse, {
				GroupsTitle = FFlagStudioAllowPkgPermsForOtherUsrsAndGrps and Roact.createElement("TextLabel", {
					LayoutOrder = 2,

					Font = Constants.FONT,
					
					Text = localized.PackagePermissions.Collaborators.GroupsCollaboratorType,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					
					Visible = #groups > 0,
					BackgroundTransparency = 1,
				}),
				
				Groups = FFlagStudioAllowPkgPermsForOtherUsrsAndGrps and Roact.createElement(FitToContentList, {
					LayoutOrder = 3,
					BackgroundTransparency = 1,
				}, groupCollaborators),
			})
		end)
	end)
end

return CollaboratorsWidget