--[[
	A container of CollaboratorItems for the group and its rolesets

	Necessary Properties:
		CollaboratorName = string, Name of the group
		CollaboratorId = num, Id of the group

		Enabled = bool, Whether the component is enabled or not
		HideLastSeparator = bool, Hide the last separator if there is a subsequent collaborator with its own separator
		Removable = bool, Whether this collaborator can be removed

		function RolePermissionChanged = function, Callback when a role's permission changes
		Items = table, Which permissions can be assigned in this collaborator
		Permissions = table, Permissions prop

	Optional Properties:

]]
local FFlagDevFrameworkReplaceExpandaleWidgetWithExpandablePane = game:GetFastFlag("DevFrameworkReplaceExpandaleWidgetWithExpandablePane")
local FFlagLimitGroupRoleSetPermissionsInGui = game:GetFastFlag("LimitGroupRoleSetPermissionsInGui")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)
local Images = require(Util.Images)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local CollaboratorItem = require(PermissionsDirectory.CollaboratorItem)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)

local ExpandablePane
local ExpandableWidget
if FFlagDevFrameworkReplaceExpandaleWidgetWithExpandablePane then
	ExpandablePane = require(Packages.Framework).UI.ExpandablePane
else
	ExpandableWidget = require(Packages.Framework).UI.ExpandableWidget
end
local Spritesheet = require(Packages.Framework).Util.Spritesheet

local ARROW_SIZE = 12
local ARROW_PADDING = 4 -- padding between arrow and GroupCollaboratorItem icon

local arrowSpritesheet = Spritesheet(Images.ARROW_SPRITESHEET, {
	SpriteSize = ARROW_SIZE,
	NumSprites = 4,
})

local rightArrowProps = arrowSpritesheet[2]
local downArrowProps = arrowSpritesheet[3]

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

-- Returns the permission level for the role set determined by `rolesetProps`.
-- If no specific permission level is reported (either via missing group role
-- set data, missing role from that data, or missing level value for that role),
-- we simply return the Asset permissions level because it is the most
-- permissible -- for the level to be any other value, it would have to be
-- explicitly defined.
local function getLevelForRoleset(props, rolesetProps)
	assert(FFlagLimitGroupRoleSetPermissionsInGui)
	if not props.Permissions[PermissionsConstants.RoleSubjectKey] then
		return PermissionsConstants.AssetPermissionLevel
	end
	local groupRoles = props.Permissions[PermissionsConstants.RoleSubjectKey]

	if not groupRoles[rolesetProps.Id] then
		return PermissionsConstants.AssetPermissionLevel
	end
	local roleData = groupRoles[rolesetProps.Id]

	return roleData[PermissionsConstants.PermissionLevelKey] or PermissionsConstants.AssetPermissionLevel
end

-- if RoleSubjectKey doesn't exist then there was a problem, so NoneKey is returned.
-- but if RoleSubjectKey is Okay, but the roleset.id doesn't exist, 
-- then that roleset hasn't had it's permission set in the past, so it should be no access.
local function getActionForRoleset(props, rolesetProps)
	if not props.Permissions[PermissionsConstants.RoleSubjectKey] then
		return PermissionsConstants.NoneKey
	end

	if not props.Permissions[PermissionsConstants.RoleSubjectKey][rolesetProps.Id] then
		return PermissionsConstants.NoAccessKey
	end

	return props.Permissions[PermissionsConstants.RoleSubjectKey][rolesetProps.Id][PermissionsConstants.ActionKey]
end

local function getRolesetItems(props, localized)
	if next(props.Items) == nil then return {} end

	local permissions = Cryo.List.join(
		{Cryo.Dictionary.join({Key = PermissionsConstants.NoAccessKey, Display = localized.PackagePermissions.ActionDropdown.NoAccessLabel, Description = localized.PackagePermissions.ActionDropdown.NoAccessDescription})},
		props.Items
	)

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

local GroupCollaboratorItem = Roact.PureComponent:extend("GroupCollaboratorItem")

function GroupCollaboratorItem:init()
	self.state = {
		expanded = false,
		hovered = false,
	}

	self.onClick = function()
		if not self.props.Enabled then return end
		self:setState({
			expanded = not self.state.expanded,
		})
	end
end

function GroupCollaboratorItem:render()
	return withLocalization(function(localiztion, localized)
		return self:renderContent(nil, localiztion, localized)
	end)
end

