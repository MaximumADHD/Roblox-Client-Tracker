local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")
local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local CollaboratorItem = require(Page.Components.CollaboratorItem)

local IsRolesetOwner = require(Page.Selectors.IsRolesetOwner)
local GetRolesetName = require(Page.Selectors.GetRolesetName)
local GetRolesetPermission = require(Page.Selectors.GetRolesetPermission)
local SetRolesetPermission = require(Page.Thunks.SetRolesetPermission)

local PERMISSIONS = "Permissions"

local RolesetCollaboratorItem = Roact.PureComponent:extend("RolesetCollaboratorItem")

function RolesetCollaboratorItem:getAvailablePermissions()
	local props = self.props

	local isRolesetOwner = props.IsRolesetOwner
	local isGroupOwner = props.IsGroupOwner

	local localization = props.Localization

	if isRolesetOwner then
		return {
			{
				Key = PermissionsConstants.OwnerKey,
				Display = localization:getText(PERMISSIONS, "OwnerLabel"),
				Description = localization:getText(PERMISSIONS, "OwnerDescription"),
			},
		}
	else
		if isGroupOwner then
			return {
				{
					Key = PermissionsConstants.NoAccessKey,
					Display = localization:getText(PERMISSIONS, "NoAccessLabel"),
					Description = localization:getText(PERMISSIONS, "NoAccessDescription"),
				},
				{
					Key = PermissionsConstants.PlayKey,
					Display = localization:getText(PERMISSIONS, "PlayLabel"),
					Description = localization:getText(PERMISSIONS, "PlayDescription"),
				},
				{
					Key = PermissionsConstants.EditKey,
					Display = localization:getText(PERMISSIONS, "EditLabel"),
					Description = localization:getText(PERMISSIONS, "EditDescription"),
				},
			}
		else
			return {
				{
					Key = PermissionsConstants.NoAccessKey,
					Display = localization:getText(PERMISSIONS, "NoAccessLabel"),
					Description = localization:getText(PERMISSIONS, "NoAccessDescription"),
				},
				{
					Key = PermissionsConstants.PlayKey,
					Display = localization:getText(PERMISSIONS, "PlayLabel"),
					Description = localization:getText(PERMISSIONS, "PlayDescription"),
				},
			}
		end
	end
end

function RolesetCollaboratorItem:getCurrentPermission()
	local props = self.props

	local isRolesetOwner = props.IsRolesetOwner

	local currentPermission = props.CurrentPermission

	if isRolesetOwner then
		return PermissionsConstants.OwnerKey
	else
		return currentPermission
	end
end

function RolesetCollaboratorItem:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder

	local id = props.Id
	local writable = props.Writable

	local name = props.RolesetName
	local isRolesetOwner = props.IsRolesetOwner

	local setRolesetPermission = props.SetRolesetPermission

	return Roact.createElement(CollaboratorItem, {
		LayoutOrder = layoutOrder,

		Name = name,

		Writable = writable and not isRolesetOwner,
		Loading = false,

		Removable = false,

		CurrentPermission = self:getCurrentPermission(),
		AvailablePermissions = self:getAvailablePermissions(),
		OnPermissionChanged = function(newPermission)
			setRolesetPermission(id, newPermission)
		end,
	})
end

if FFlagGameSettingsWithContext then
	RolesetCollaboratorItem = withContext({
		Localization = ContextServices.Localization,
	})(RolesetCollaboratorItem)
else
	ContextServices.mapToProps(RolesetCollaboratorItem, {
		Localization = ContextServices.Localization,
	})
end


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