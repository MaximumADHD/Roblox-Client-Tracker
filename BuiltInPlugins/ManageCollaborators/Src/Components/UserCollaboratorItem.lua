
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

local UserHeadshotThumbnail = require(Plugin.Src.Components.Thumbnails.UserHeadshotThumbnail)
local CollaboratorItem = require(Plugin.Src.Components.CollaboratorItem)

local IsUserOwner = require(Plugin.Src.Selectors.IsUserOwner)
local IsUserCreatorFriend = require(Plugin.Src.Selectors.IsUserCreatorFriend)
local GetUserName = require(Plugin.Src.Selectors.GetUserName)
local GetUserPermission = require(Plugin.Src.Selectors.GetUserPermission)

local SetUserPermission = require(Plugin.Src.Thunks.SetUserPermission)
local RemoveUserCollaborator = require(Plugin.Src.Thunks.RemoveUserCollaborator)

local UserCollaboratorItem = Roact.PureComponent:extend("UserCollaboratorItem")

local PERMISSION_DESCRIPTIONS = "PermissionDescriptions"
local PERMISSION_LABELS = "PermissionLabels"

local DEPRECATED_permShortName = {
	[PermissionsConstants.OwnerKey] = "Owner",
	[PermissionsConstants.PlayKey] = "Play",
	[PermissionsConstants.EditKey] = "Edit",
	[PermissionsConstants.NoAccessKey] = "NoAccess",
	[PermissionsConstants.AdminKey] = "Admin"
}

function UserCollaboratorItem:DEPRECATED_getPermissionForKey(key)
	local props = self.props
	local localization = props.Localization

	if not DEPRECATED_permShortName[key] then
		-- unrecognized permission
		return { Key = key, Display = tostring(key), Description = "Error: This permission is not recognized." }
	end

	return {
		Key = key,
		Display = localization:getText(PERMISSION_LABELS, DEPRECATED_permShortName[key]),
		Description = localization:getText(PERMISSION_DESCRIPTIONS, DEPRECATED_permShortName[key]),
	}
end

function UserCollaboratorItem:getAvailablePermissions()
	local props = self.props

	local isOwner = props.IsOwner
	local isOwnerFriend = props.IsOwnerFriend
	local ownerType = props.OwnerType
	
	local writable = props.Writable

	if isOwner then
		return {self:DEPRECATED_getPermissionForKey(PermissionsConstants.OwnerKey),}
	elseif not writable then
		-- if not writable, just show current permission
		return {self:DEPRECATED_getPermissionForKey(self:getCurrentPermission()),}
	else
		local permissions = {self:DEPRECATED_getPermissionForKey(PermissionsConstants.PlayKey)}

		if (ownerType == Enum.CreatorType.User and isOwnerFriend) then
			table.insert(permissions, self:DEPRECATED_getPermissionForKey(PermissionsConstants.EditKey))
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
	local hideSeparator = props.HideSeparator

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
		
		HideSeparator = hideSeparator,
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



UserCollaboratorItem = RoactRodux.connect(
	function(state, props)
		return {
			OwnerType = state.GameOwnerMetadata.creatorType,

			IsOwner = IsUserOwner(state, props.Id),
			IsOwnerFriend = IsUserCreatorFriend(state, props.Id),
			UserName = GetUserName(state, props.Id),
			CurrentPermission = GetUserPermission(state, props.Id),
		}
	end,
	function(dispatch)
		return {
			SetUserPermission = function(...)
				dispatch(SetUserPermission(...))
			end,
			RemoveUserCollaborator = function(...)
				dispatch(RemoveUserCollaborator(...))
			end,
		}
	end
)(UserCollaboratorItem)

return UserCollaboratorItem
