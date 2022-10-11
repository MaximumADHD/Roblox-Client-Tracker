local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local UserHeadshotThumbnail = require(Plugin.Src.Components.AutoThumbnails.UserHeadshotThumbnail)
local CollaboratorItem = require(Page.Components.CollaboratorItem)

local IsUserOwner = require(Page.Selectors.IsUserOwner)
local IsUserCreatorFriend = require(Page.Selectors.IsUserCreatorFriend)
local GetUserName = require(Page.Selectors.GetUserName)
local GetUserPermission = require(Page.Selectors.GetUserPermission)
local SetUserPermission = require(Page.Thunks.SetUserPermission)
local RemoveUserCollaborator = require(Page.Thunks.RemoveUserCollaborator)

local UserCollaboratorItem = Roact.PureComponent:extend("UserCollaboratorItem")

local permissionLabelDescriptionShortNameForKey = {
	[PermissionsConstants.OwnerKey] = { "Owner", "Owner" },
	[PermissionsConstants.PlayKey] = { "Play", "Play" },
	[PermissionsConstants.EditKey] = { "Edit", "Edit" },
	[PermissionsConstants.NoEditMustBeFriendKey] = { "Edit", "NoEditMustBeFriend" },
	[PermissionsConstants.NoUserEditGroupGameKey] = { "Edit", "NoUserEditGroupGame" },
	[PermissionsConstants.NoAccessKey] = { "NoAccess", "NoAccess" },
	[PermissionsConstants.AdminKey] = { "Admin", "Admin" },
}

local PERMISSIONS = "Permissions"

function UserCollaboratorItem:getPermissionForKey(key, isAllowed)
	local props = self.props
	local localization = props.Localization

	if not permissionLabelDescriptionShortNameForKey[key] then
		-- unrecognized permission
		return { Key = key, Display = tostring(key), Description = "Error: This permission is not recognized." }
	end

	return {
		Key = key,
		Display = localization:getText(PERMISSIONS, permissionLabelDescriptionShortNameForKey[key][1] .. "Label"),
		Description = localization:getText(
			PERMISSIONS,
			permissionLabelDescriptionShortNameForKey[key][2] .. "Description"
		),
		IsEnabled = isAllowed,
	}
end

function UserCollaboratorItem:getAvailablePermissions()
	local props = self.props

	local isOwner = props.IsOwner
	local isOwnerFriend = props.IsOwnerFriend
	local ownerType = props.OwnerType

	local localization = props.Localization

	local editable = props.Editable

	if isOwner then
		return { self:getPermissionForKey(PermissionsConstants.OwnerKey, true) }
	elseif not editable then
		-- if not editable, just show current permission
		return { self:getPermissionForKey(self:getCurrentPermission(), true) }
	else
		local permissions = { self:getPermissionForKey(PermissionsConstants.PlayKey, true) }

		if ownerType ~= Enum.CreatorType.User then
			table.insert(permissions, self:getPermissionForKey(PermissionsConstants.NoUserEditGroupGameKey, false))
		elseif not isOwnerFriend then
			table.insert(permissions, self:getPermissionForKey(PermissionsConstants.NoEditMustBeFriendKey, false))
		else
			table.insert(permissions, self:getPermissionForKey(PermissionsConstants.EditKey, true))
		end

		return permissions
	end
end

function UserCollaboratorItem:getCurrentPermission()
	local props = self.props

	local isOwner = props.IsOwner

	local currentPermission = props.CurrentPermission

	if isOwner then
		return PermissionsConstants.OwnerKey
	else
		return currentPermission
	end
end

function UserCollaboratorItem:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder

	local id = props.Id
	local writable = props.Writable

	local name = props.UserName
	local isOwner = props.IsOwner

	local setUserPermission = props.SetUserPermission
	local removeUserCollaborator = props.RemoveUserCollaborator

	return Roact.createElement(CollaboratorItem, {
		LayoutOrder = layoutOrder,

		Name = name,
		Icon = Roact.createElement(UserHeadshotThumbnail, {
			Id = id,
			Size = UDim2.fromScale(1, 1),
		}),

		Writable = writable and not isOwner,
		Loading = false,

		Removable = not isOwner,
		OnRemoved = function()
			removeUserCollaborator(id)
		end,

		CurrentPermission = self:getCurrentPermission(),
		AvailablePermissions = self:getAvailablePermissions(),
		OnPermissionChanged = function(newPermission)
			setUserPermission(id, newPermission)
		end,
	})
end

UserCollaboratorItem = withContext({
	Localization = ContextServices.Localization,
})(UserCollaboratorItem)

UserCollaboratorItem = RoactRodux.connect(function(state, props)
	local currentPermission = GetUserPermission(state, props.Id)

	if currentPermission then
		return {
			OwnerType = state.GameOwnerMetadata.creatorType,
			IsOwner = IsUserOwner(state, props.Id),
			IsOwnerFriend = IsUserCreatorFriend(state, props.Id),
			UserName = GetUserName(state, props.Id),
			CurrentPermission = currentPermission,
		}
	end
end, function(dispatch)
	return {
		SetUserPermission = function(...)
			dispatch(SetUserPermission(...))
		end,
		RemoveUserCollaborator = function(...)
			dispatch(RemoveUserCollaborator(...))
		end,
	}
end)(UserCollaboratorItem)

return UserCollaboratorItem
