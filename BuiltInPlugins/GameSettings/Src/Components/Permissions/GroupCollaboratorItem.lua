--[[
	A container of CollaboratorItems for the group and its rolesets

	TODO: convert this component to use HoverArea

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

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local ThumbnailLoader = require(Plugin.Src.Providers.DEPRECATED_ThumbnailLoaderContextItem)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local ExpandableList = UILibrary.Component.ExpandableList
local Spritesheet = UILibrary.Util.Spritesheet

local getThumbnailLoader = require(Plugin.Src.Consumers.getThumbnailLoader)
local CollaboratorItem = require(Plugin.Src.Components.Permissions.CollaboratorItem)
local Separator = require(Plugin.Src.Components.Separator)

local createFitToContent = UILibrary.Component.createFitToContent

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
	if FFlagStudioConvertGameSettingsToDevFramework then
		if action == PermissionsConstants.NoAccessKey then
			return localized:getText("AccessPermissions", "NoAccessLabel")
		elseif action == PermissionsConstants.PlayKey then
			return localized:getText("AccessPermissions", "PlayLabel")
		elseif action == PermissionsConstants.EditKey then
			return localized:getText("AccessPermissions", "EditLabel")
		elseif action == PermissionsConstants.AdminKey then
			return localized:getText("AccessPermissions", "EditLabel")
		else
			return ""
		end
	else
		if action == PermissionsConstants.NoAccessKey then
			return localized.AccessPermissions.ActionDropdown.NoAccessLabel
		elseif action == PermissionsConstants.PlayKey then
			return localized.AccessPermissions.ActionDropdown.PlayLabel
		elseif action == PermissionsConstants.EditKey then
			return localized.AccessPermissions.ActionDropdown.EditLabel
		elseif action == PermissionsConstants.AdminKey then
			return localized.AccessPermissions.ActionDropdown.EditLabel
		else
			return ""
		end
	end
end

local function getActionForRoleset(props, rolesetProps)
	if rolesetProps.LockedTo then
		return rolesetProps.LockedTo
	end
	
	return props.Permissions[PermissionsConstants.RoleSubjectKey][rolesetProps.Id][PermissionsConstants.ActionKey]
end

local function getRolesetItems(props, localized)
	if next(props.Items) == nil then return {} end

	local noAccessLabel = FFlagStudioConvertGameSettingsToDevFramework
		and localized:getText("AccessPermissions", "NoAccessLabel")
		or localized.AccessPermissions.ActionDropdown.NoAccessLabel

	local NoAccessDescription = FFlagStudioConvertGameSettingsToDevFramework
		and localized:getText("AccessPermissions", "NoAccessDescription")
		or localized.AccessPermissions.ActionDropdown.NoAccessDescription

	local permissions = Cryo.List.join(
		{Cryo.Dictionary.join({Key = PermissionsConstants.NoAccessKey, Display = noAccessLabel, Description = NoAccessDescription})},
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

function GroupCollaboratorItem:DEPRECATED_render()
	local props = self.props
	local thumbnailLoader = getThumbnailLoader(self)

	if props.Enabled and self.state.hovered then
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
			
			local rolesetItems = getRolesetItems(props, localized)
			local collaboratorItemOffset = props.Enabled and arrowSize + arrowPadding or 0
			for i,rolesetProps in pairs(rolesets) do
				local action = getActionForRoleset(props, rolesetProps)
				if i == 1 then
					sameAction = action
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
							Items = (lockedPermission or rolesetProps.LockedTo) and {} or rolesetItems,
							
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

						CollapseArrow = props.Enabled and Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
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

function GroupCollaboratorItem:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local thumbnailLoader = props.ThumbnailLoader
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local rolesetCollaboratorItems = {}
	local anyLocked = false
	local sameAction = false

	local rolesets = {}

	for _,permission in pairs(props.Permissions[PermissionsConstants.RoleSubjectKey]) do
		if permission[PermissionsConstants.GroupIdKey] == props.GroupId then
			table.insert(rolesets, {
				Name=permission[PermissionsConstants.SubjectNameKey],
				Id=permission[PermissionsConstants.SubjectIdKey],
				LockedTo=(props.IsOwner and permission[PermissionsConstants.SubjectRankKey]==255) and localization:getText("AccessPermissions", "OwnerLabel") or nil,
				Rank=permission[PermissionsConstants.SubjectRankKey]
			})
		end
	end
	table.sort(rolesets, function(a,b) return b.Rank < a.Rank end)

	local rolesetItems = getRolesetItems(props, localization)
	local collaboratorItemOffset = props.Enabled and arrowSize + arrowPadding or 0
	for i,rolesetProps in pairs(rolesets) do
		local action = getActionForRoleset(props, rolesetProps)
		if i == 1 then
			sameAction = action
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
				Roact.createElement(Separator, {
					Position = UDim2.new(0, 70, 0, 0),
					Size = UDim2.new(1, -70, 0, 1),
				}),
				Roact.createElement(CollaboratorItem, {
					Enabled = props.Enabled,

					CollaboratorName = rolesetProps.Name,
					CollaboratorId = rolesetProps.Id,
					CollaboratorIcon = "",

					Action = rolesetProps.LockedTo or getLabelForAction(localization, action),
					Items = (lockedPermission or rolesetProps.LockedTo) and {} or rolesetItems,

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

				CollapseArrow = props.Enabled and Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
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
						Action = sameAction and getLabelForAction(localization, sameAction) or localization:getText("AccessPermissions", "MultipleLabel"),
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

		IsExpanded = props.Enabled and self.state.expanded,
		OnExpandedStateChanged = function()
			if not props.Enabled then return end
			self:setState({
				expanded = not self.state.expanded,
			})
		end,
	})
	
	return expandableList
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(GroupCollaboratorItem, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		ThumbnailLoader = ThumbnailLoader,
	})
end

return GroupCollaboratorItem