--[[
	An item that displays game owner access permissions and can be interacted with to change them
	if the owner is a group. User owners and group owner roles can never be changed.

	Props:
		string OwnerName - Name of collaborator. Displayed in primary label
		string OwnerThumbnail - Icon to display in item (e.g. user headshot, group logo, etc)
		
		bool Enabled - Whether the component is enabled or not
]]

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

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


local createFitToContent = UILibrary.Component.createFitToContent

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local function getGroupOwnerPermissions(props, localized)
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
		Cryo.Dictionary.join({Key = PermissionsConstants.PlayKey, Display = playDisplayLabel, Description = playDescriptionLabel}),
		Cryo.Dictionary.join({Key = PermissionsConstants.EditKey, Display = editDisplayLabel, Description = editDescriptionLabel}),
	}
	
	return permissions
end

local function getUserOwnerPermissions()
	return {} -- Owner can never be changed
end

local GameOwnerWidget = Roact.PureComponent:extend("GameOwnerWidget")

function GameOwnerWidget:DEPRECATED_render()
	local props = self.props
	local thumbnailLoader = getThumbnailLoader(self)

	return withLocalization(function(localized)
		return withTheme(function(theme)
			local function rolePermissionChanged(roleId, newPermission)
				-- Cryo does not provide a good way to replace a deep key
				local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
											props.Permissions[PermissionsConstants.RoleSubjectKey], {[roleId]=Cryo.Dictionary.join(
												props.Permissions[PermissionsConstants.RoleSubjectKey][roleId], {[PermissionsConstants.ActionKey]=newPermission}
											)}
										)})
				
				props.PermissionsChanged(newPermissions)
			end
		
			local collaboratorItem
			if props.OwnerType == Enum.CreatorType.User then
				collaboratorItem = Roact.createElement(CollaboratorItem, {
					LayoutOrder = 1,
					Removable = false,
					
					CollaboratorName = props.OwnerName,
					CollaboratorId = props.OwnerId,
					CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.UserSubjectKey, props.OwnerId),
					UseMask = true,
					
					Action = localized.AccessPermissions.ActionDropdown.OwnerLabel,
					Enabled = props.Enabled,
					
					Items = getUserOwnerPermissions(props),
					RolePermissionChanged = nil, -- Owner permissions can't be changed
				})
			else
				collaboratorItem = Roact.createElement(GroupCollaboratorItem, {
					LayoutOrder = 1,
					Removable = false,
					
					GroupName = props.GroupMetadata[props.OwnerId].Name,
					GroupId = props.OwnerId,
					IsOwner = true,
					Enabled = props.Enabled,

					Items = getGroupOwnerPermissions(props, localized),
					
					RolePermissionChanged = rolePermissionChanged,
					GroupPermissionChanged = nil, -- Cannot be bulk-changed because Owner is locked

					Permissions = props.Permissions,

					Thumbnails = props.Thumbnails,
				})
			end
		
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
				
				Owner = collaboratorItem,
			})
		end)
	end)
end

function GameOwnerWidget:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local thumbnailLoader = props.ThumbnailLoader

	local function rolePermissionChanged(roleId, newPermission)
		-- Cryo does not provide a good way to replace a deep key
		local newPermissions = 	Cryo.Dictionary.join(props.Permissions, {[PermissionsConstants.RoleSubjectKey]=Cryo.Dictionary.join(
									props.Permissions[PermissionsConstants.RoleSubjectKey], {[roleId]=Cryo.Dictionary.join(
										props.Permissions[PermissionsConstants.RoleSubjectKey][roleId], {[PermissionsConstants.ActionKey]=newPermission}
									)}
								)})

		props.PermissionsChanged(newPermissions)
	end

	local collaboratorItem
	if props.OwnerType == Enum.CreatorType.User then
		collaboratorItem = Roact.createElement(CollaboratorItem, {
			LayoutOrder = 1,
			Removable = false,

			CollaboratorName = props.OwnerName,
			CollaboratorId = props.OwnerId,
			CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.UserSubjectKey, props.OwnerId),
			UseMask = true,

			Action = localization:getText("AccessPermissions", "OwnerLabel"),
			Enabled = props.Enabled,

			Items = getUserOwnerPermissions(props),
			RolePermissionChanged = nil, -- Owner permissions can't be changed
		})
	else
		collaboratorItem = Roact.createElement(GroupCollaboratorItem, {
			LayoutOrder = 1,
			Removable = false,

			GroupName = props.GroupMetadata[props.OwnerId].Name,
			GroupId = props.OwnerId,
			IsOwner = true,
			Enabled = props.Enabled,

			Items = getGroupOwnerPermissions(props, localization),

			RolePermissionChanged = rolePermissionChanged,
			GroupPermissionChanged = nil, -- Cannot be bulk-changed because Owner is locked

			Permissions = props.Permissions,

			Thumbnails = props.Thumbnails,
		})
	end

	return Roact.createElement(FitToContent, {
		LayoutOrder = props.LayoutOrder or 0,
		BackgroundTransparency = 1,
	}, {
		Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
			LayoutOrder = 0,

			Text = localization:getText("General", "TitleGameOwner"),
			TextXAlignment = Enum.TextXAlignment.Left,

			BackgroundTransparency = 1,
		})),

		Owner = collaboratorItem,
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(GameOwnerWidget, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		ThumbnailLoader = ThumbnailLoader,
	})
end

return GameOwnerWidget