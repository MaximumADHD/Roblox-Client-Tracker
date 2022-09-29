local FFlagUXImprovementsShowUserPermsWhenCollaborator2 = game:GetFastFlag("UXImprovementsShowUserPermsWhenCollaborator2")
local FFlagCOLLAB2168FixPermissionsDropdownContrastIssue = game:DefineFastFlag("COLLAB2168FixPermissionsDropdownContrastIssue", false)

local ITEM_HEIGHT = 60
local PADDING_Y = 20
local PADDING_X = 12
local CONTENT_HEIGHT = ITEM_HEIGHT - PADDING_Y
local LIST_PADDING = 30
local DROPDOWN_WIDTH = 120

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryLoadingIndicator = SharedFlags.getFFlagRemoveUILibraryLoadingIndicator()
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local UILibraryButton = UILibrary.Component.Button

local UI = Framework.UI
local Button = UI.Button
local LoadingIndicator = if FFlagRemoveUILibraryLoadingIndicator then UI.LoadingIndicator else UILibrary.Component.LoadingIndicator
local SelectInput = UI.SelectInput
local TextLabel = UI.Decoration.TextLabel

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local DeleteButton = Roact.PureComponent:extend("DeleteButton")

function DeleteButton:render()
	local props = self.props

	local enabled = props.Enabled
	local onClicked = props.OnClicked

	local theme = props.Stylizer

	if FFlagRemoveUILibraryButton then
		return Roact.createElement(Button, {
			AnchorPoint = Vector2.new(1, 0.5),
			OnClick = onClicked,
			Position = UDim2.fromScale(1, 0.5),
			Style = "Close",
			StyleModifier = if enabled then nil else StyleModifier.Disabled,
		})
	else
		return Roact.createElement(UILibraryButton, {
			Size = UDim2.new(0, CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
			Position = UDim2.new(1, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),

			BorderSizePixel = 0,
			Style = "LargeHitboxButton",

			RenderContents = function(buttonTheme, hovered)
				return {
					Icon = Roact.createElement("ImageLabel", {
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),

						Image = "rbxasset://textures/StudioSharedUI/close.png",
						ImageColor3 = theme.collaboratorItem.deleteButton,
						ImageTransparency = enabled and 0 or 0.4,

						BackgroundTransparency = 1,
					})
				}
			end,

			OnClick = function()
				if enabled and onClicked then
					onClicked()
				end
			end,
		})
	end
end

DeleteButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(DeleteButton)

local CollaboratorItem = Roact.PureComponent:extend("CollaboratorItem")

CollaboratorItem.defaultProps = {
	Writable = true,
	Loading = false,
}

function CollaboratorItem:DEPRECATED_getCurrentPermissionLabel()
	local props = self.props

	local currentPermission = props.CurrentPermission
	local availablePermissions = props.AvailablePermissions

	local localization = props.Localization

	if currentPermission == PermissionsConstants.MultipleKey then
		return localization:getText("Permissions", "MultipleLabel")
	end

	for _,permission in ipairs(availablePermissions) do
		if permission.Key == currentPermission then
			return permission.Display
		end
	end

	assert(false)
end

