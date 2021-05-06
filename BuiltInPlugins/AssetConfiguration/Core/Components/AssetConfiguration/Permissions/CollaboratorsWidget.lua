--[[
	An item that displays a list of collaborators who have permissions to access or edit the package
	These collaborators can be removed or have their permission level changed

	Necessary Propreties:
		PermissionsChanged(newPermissions) - function, Dispatch function to fire when permissions change

		Permissions - table, Permissions for all users/roles

		Enabled - bool, Whether the component is enabled or not
		LayoutOrder - int, Where this component will be placed in hierarchy
]]
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

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

local UILibrary = require(Libs.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local deepJoin = UILibrary.Util.deepJoin

local Separator
if FFlagToolboxReplaceUILibraryComponentsPt1 then
	Separator = require(Libs.Framework).UI.Separator
else
	local UILibrary = require(Libs.UILibrary)
	Separator = UILibrary.Component.Separator
end

local FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local FitToContentList = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

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

			-- Roact elements built from users tables
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
						Size = (not FFlagToolboxReplaceUILibraryComponentsPt1) and UDim2.new(1, 0, 0, 1) or nil,
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
			})
		end)
	end)
end

return CollaboratorsWidget