function GroupCollaboratorItem:renderContent(theme, localization, localized)
	local props = self.props

	local rolesetCollaboratorItems = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	local anyLocked = false
	local sameAction = false

	local layoutOrder = props.LayoutOrder
	local rolesets = self.props.GroupData and self.props.GroupData.Roles or {}
	table.sort(rolesets, function(a,b) return b.Rank < a.Rank end)

	local rolesetItems = getRolesetItems(props, localized)
	local collaboratorItemOffset = props.Enabled and ARROW_SIZE + ARROW_PADDING or 0
	for i,rolesetProps in pairs(rolesets) do
		local action = getActionForRoleset(props, rolesetProps)
		if i == 1 then
			sameAction = action
		end

		local enabled = props.Enabled
		if rolesetProps.Name == "Owner" then
			enabled = false
		end
		local tooltipText = nil
		if FFlagLimitGroupRoleSetPermissionsInGui then
			-- We only leave it enabled if the permission level is "asset".
			enabled = enabled and getLevelForRoleset(props, rolesetProps) == PermissionsConstants.AssetPermissionLevel
			-- The inclusion of an actual tool tip is likewise a new feature.
			tooltipText = if not enabled then localization:getGroupPermissionLockedTooltip(rolesetProps.Name) else nil
		end

		local lockedPermission = permissionLocked(action, rolesetItems)
		sameAction = sameAction == action and sameAction or false
		anyLocked = (lockedPermission or rolesetProps.LockedTo) and true or anyLocked

		local collaboratorItem = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 0, 60),
		}, {
			Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, collaboratorItemOffset, 0, 0),
				Size = UDim2.new(1, -collaboratorItemOffset, 0, 1),
			}, {
				Roact.createElement(CollaboratorItem, {
					Enabled = enabled,

					CollaboratorName = rolesetProps.Name,
					CollaboratorId = rolesetProps.Id,
					CollaboratorIcon = nil,

					Action = rolesetProps.LockedTo or getLabelForAction(localized, action),
					Items = (lockedPermission or rolesetProps.LockedTo) and {} or rolesetItems,
					SelectedItem = action,

					HideLastSeparator = i ~= #rolesets,
					Removable = false,

					PermissionChanged = function(newPermission)
						if props.RolePermissionChanged then
							props.RolePermissionChanged(rolesetProps.Id, newPermission)
						end
					end,

					TooltipText = tooltipText,
				}),
			}),
		})

		rolesetCollaboratorItems["Roleset"..i] = collaboratorItem
	end

	local arrowImageProps = self.state.expanded and downArrowProps or rightArrowProps

	local groupHeaderTooltipText = nil
	if FFlagLimitGroupRoleSetPermissionsInGui then
		groupHeaderTooltipText = localized.PackagePermissions.ActionDropdown.GroupOwnedTooltip .. " " .. (not sameAction and localized.PackagePermissions.ActionDropdown.MultipleLabelTooltip or "")
	end

	local expandableList
	if FFlagDevFrameworkReplaceExpandaleWidgetWithExpandablePane then
		return Roact.createElement(ExpandablePane, {
			Expanded = props.Enabled and self.state.expanded,
			LayoutOrder = layoutOrder,
			OnExpandedChanged = function() end,
			HeaderComponent = Roact.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				Position = UDim2.new(0, collaboratorItemOffset, 0, 0),
				Size = UDim2.new(1, -collaboratorItemOffset, 0, 60),
				Text = "",
				[Roact.Event.Activated] = self.onClick,
			}, {
				GroupCollaborator = props.GroupData and Roact.createElement(CollaboratorItem, {
					Enabled = false,

					SubjectType = Enum.CreatorType.Group,

					CollaboratorName = props.GroupData.Name,
					CollaboratorId = props.GroupData.Id,
					CollaboratorIcon = Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["GroupIcon"], props.GroupData.Id,
						AssetConfigConstants.rbxThumbSizes.GroupIconImageSize),
					UseMask = false,

					Action = sameAction and getLabelForAction(localized, sameAction) or localized.PackagePermissions.ActionDropdown.MultipleLabel,
					Items = anyLocked and {} or props.Items,

					SecondaryText = props.SecondaryText,
					Removable = props.Removable or false,
					Removed = props.Removed,

					IsLoading = #rolesets == 0,
					TooltipText = groupHeaderTooltipText
				})
			})
		}, rolesetCollaboratorItems)
	else
		return Roact.createElement(ExpandableWidget, {
			ExpandableContent = {
				RoleCollaborators = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, 0),
				}, rolesetCollaboratorItems)
			},
			IsExpanded = props.Enabled and self.state.expanded,
			LayoutOrder = layoutOrder,
			OnClick = self.onClick,
			TopLevelContent = {
				CollapseArrow = props.Enabled and Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
					Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ImageColor3 = Color3.fromRGB(204, 204, 204),
				})),

				Frame = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -collaboratorItemOffset, 0, 60),
					Position = UDim2.new(0, collaboratorItemOffset, 0, 0),
				}, {
					GroupCollaborator = props.GroupData and Roact.createElement(CollaboratorItem, {
						Enabled = false,

						SubjectType = Enum.CreatorType.Group,

						CollaboratorName = props.GroupData.Name,
						CollaboratorId = props.GroupData.Id,
						CollaboratorIcon = Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["GroupIcon"], props.GroupData.Id,
							AssetConfigConstants.rbxThumbSizes.GroupIconImageSize),
						UseMask = false,

						Action = sameAction and getLabelForAction(localized, sameAction) or localized.PackagePermissions.ActionDropdown.MultipleLabel,
						Items = anyLocked and {} or props.Items,

						SecondaryText = props.SecondaryText,
						Removable = props.Removable or false,
						Removed = props.Removed,

						IsLoading = #rolesets == 0,

						TooltipText = groupHeaderTooltipText
					})
				}),
			},
		})
	end
end

return GroupCollaboratorItem