--[[
	A container of CollaboratorItems for the group and its rolesets

	Props:
		string CollaboratorName - Name of the group
		number CollaboratorId - Id of the group

		bool Enabled - Whether the component is enabled or not
		bool HideLastSeparator - Hide the last separator if there is a subsequent collaborator with its own separator
		bool Removable - Whether this collaborator can be removed

		function GroupPermissionChanged - Callback when the group's permission changes
		function RolePermissionChanged - Callback when a role's permission changes
		table Items - Which permissions can be assigned in this collaborator
		table Permissions - Permissions prop
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local ExpandableList = require(Plugin.UILibrary.Components.ExpandableList)
local Spritesheet = require(Plugin.UILibrary.Utils.Spritesheet)

local getThumbnailLoader = require(Plugin.Src.Consumers.getThumbnailLoader)
local CollaboratorItem = require(Plugin.Src.Components.Permissions.CollaboratorItem)
local Separator = require(Plugin.Src.Components.Separator)

local createFitToContent 
if settings():GetFFlag("StudioGameSettingsUseUILibraryComponents") then
	createFitToContent = require(Plugin.UILibrary.Components.createFitToContent)
else
	createFitToContent = require(Plugin.Src.Components.createFitToContent)
end

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local arrowSize = 12
local arrowPadding = 4 -- padding between arrow and GroupCollaboratorItem icon

local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
	SpriteSize = arrowSize,
	NumSprites = 4,
})

local rightArrowProps = arrowSpritesheet[2]
local downArrowProps = arrowSpritesheet[3]

local function getLabelForAction(localized, action)
	if action == PermissionsConstants.NoAccessKey then
		return localized.AccessPermissions.ActionDropdown.NoAccessLabel
	elseif action == PermissionsConstants.PlayKey then
		return localized.AccessPermissions.ActionDropdown.PlayLabel
	elseif action == PermissionsConstants.EditKey then
		return localized.AccessPermissions.ActionDropdown.EditLabel
	elseif action == PermissionsConstants.AdminKey then
		return localized.AccessPermissions.ActionDropdown.AdminLabel
	else
		return ""
	end
end

local function getActionForRoleset(props, rolesetProps)
	if rolesetProps.LockedTo then
		return rolesetProps.LockedTo
	end
	
	return props.Permissions[PermissionsConstants.RoleSubjectKey][rolesetProps.Id][PermissionsConstants.ActionKey]
end

local function getRolesetItems(props, localized)
	local permissions = Cryo.List.join(
		{Cryo.Dictionary.join({Key = PermissionsConstants.NoAccessKey, Display = localized.AccessPermissions.ActionDropdown.NoAccessLabel, Description = localized.AccessPermissions.ActionDropdown.NoAccessDescription})},
		props.Items
	)
	
	return permissions
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
	local thumbnailLoader = getThumbnailLoader(self)

	if self.state.hovered then
		getMouse(self).setHoverIcon("PointingHand", self.state.hovered)
	else
		getMouse(self).resetMouse()
	end

	return withTheme(function(theme)
		return withLocalization(function(localized)
			local rolesetCollaboratorItems = {}
			local anyLocked = false
			local sameAction = false

			local rolesets = {}
				
			for _,permission in pairs(props.Permissions[PermissionsConstants.RoleSubjectKey]) do
				if permission[PermissionsConstants.GroupIdKey] == props.GroupId then
					table.insert(rolesets, {
						Name=permission[PermissionsConstants.SubjectNameKey],
						Id=permission[PermissionsConstants.SubjectIdKey],
						LockedTo=(props.IsOwner and permission[PermissionsConstants.SubjectRankKey]==255) and localized.AccessPermissions.ActionDropdown.OwnerLabel or nil,
						Rank=permission[PermissionsConstants.SubjectRankKey]
					})
				end
			end
			table.sort(rolesets, function(a,b) return b.Rank < a.Rank end)
			
			local collaboratorItemOffset = arrowSize + arrowPadding
			for i,rolesetProps in pairs(rolesets) do
				local action = getActionForRoleset(props, rolesetProps)
				if i == 1 then
					sameAction = action
				end

				sameAction = sameAction == action and sameAction or false
				anyLocked = rolesetProps.LockedTo and true or anyLocked
				
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
						Roact.createElement(Separator, {
							Position = UDim2.new(0, 70, 0, 0),
							Size = UDim2.new(1, -70, 0, 1),
						}),
						Roact.createElement(CollaboratorItem, {
							Enabled = props.Enabled,
							
							CollaboratorName = rolesetProps.Name,
							CollaboratorId = rolesetProps.Id,
							CollaboratorIcon = "",
							
							Action = rolesetProps.LockedTo or getLabelForAction(localized, action),
							Items = rolesetProps.LockedTo and {} or getRolesetItems(props, localized),
							
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
						Separator = Roact.createElement(Separator, {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 0, 0),
						}),

						CollapseArrow = Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
							Size = UDim2.new(0, arrowSize, 0, arrowSize),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0),
							BackgroundTransparency = 1,
							ImageColor3 = theme.collaboratorItem.collapseStateArrow,
						})),

						Frame = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -collaboratorItemOffset, 1, 0),
							Position = UDim2.new(0, collaboratorItemOffset, 0, 0),
						}, {
							GroupCollaborator = Roact.createElement(CollaboratorItem, {
								Enabled = props.Enabled,
								
								CollaboratorName = props.GroupName,
								CollaboratorId = props.GroupId,
								CollaboratorIcon = thumbnailLoader.getThumbnail(PermissionsConstants.GroupSubjectKey, props.GroupId),
								Action = sameAction and getLabelForAction(localized, sameAction) or localized.AccessPermissions.ActionDropdown.MultipleLabel,
								Items = anyLocked and {} or props.Items,
								
								SecondaryText = props.SecondaryText,
								HideLastSeparator = true,
								Removable = props.Removable or false,
								Removed = props.Removed,

								IsLoading = #rolesets == 0,
								
								PermissionChanged = function(newPermission)
									props.GroupPermissionChanged(props.GroupId, newPermission)
								end,
							})
						}),

						LastSeparator = (not (props.HideLastSeparator or self.state.expanded)) and Roact.createElement(Separator, {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 1, -1),
						}),
					}),
				},
				
				Content = {
					RoleCollaborators = Roact.createElement(FitToContent, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
					}, rolesetCollaboratorItems)
				},

				IsExpanded = self.state.expanded,
				OnExpandedStateChanged = function()
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