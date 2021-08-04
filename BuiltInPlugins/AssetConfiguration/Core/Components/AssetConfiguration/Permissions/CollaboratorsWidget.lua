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
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")
local FFlagToolboxReplaceUILibraryComponentsPt3 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt3")

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

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)
local CollaboratorItem = require(PermissionsDirectory.CollaboratorItem)

local UILibrary = require(Libs.UILibrary)

local Separator
if FFlagToolboxReplaceUILibraryComponentsPt1 then
	Separator = require(Libs.Framework).UI.Separator
else
	local UILibrary = require(Libs.UILibrary)
	Separator = UILibrary.Component.Separator
end

local deepJoin
local FitToContentWidget
local FitToContentList
if FFlagToolboxReplaceUILibraryComponentsPt3 then
	local FrameworkUtil = require(Libs.Framework.Util)
	deepJoin = FrameworkUtil.deepJoin
else
	deepJoin = UILibrary.Util.deepJoin
	local createFitToContent = UILibrary.Component.createFitToContent

	FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 32),
	})

	FitToContentList = createFitToContent("Frame", "UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 0),
	})
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

function CollaboratorsWidget:init()
	self.userPermissionChanged = function(userId, newPermission)
		local props = self.props
		local newPermissions = deepJoin(props.Permissions, {
			[PermissionsConstants.UserSubjectKey] = {
				[userId] = {
					[PermissionsConstants.ActionKey] = newPermission
				}
			}
		})
		props.PermissionsChanged(newPermissions)
	end

	self.userRemoved = function(userId)
		local props = self.props
		local newPermissions = deepJoin(props.Permissions, {
			[PermissionsConstants.UserSubjectKey] = {
				[userId] = {
					[PermissionsConstants.ActionKey] = PermissionsConstants.NoAccessKey
				}
			}
		})
		props.PermissionsChanged(newPermissions)
	end
end

function CollaboratorsWidget:render()
	return withLocalization(function(localization, localized)
		if FFlagToolboxReplaceUILibraryComponentsPt3 then
			return self:renderContent(nil, localization, localized)
		else
			return withTheme(function(theme)
				return self:renderContent(theme, localization, localized)
			end)
		end
	end)
end

function CollaboratorsWidget:renderContent(theme, localization, localized)
	local props = self.props

	local userPermissionChanged
	local userRemoved
	if FFlagToolboxReplaceUILibraryComponentsPt3 then
		theme = self.props.Stylizer
	else
		userPermissionChanged = function(userId, newPermission)
			local newPermissions = deepJoin(props.Permissions, {
				[PermissionsConstants.UserSubjectKey] = {
					[userId] = {
						[PermissionsConstants.ActionKey] = newPermission
					}
				}
			})

			props.PermissionsChanged(newPermissions)
		end

		userRemoved = function(userId)
			local newPermissions = deepJoin(props.Permissions, {
				[PermissionsConstants.UserSubjectKey] = {
					[userId] = {
						[PermissionsConstants.ActionKey] = PermissionsConstants.NoAccessKey
					}
				}
			})

			props.PermissionsChanged(newPermissions)
		end
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
	local userCollaborators
	if FFlagToolboxReplaceUILibraryComponentsPt3 then
		userCollaborators = {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}
	else
		userCollaborators = {}
	end
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
				Removed = function()
					if FFlagToolboxReplaceUILibraryComponentsPt3 then
						self.userRemoved(user.Id)
					else
						userRemoved(user.Id)
					end
				end,
				PermissionChanged = function(newPermission)
					if FFlagToolboxReplaceUILibraryComponentsPt3 then
						self.userPermissionChanged(user.Id, newPermission)
					else
						userPermissionChanged(user.Id, newPermission)
					end
				end,
				HideLastSeparator = i ~= #users,
			}),
			LastSeparator = (not separatorProvidedByNextElement) and Roact.createElement(Separator, {
				Size = (not FFlagToolboxReplaceUILibraryComponentsPt1) and UDim2.new(1, 0, 0, 0) or nil,
				Position = UDim2.new(0.5, 0, 1, -1),
			}),
		})
	end

	return Roact.createElement(FFlagToolboxReplaceUILibraryComponentsPt3 and "Frame" or FitToContentWidget, {
		AutomaticSize = FFlagToolboxReplaceUILibraryComponentsPt3 and Enum.AutomaticSize.Y or nil,
		LayoutOrder = props.LayoutOrder or 0,
		BackgroundTransparency = 1,
		Size = FFlagToolboxReplaceUILibraryComponentsPt3 and UDim2.new(1, 0, 0, 0) or nil,
	}, {
		UIListLayout = FFlagToolboxReplaceUILibraryComponentsPt3 and Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 32),
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
		}),

		UsersTitle = Roact.createElement("TextLabel", {
			AutomaticSize = FFlagToolboxReplaceUILibraryComponentsPt3 and Enum.AutomaticSize.XY or nil,
			LayoutOrder = 0,

			Font = Constants.FONT,

			Text = localized.PackagePermissions.Collaborators.UsersCollaboratorType,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,

			Visible = #users > 0,
			BackgroundTransparency = 1,
		}),

		Users = Roact.createElement(FFlagToolboxReplaceUILibraryComponentsPt3 and "Frame" or FitToContentList, {
			AutomaticSize = FFlagToolboxReplaceUILibraryComponentsPt3 and Enum.AutomaticSize.XY or nil,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = FFlagToolboxReplaceUILibraryComponentsPt3 and UDim2.new(1, 0, 0, 0) or nil,
		}, userCollaborators),
	})
end

if FFlagToolboxReplaceUILibraryComponentsPt3 then
	if FFlagToolboxWithContext then
		CollaboratorsWidget = withContext({
			Stylizer = ContextServices.Stylizer,
		})(CollaboratorsWidget)
	else
		ContextServices.mapToProps(CollaboratorsWidget, {
			Stylizer = ContextServices.Stylizer,
		})
	end

end

return CollaboratorsWidget