local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

local CollaboratorItem = require(Plugin.Src.Components.CollaboratorItem)

local IsRolesetOwner = require(Plugin.Src.Selectors.IsRolesetOwner)
local GetRolesetName = require(Plugin.Src.Selectors.GetRolesetName)
local GetRolesetPermission = require(Plugin.Src.Selectors.GetRolesetPermission)
local SetRolesetPermission = require(Plugin.Src.Thunks.SetRolesetPermission)

local PERMISSION_DESCRIPTIONS = "PermissionDescriptions"
local PERMISSION_LABELS = "PermissionLabels"

local RolesetCollaboratorItem = Roact.PureComponent:extend("RolesetCollaboratorItem")

function RolesetCollaboratorItem:getAvailablePermissions()
	local props = self.props

	local isRolesetOwner = props.IsRolesetOwner
	local isGroupOwner = props.IsGroupOwner

	local rolePermissions = props.RolePermissions

	local localization = props.Localization

	if isRolesetOwner then
		return {
			{
				Key = PermissionsConstants.OwnerKey,
				Display = localization:getText(PERMISSION_LABELS, "Owner"),
				Description = localization:getText(PERMISSION_DESCRIPTIONS, "Owner"),
			},
		}
	elseif isGroupOwner then
		if rolePermissions ~= nil and rolePermissions.groupEconomyPermissions.manageGroupGames then
			return {
				{
					Key = PermissionsConstants.EditKey,
					Display = localization:getText(PERMISSION_LABELS, "Edit"),
					Description = localization:getText(PERMISSION_DESCRIPTIONS, "Edit"),
				},
			}
		else
			return {
				{
					Key = PermissionsConstants.NoAccessKey,
					Display = localization:getText(PERMISSION_LABELS, "NoAccess"),
					Description = localization:getText(PERMISSION_DESCRIPTIONS, "NoAccess"),
				},
				{
					Key = PermissionsConstants.PlayKey,
					Display = localization:getText(PERMISSION_LABELS, "Play"),
					Description = localization:getText(PERMISSION_DESCRIPTIONS, "Play"),
				},
				{
					Key = PermissionsConstants.EditKey,
					Display = localization:getText(PERMISSION_LABELS, "Edit"),
					Description = localization:getText(PERMISSION_DESCRIPTIONS, "Edit"),
				},
			}
		end
	else
		return {
			{
				Key = PermissionsConstants.NoAccessKey,
				Display = localization:getText(PERMISSION_LABELS, "NoAccess"),
				Description = localization:getText(PERMISSION_DESCRIPTIONS, "NoAccess"),
			},
			{
				Key = PermissionsConstants.PlayKey,
				Display = localization:getText(PERMISSION_LABELS, "Play"),
				Description = localization:getText(PERMISSION_DESCRIPTIONS, "Play"),
			},
		}
	end
end

function RolesetCollaboratorItem:getCurrentPermission()
	local props = self.props

	local isRolesetOwner = props.IsRolesetOwner

	local rolePermissions = props.RolePermissions

	local currentPermission = props.CurrentPermission

	if isRolesetOwner then
		return PermissionsConstants.OwnerKey
	else
		if rolePermissions ~= nil and rolePermissions.groupEconomyPermissions.manageGroupGames then
			return PermissionsConstants.EditKey
		else
			return currentPermission
		end
	end
end

function RolesetCollaboratorItem:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder

	local id = props.Id
	local writable = props.Writable

	local name = props.RolesetName
	local isRolesetOwner = props.IsRolesetOwner
	
	local hideSeparator = props.HideSeparator
	local setRolesetPermission = props.SetRolesetPermission

	return Roact.createElement(CollaboratorItem, {
		LayoutOrder = layoutOrder,

		Name = name,

		Writable = writable and not isRolesetOwner,
		Loading = false,

		Removable = false,
		IsRolesetCollaborator = true,
		HideSeparator = hideSeparator,
		
		-- non-group-owners (roleset != owner) cannot see Group level perms, so we hide the permissions
		HidePermissions = not writable and not isRolesetOwner,

		CurrentPermission = self:getCurrentPermission(),
		AvailablePermissions = self:getAvailablePermissions(),
		OnPermissionChanged = function(newPermission)
			setRolesetPermission(id, newPermission)
		end,
	})
end

RolesetCollaboratorItem = withContext({
	Localization = ContextServices.Localization,
})(RolesetCollaboratorItem)

RolesetCollaboratorItem = RoactRodux.connect(
	function(state, props)
		return {
			IsRolesetOwner = IsRolesetOwner(state, props.Id),
			RolesetName = GetRolesetName(state, props.Id),
			CurrentPermission = GetRolesetPermission(state, props.Id),
		}
	end,
	function(dispatch)
		return {
			SetRolesetPermission = function(...)
				dispatch(SetRolesetPermission(...))
			end,
		}
	end
)(RolesetCollaboratorItem)

return RolesetCollaboratorItem
