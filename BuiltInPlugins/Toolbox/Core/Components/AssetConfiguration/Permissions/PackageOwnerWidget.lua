--[[
	An item that displays game owner access permissions and can be interacted with to change them
	if the owner is a group. User owners and group owner roles can never be changed.

	Necessary Properties:
	OwnerName = string, Name of collaborator. Displayed in primary label
	OwnerThumbnail = string, Icon to display in item (e.g. user headshot, group logo, etc)
	Enabled = bool, Whether the component is enabled or not
	OwnerId = num, used for getting the thumbnail and passing to CollaboratorItem
	OwnerType = Enum.CreatorType.*, used for determining if this is a Group-Owned or User-Owned Package.
	GroupMetadata = table, used to populate information about rolesets and what permissions they have.
	Permissions = table, contains the information about the current shared permissions of the package.
	PermissionsChanged = function, callback for when a user's role has been changed.

	Optional Properties:
	
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)

local UILibrary = require(Libs.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local deepJoin = UILibrary.Util.deepJoin

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local withLocalization = ContextHelper.withLocalization
local withTheme = ContextHelper.withTheme

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)
local CollaboratorItem = require(PermissionsDirectory.CollaboratorItem)
local GroupCollaboratorItem = require(PermissionsDirectory.GroupCollaboratorItem)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
})

local function getGroupOwnerPermissions(props, localized)
	if not props.CanManage then return {} end

	local permissions = {
		{Key = PermissionsConstants.EditKey, Display = localized.PackagePermissions.ActionDropdown.EditLabel, Description = localized.PackagePermissions.ActionDropdown.EditDescription},
	}

	return permissions
end

local function getUserOwnerPermissions()
	return {} -- Owner can never be changed
end

local PackageOwnerWidget = Roact.PureComponent:extend("PackageOwnerWidget")

function PackageOwnerWidget:render()
	local props = self.props

	return withLocalization(function(_, localized)
		return withTheme(function(theme)
			local function rolePermissionChanged(roleId, newPermission)
				local newPermissions = deepJoin(props.Permissions, {
					[PermissionsConstants.RoleSubjectKey] = {
						[roleId] = {
							[PermissionsConstants.ActionKey] = newPermission,
						}
					}
				})

				props.PermissionsChanged(newPermissions)
			end

			local collaboratorItem
			if props.OwnerType == Enum.CreatorType.User then 
				collaboratorItem = Roact.createElement(CollaboratorItem, {
					LayoutOrder = 1,
					Removable = false,

					SubjectType = Enum.CreatorType.User,
					
					CollaboratorName = props.OwnerName,
					CollaboratorId = props.OwnerId,
					CollaboratorIcon = Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["AvatarHeadShot"], props.OwnerId,
						AssetConfigConstants.rbxThumbSizes.AvatarHeadshotImageSize),
					UseMask = true,
					
					Action =  localized.PackagePermissions.ActionDropdown.OwnerLabel,
					Enabled = props.Enabled,
					
					Items = getUserOwnerPermissions(),
					RolePermissionChanged = nil, -- Owner permissions can't be changed
				})
			else
				collaboratorItem = Roact.createElement(GroupCollaboratorItem, {
					LayoutOrder = 1,
					Removable = false,
					
					GroupData = props.GroupMetadata,
					Enabled = props.Enabled,

					Items = getGroupOwnerPermissions(props, localized),
					
					RolePermissionChanged = rolePermissionChanged,
					GroupPermissionChanged = nil, -- Cannot be bulk-changed because Owner is locked

					Permissions = props.Permissions,
				})
			end

			return Roact.createElement(FitToContent, {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", {
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
					LayoutOrder = 0,
					Text = localized.PackagePermissions.Title.PackageCreator,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					-- Accounting for the CollaboratorItem under it.
					Size = UDim2.new(1, 0, 0, 50),
				}),
				
				Owner = collaboratorItem,
			})
		end)
	end)
end

return PackageOwnerWidget