function CollaboratorItem:createTextLabel(text, style, height, padding, layoutOrder, isEnabled)
	return Roact.createElement(TextLabel, {
		StyleModifier = not isEnabled and StyleModifier.Disabled or nil,
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
	if FFlagCOLLAB2168FixPermissionsDropdownContrastIssue then
		local permissionMetadata = self.props.AvailablePermissions

		self.onItemActivated = function(_, index)
			local selectedPermission = permissionMetadata[index]
			if self.props.Writable and selectedPermission.Key ~= self.props.CurrentPermission then
				self.props.OnPermissionChanged(selectedPermission.Key)
			end
		end

		self.onRenderItem = function(_, index, activated)
			local selectedPermission = permissionMetadata[index]
			local theme = self.props.Stylizer
			local mainText = selectedPermission.Display
			local description = selectedPermission.Description
			local isEnabled = selectedPermission.IsEnabled == nil or selectedPermission.IsEnabled

			return Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, theme.selectInput.button.height),
				LayoutOrder = index,
				StyleModifier = not isEnabled and StyleModifier.Disabled or nil,
				OnClick = activated,
			}, {
				UILayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 0),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
				MainTextLabel = self:createTextLabel(mainText, "Normal", theme.fontStyle.Normal.TextSize, theme.selectInput.padding, 0, isEnabled),
				DescriptionTextLabel = self:createTextLabel(description, "SubText", theme.fontStyle.Subtext.TextSize, theme.selectInput.padding, 1, isEnabled),
			})
		end
	else
		self.onItemActivated = function(permission)
			if self.props.Writable and permission.Key ~= self.props.CurrentPermission then
				self.props.OnPermissionChanged(permission.Key)
			end
		end

		self.onRenderItem = function(item, index, activated)
			local theme = self.props.Stylizer
			local mainText = item.Display
			local description = item.Description

			local isEnabled = item.IsEnabled == nil or item.IsEnabled

			return Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, theme.selectInput.button.height),
				LayoutOrder = index,
				StyleModifier = not isEnabled and StyleModifier.Disabled or nil,
				OnClick = activated,
			}, {
				UILayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 0),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),

				MainTextLabel = self:createTextLabel(mainText, "Normal", theme.fontStyle.Normal.TextSize, theme.selectInput.padding, 0, isEnabled),

				DescriptionTextLabel = self:createTextLabel(description, "SubText", theme.fontStyle.Subtext.TextSize, theme.selectInput.padding, 1, isEnabled),
			})
		end
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

	local currentPermission = props.CurrentPermission

	if not currentPermission then
		return
	end

	-- remove DEPRECATED variables with FFlagCOLLAB2168FixPermissionsDropdownContrastIssue
	local DEPRECATED_availablePermissions = props.AvailablePermissions

	local permissionMetadata = props.AvailablePermissions
	local selectedPermissionIndex = 1
	local permissionItems = {}
	
	if FFlagCOLLAB2168FixPermissionsDropdownContrastIssue then
		for index, permission in ipairs(permissionMetadata) do
			table.insert(permissionItems, permission.Display)
			if permission.Key == currentPermission then
				selectedPermissionIndex = index
			end
		end
	end

	local theme = props.Stylizer

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
		LayoutOrder = layoutOrder,

		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING_X/2),
			PaddingRight = UDim.new(0, PADDING_X/2),
			PaddingTop = UDim.new(0, PADDING_Y/2),
			PaddingBottom = UDim.new(0, PADDING_Y/2),
		}),

		IconContainer = icon and Roact.createElement("Frame", {
			LayoutOrder = 0,
			Size = UDim2.new(0, CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			Icon = icon,
		}),

		CollaboratorName = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = 1,
			Size = icon and UDim2.new(1, -(LIST_PADDING*3 + CONTENT_HEIGHT + DROPDOWN_WIDTH), 0, CONTENT_HEIGHT)
				or UDim2.new(1, -(LIST_PADDING*2 + DROPDOWN_WIDTH) + CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
			Position = UDim2.new(0, icon and CONTENT_HEIGHT + LIST_PADDING or 0 , 0, 0),
			BackgroundTransparency = 1,

			Text = name,
			TextXAlignment = Enum.TextXAlignment.Left,
		})),

		PermissionEditor = Roact.createElement("Frame", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,

			Size = UDim2.new(0, theme.selectInput.width, 0, CONTENT_HEIGHT),
			Position = UDim2.new(1, -(CONTENT_HEIGHT+LIST_PADDING), 0, 0),
			AnchorPoint = Vector2.new(1, 0),
		}, {
			LoadingIndicator = loading and Roact.createElement(LoadingIndicator, {
				Size = UDim2.fromScale(1, 1),
			}),

			PermissionsDropdown = not loading and Roact.createElement(SelectInput, if FFlagCOLLAB2168FixPermissionsDropdownContrastIssue then {
				AnchorPoint = if FFlagRemoveUILibraryButton then Vector2.new(0, 0.5) else nil,
				Enabled = writable and #permissionItems > 1,
				Items = permissionItems,
				Position = if FFlagRemoveUILibraryButton then UDim2.fromScale(0, 0.5) else nil,
				SelectedIndex = selectedPermissionIndex,
				OnItemActivated = self.onItemActivated,
				OnRenderItem = self.onRenderItem,
				Width = theme.selectInput.width,
			} else {
				Enabled = writable and #DEPRECATED_availablePermissions > 1,
				Items = DEPRECATED_availablePermissions,
				OnItemActivated = self.onItemActivated,
				OnRenderItem = self.onRenderItem,
				PlaceholderText = self:DEPRECATED_getCurrentPermissionLabel(),
				Width = theme.selectInput.width,
			}) or nil,
		}),

		Delete = FFlagUXImprovementsShowUserPermsWhenCollaborator2 and writable and removable and Roact.createElement(DeleteButton, {
			LayoutOrder = 3,
			Enabled = writable and not loading,

			OnClicked = onRemoved,
		}),

		DEPRECATED_Delete = not FFlagUXImprovementsShowUserPermsWhenCollaborator2 and removable and Roact.createElement(DeleteButton, {
			LayoutOrder = 3,
			Enabled = writable and not loading,

			OnClicked = onRemoved,
		}),
	})
end

CollaboratorItem = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(CollaboratorItem)

return CollaboratorItem
