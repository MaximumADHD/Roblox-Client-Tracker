--[[
	A container of CollaboratorItems for the group and its rolesets

	Necessary Properties:
		CollaboratorName = string, Name of the group
		CollaboratorId = num, Id of the group

		Enabled = bool, Whether the component is enabled or not
		HideLastSeparator = bool, Hide the last separator if there is a subsequent collaborator with its own separator
		Removable = bool, Whether this collaborator can be removed

		GroupPermissionChanged = function, Callback when the group's permission changes
		function RolePermissionChanged = function, Callback when a role's permission changes
		Items = table, Which permissions can be assigned in this collaborator
		Permissions = table, Permissions prop

	Optional Properties:

]]
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local UILibrary = require(Libs.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local ExpandableList = UILibrary.Component.ExpandableList
local Spritesheet = UILibrary.Util.Spritesheet

local Util = Plugin.Core.Util
local Urls = require(Util.Urls)
local Images = require(Util.Images)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local ContextHelper = require(Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local CollaboratorThumbnail = require(PermissionsDirectory.CollaboratorThumbnail)
local CollaboratorItem = require(PermissionsDirectory.CollaboratorItem)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local arrowSize = 12
local arrowPadding = 4 -- padding between arrow and GroupCollaboratorItem icon

local arrowSpritesheet = Spritesheet(Images.ARROW_SPRITESHEET, {
	SpriteSize = arrowSize,
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

	self.onTopLevelHovered = function()
		self:setState({
			hovered = true,
		})
	end

	self.onTopLevelHoverEnded = function()
		self:setState({
			hovered = false,
		})
	end
end

function GroupCollaboratorItem:render()
	local props = self.props

	return withTheme(function(theme)
		return withLocalization(function(_, localized)
			local rolesetCollaboratorItems = {}
			local anyLocked = false
			local sameAction = false

			local rolesets = self.props.GroupData and self.props.GroupData.Roles or {}
			table.sort(rolesets, function(a,b) return b.Rank < a.Rank end)

			local rolesetItems = getRolesetItems(props, localized)
			local collaboratorItemOffset = props.Enabled and arrowSize + arrowPadding or 0
			for i,rolesetProps in pairs(rolesets) do
				local action = getActionForRoleset(props, rolesetProps)
				if i == 1 then
					sameAction = action
				end

				local enabled = props.Enabled
				if rolesetProps.Name == "Owner" then
					enabled = false
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
						}),
					}),
				})
				
				rolesetCollaboratorItems["Roleset"..i] = collaboratorItem
			end
			
			local arrowImageProps = self.state.expanded and downArrowProps or rightArrowProps
			
			local expandableList = Roact.createElement(ExpandableList, {
				TopLevelItem = {
					Frame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 0,
						-- TODO (awarwick) 5/29/2019. We're using hardcoded sizes now because this design is a WIP
						-- and we don't want to spend the engineering resources on somethat that could drastically change
						Size = UDim2.new(1, 0, 0, 60),

						-- TODO: Consider moving this to expandable list when mouse handling is added into ui library
						[Roact.Event.MouseEnter] = self.onTopLevelHovered,
						[Roact.Event.MouseMoved] = self.onTopLevelHovered,
						[Roact.Event.MouseLeave] = self.onTopLevelHoverEnded,
					}, {

						CollapseArrow = props.Enabled and Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
							Size = UDim2.new(0, arrowSize, 0, arrowSize),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0),
							BackgroundTransparency = 1,
							ImageColor3 = true and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(25, 25, 25),
						})),

						Frame = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -collaboratorItemOffset, 1, 0),
							Position = UDim2.new(0, collaboratorItemOffset, 0, 0),
						}, {
							GroupCollaborator = props.GroupData and Roact.createElement(CollaboratorItem, {
								Enabled = false,

								SubjectType = Enum.CreatorType.Group,

								CollaboratorName = props.GroupData.Name,
								CollaboratorId = props.GroupData.Id,
								CollaboratorIcon =  Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["GroupIcon"], props.GroupData.Id, 
									AssetConfigConstants.rbxThumbSizes.GroupIconImageSize),
								UseMask = false,
								
								Action = sameAction and getLabelForAction(localized, sameAction) or localized.PackagePermissions.ActionDropdown.MultipleLabel,
								Items = anyLocked and {} or props.Items,
								
								SecondaryText = props.SecondaryText,
								Removable = props.Removable or false,
								Removed = props.Removed,

								IsLoading = #rolesets == 0,

								
								-- mwang, 10/28/2019, commented out for the time being because it can be used later when adding group collaborators to a package.
								-- PermissionChanged = function(newPermission)
								-- 	props.GroupPermissionChanged(props.GroupId, newPermission)
								-- end,
							})
						}),
					}),
				},
				
				Content = {
					RoleCollaborators = Roact.createElement(FitToContent, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
					}, rolesetCollaboratorItems)
				},

				IsExpanded = props.Enabled and self.state.expanded,
				OnExpandedStateChanged = function()
					if not props.Enabled then return end
					self:setState({
						expanded = not self.state.expanded,
					})
				end,
			})
			
			return expandableList
		end)
	end)
end

return GroupCollaboratorItem