local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext


local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)
local CollaboratorItem = require(Plugin.Src.Components.CollaboratorItem)
local RolesetCollaboratorItem = require(Plugin.Src.Components.RolesetCollaboratorItem)
local Separator = require(Plugin.Packages.Framework).UI.Separator
local GroupIconThumbnail = require(Plugin.Src.Components.Thumbnails.GroupIconThumbnail)

local IsGroupOwner = require(Plugin.Src.Selectors.IsGroupOwner)
local GetGroupRolesets = require(Plugin.Src.Selectors.GetGroupRolesets)
local GetGroupPermission = require(Plugin.Src.Selectors.GetGroupPermission)
local GetGroupName = require(Plugin.Src.Selectors.GetGroupName)
local RemoveGroupCollaborator = require(Plugin.Src.Thunks.RemoveGroupCollaborator)
local SetGroupPermission = require(Plugin.Src.Thunks.SetGroupPermission)

local ExpandablePane = Framework.UI.ExpandablePane
local Button = Framework.UI.Button

local DEFAULT_ROLESET_VALUE = PermissionsConstants.NoAccessKey
local PERMISSION_DESCRIPTIONS = "PermissionDescriptions"
local PERMISSION_LABELS = "PermissionLabels"



local GroupCollaboratorItem = Roact.PureComponent:extend("GroupCollaboratorItem")

function GroupCollaboratorItem:init()
	self.state = {
		expanded = false,
	}
end

function GroupCollaboratorItem:getCurrentPermission()
	local props = self.props

	local isOwner = props.IsOwner

	local currentPermission = props.CurrentPermission

	if isOwner then
		return PermissionsConstants.MultipleKey
	else
		return currentPermission
	end
end

function GroupCollaboratorItem:getAvailablePermissions()
	local props = self.props

	local isOwner = props.IsOwner

	local localization = props.Localization

	if isOwner then
		return {}
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
			}
		}
	end
end

function GroupCollaboratorItem:render()
	local props = self.props

	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local writable = props.Writable
	local id = props.Id

	local theme = props.Stylizer	
	local isOwner = props.IsOwner
	local groupRolesets = props.GroupRolesets
	local groupName = props.GroupName

	local setGroupPermission = props.SetGroupPermission
	local removeGroupCollaborator = props.RemoveGroupCollaborator
	
	local groupRolePermissions = props.GroupRolePermissions

	local hideSeparator = props.HideSeparator
	local isLoading = #groupRolesets == 0

	local children = {}
	local additionalChildren = {}
	for i, rolesetId in ipairs(groupRolesets) do
		-- Only the group that owns this universe uses role permission info
		local thisRolePermissions = if isOwner then groupRolePermissions[rolesetId] else nil

		local child = Roact.createElement(RolesetCollaboratorItem, {
			LayoutOrder = i,
			Id = rolesetId,
			Writable = writable,
			CurrentPermission = DEFAULT_ROLESET_VALUE,
			IsGroupOwner = isOwner,
			RolePermissions = thisRolePermissions,
		})
		
		if i <= 3 then
			table.insert(children, child)
		else
			table.insert(additionalChildren, child)
		end
	end
	
	if #additionalChildren == 0 then
		-- If there is no expand button (no additional children), then last child shouldn't have a separator
		children[#children].props["HideSeparator"] = true 
	end

	local groupCollaboratorItem = Roact.createElement(CollaboratorItem, {
		Name = groupName,
		Icon = Roact.createElement(GroupIconThumbnail, {
			Id = id,
			Size = UDim2.fromScale(1, 1),
		}),

		Writable = writable and not isOwner,
		Loading = isLoading,

		Removable = not isOwner,
		OnRemoved = function()
			removeGroupCollaborator(id)
		end,

		CurrentPermission = self:getCurrentPermission(),
		AvailablePermissions = self:getAvailablePermissions(),
		OnPermissionChanged = function(newPermission)
			setGroupPermission(id, newPermission)
		end,
	})

	local functionComponent = function()
		local buttonText
		if #additionalChildren == 1 then
			buttonText = if self.state.expanded then localization:getText("Buttons", "HideRole") 
				else localization:getText("Buttons", "SeeOneMoreRole")
		else
			buttonText = if self.state.expanded then localization:getText("Buttons", "HideRoles", {count = string.format("%u", #additionalChildren)}) 
				else localization:getText("Buttons", "SeeMoreRoles", {count = string.format("%u", #additionalChildren)})
		end
		
		return Roact.createElement(Button, {
			Size = theme.collaboratorItem.groupCollaboratorItem.headerComponent.size,--UDim2.new(0, 608, 0, 34),
			Text = "",
			LayoutOrder = 1000000,
			Style = "RoundSubtle",
			OnClick = function()
				if isLoading then return end
				self:setState({
					expanded = not self.state.expanded,
				})
			end,
		}, {
			Arrow = Roact.createElement("ImageLabel", {
				Image = if self.state.expanded then theme.arrows.down else theme.arrows.right,
				Position = theme.collaboratorItem.groupCollaboratorItem.headerComponent.arrowLabel.position,--UDim2.new(0, 42, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundTransparency = 1,
				Size = theme.collaboratorItem.groupCollaboratorItem.headerComponent.arrowLabel.size,
			}),

			Text = Roact.createElement("TextLabel", {
				Text = buttonText,
				Position = theme.collaboratorItem.groupCollaboratorItem.headerComponent.textLabel.position,--UDim2.new(0, 60, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				TextSize = theme.collaboratorItem.groupCollaboratorItem.ExpandTextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.fontStyle.Normal.TextColor3,
				Font = theme.fontStyle.Normal.Font,
				BackgroundTransparency = 1,
			})
		})
	end

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, theme.collaboratorItem.groupCollaboratorItem.collaboratorItemOffset, 0, 0),
		Size = theme.collaboratorItem.groupCollaboratorItem.size,
	}, {
		UILayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 0),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Right
		}),

		GroupCollaborator = groupCollaboratorItem,

		Role1 = children[1],
		Role2 = children[2],
		Role3 = children[3],
		
		AdditionalRoles = if #additionalChildren > 0 then Roact.createElement(ExpandablePane, {
			Expanded = self.state.expanded,
			OnExpandedChanged = function() end,
			HeaderComponent = functionComponent,
			LayoutOrder = 4,
			ContentPadding = 0,
			ContentSpacing = 0,
			PutHeaderLast = self.state.expanded,
			Size = theme.collaboratorItem.groupCollaboratorItem.expandablePaneSize,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Style = "Arrowless",
		}, additionalChildren) else nil,
		
		Separator = not hideSeparator and Roact.createElement(Separator, {
			LayoutOrder = 5,
		})
	})
end

GroupCollaboratorItem = withContext({
	Stylizer = Stylizer,
	Localization = ContextServices.Localization,
})(GroupCollaboratorItem)

GroupCollaboratorItem = RoactRodux.connect(
	function(state, props)
		return {
			IsOwner = IsGroupOwner(state, props.Id),
			GroupRolesets = GetGroupRolesets(state, props.Id),
			GroupName = GetGroupName(state, props.Id),
			CurrentPermission = GetGroupPermission(state, props.Id),
			GroupRolePermissions = state.GroupRolePermissions.PermissionsByRole,
		}
	end,
	function(dispatch)
		return {
			SetGroupPermission = function(...)
				dispatch(SetGroupPermission(...))
			end,
			RemoveGroupCollaborator = function(...)
				dispatch(RemoveGroupCollaborator(...))
			end,
		}
	end
)(GroupCollaboratorItem)

return GroupCollaboratorItem
