local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Util = Framework.Util
local SelectInput = UI.SelectInput
local Button = UI.Button
local TextLabel = UI.Decoration.TextLabel
local Separator = UI.Separator
local Tooltip = UI.Tooltip
local LoadingIndicator = Framework.UI.LoadingIndicator 
local LayoutOrderIterator = Util.LayoutOrderIterator


local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)
local DeleteButton = Roact.PureComponent:extend("DeleteButton")

function DeleteButton:render()
	local props = self.props

	local enabled = props.Enabled
	local onClicked = props.OnClicked
	
	local style = props.Stylizer

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, style.collaboratorItem.deleteButton.size, 0, style.collaboratorItem.deleteButton.size),
		Position = UDim2.new(1, style.collaboratorItem.xOffset, .5, 0),
		AnchorPoint = Vector2.new(1, .5),
		Image = style.deleteIcon,
		BackgroundTransparency = 1,

		[Roact.Event.Activated] = function()
			if enabled and onClicked then
				onClicked()
			end
		end,
	})
end


DeleteButton = withContext({
	Stylizer = Stylizer,
})(DeleteButton)


local CollaboratorItem = Roact.PureComponent:extend("CollaboratorItem")

CollaboratorItem.defaultProps = {
	Writable = true,
	Loading = false,
}

function CollaboratorItem:getCurrentPermissionLabel()
	local props = self.props

	local currentPermission = props.CurrentPermission
	local availablePermissions = props.AvailablePermissions

	local localization = props.Localization

	if currentPermission == PermissionsConstants.MultipleKey then
		return localization:getText("PermissionLabels", "Multiple")
	end

	for _,permission in ipairs(availablePermissions) do
		if permission.Key == currentPermission then
			return permission.Display
		end
	end

	assert(false)
end

function createTextLabel(text, style, height, padding, layoutOrder)
	return Roact.createElement(TextLabel, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, height),
		Style = style,
		Text = text,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
	},	{
		-- This padding ensures the text is not lined up right along the edge of the TextLabel
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, padding),
			PaddingLeft = UDim.new(0, padding),
		}),
	})
end

function CollaboratorItem:init()
	self.onItemActivated = function(permission)
		if self.props.Writable and permission.Key ~= self.props.CurrentPermission then
			self.props.OnPermissionChanged(permission.Key)
		end
	end

	self.onRenderItem = function(item, index, activated)
		local theme = self.props.Stylizer

		local mainText = item.Display
		local description = item.Description

		return Roact.createElement(Button, {
			Size = UDim2.new(1, 0, 0, theme.selectInput.button.height),
			LayoutOrder = index,
			OnClick = activated,
		}, {
			UILayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 0),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),

			MainTextLabel = createTextLabel(mainText, "Normal", theme.fontStyle.Normal.TextSize, theme.selectInput.padding, 0),

			DescriptionTextLabel = createTextLabel(description, "SubText", theme.fontStyle.Subtext.TextSize, theme.selectInput.padding, 1),
		})	
	end
end

function CollaboratorItem:render()
	local props = self.props
	
	local layoutOrder = props.LayoutOrder

	local name = props.Name
	local icon = props.Icon
	local writable = props.Writable
	local loading = props.Loading
	local removable = props.Removable
	local onRemoved = props.OnRemoved

	local availablePermissions = props.AvailablePermissions
	local isRolesetCollaborator = props.IsRolesetCollaborator
	
	local hideSeparator = props.HideSeparator
	local hidePermissions = props.HidePermissions

	local localization = props.Localization

	local theme = props.Stylizer
	
	local permissionsEnabled = writable and #availablePermissions > 1
	local deleteEnabled = writable and removable
	
	local frameTheme = if isRolesetCollaborator then theme.collaboratorItem.rolesetFrame else theme.collaboratorItem.nonRolesetFrame

	-- The x-position of the Permissions dropdown changes if there is no delete button or if its a roleset collaborator (as opposed to neither of these being true)
	local permissionsXOffset = if isRolesetCollaborator or not deleteEnabled then 0 else -40
	local collaboratorNameOffset = if icon then theme.collaboratorItem.collaboratorName.withIcon.xOffset 
		else theme.collaboratorItem.collaboratorName.withoutIcon.xOffset
	
	local layoutOrderIterator = LayoutOrderIterator.new()
		
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, frameTheme.width, 0, frameTheme.height),
		LayoutOrder = layoutOrder,		
		BackgroundTransparency = 1,
		Position = frameTheme.position,
		AnchorPoint = frameTheme.anchorPoint,
		BorderSizePixel = 0,
	}, {
		IconContainer = icon and Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, theme.collaboratorItem.iconContainerSize, 0, theme.collaboratorItem.iconContainerSize),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0,.5),
			BackgroundTransparency = 1,
		}, {
			Icon = icon,
		}),

		CollaboratorName = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = if icon then theme.collaboratorItem.collaboratorName.withIcon.size else theme.collaboratorItem.collaboratorName.withoutIcon.size,
			AnchorPoint = Vector2.new(0, .5),
			Position = UDim2.new(0, collaboratorNameOffset, .5, 0),
			BackgroundTransparency = 1,
			Text = name,
			TextXAlignment = Enum.TextXAlignment.Left,
		})),

		OwnerLabel = not removable and not isRolesetCollaborator and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = if icon then theme.collaboratorItem.ownerLabel.withIconSize else theme.collaboratorItem.ownerLabel.withoutIconSize,
			Position = theme.collaboratorItem.ownerLabel.position,
			AnchorPoint = Vector2.new(1,.5),
			BackgroundTransparency = 1,

			Text = localization:getText("CollaboratorTypes", "Owner"),
			TextXAlignment = Enum.TextXAlignment.Right,
		})),

		PermissionEditor = (removable or isRolesetCollaborator) and Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, theme.selectInput.width, 0, theme.collaboratorItem.permissionEditor.heightOffset),
			Position = UDim2.new(1, permissionsXOffset, .5, theme.collaboratorItem.permissionEditor.yOffset),
			AnchorPoint = Vector2.new(1, .5),
		}, {
			LoadingIndicator = loading and Roact.createElement(LoadingIndicator, {
				Size = UDim2.fromScale(1, 1),
			}),

			PermissionsDropdown = not loading and Roact.createElement(SelectInput, {
				Enabled = not hidePermissions and permissionsEnabled,
				Items = availablePermissions,
				OnItemActivated = self.onItemActivated,
				OnRenderItem = self.onRenderItem,
				PlaceholderText = if hidePermissions then "" else self:getCurrentPermissionLabel(),
				Width = theme.selectInput.width,
				Style = if permissionsEnabled then "Editable" else "NonEditable"
			}) or nil,
			
			Tooltip = if hidePermissions then Roact.createElement(Tooltip, {
				Text = localization:getText("PermissionDescriptions", "CannotViewGroupRoles")
			}) else nil
		}),

		Delete = deleteEnabled and Roact.createElement(DeleteButton, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Enabled = writable and not loading,

			OnClicked = onRemoved,
		}),

		Separator = not hideSeparator and Roact.createElement(Separator, {
			Position = UDim2.new(.5, 0, 1, 0),
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		})
	})
end

CollaboratorItem = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
})(CollaboratorItem)

return CollaboratorItem
