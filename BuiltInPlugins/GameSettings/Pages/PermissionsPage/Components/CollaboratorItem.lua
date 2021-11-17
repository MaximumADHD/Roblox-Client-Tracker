local FFlagUXImprovementsShowUserPermsWhenCollaborator2 = game:GetFastFlag("UXImprovementsShowUserPermsWhenCollaborator2")
local FFlagRemoveUILibraryDetailedDropdown = game:GetFastFlag("RemoveUILibraryDetailedDropdown")

local ITEM_HEIGHT = 60
local PADDING_Y = 20
local PADDING_X = 12
local CONTENT_HEIGHT = ITEM_HEIGHT - PADDING_Y
local LIST_PADDING = 30
local DROPDOWN_WIDTH = 120

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext
local UI = require(Plugin.Framework.UI)
local SelectInput = UI.SelectInput
local Button = UI.Button
local TextLabel = UI.Decoration.TextLabel

local UILibrary = require(Plugin.UILibrary)

local DEPRECATED_DetailedDropdown = UILibrary.Component.DetailedDropdown
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local UILibraryButton = UILibrary.Component.Button

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local DeleteButton = Roact.PureComponent:extend("DeleteButton")

function DeleteButton:render()
	local props = self.props

	local enabled = props.Enabled
	local onClicked = props.OnClicked

	local theme = props.Theme:get("Plugin")

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


DeleteButton = withContext({
	Theme = ContextServices.Theme,
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
		return localization:getText("Permissions", "MultipleLabel")
	end

	for _,permission in ipairs(availablePermissions) do
		if permission.Key == currentPermission then
			return permission.Display
		end
	end

	assert(false)
end

function CollaboratorItem:createTextLabel(text, style, height, padding, layoutOrder)
	assert(FFlagRemoveUILibraryDetailedDropdown)
	return Roact.createElement(TextLabel, {
		BackgroundTransparency = 1,
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
	self.onItemActivated = FFlagRemoveUILibraryDetailedDropdown and function(permission)
		if self.props.Writable and permission.Key ~= self.props.CurrentPermission then
			self.props.OnPermissionChanged(permission.Key)
		end
	end or nil

	self.onRenderItem = FFlagRemoveUILibraryDetailedDropdown and function(item, index, activated)
		local theme = self.props.Theme:get("Plugin")
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

			MainTextLabel = self:createTextLabel(mainText, "Normal", theme.fontStyle.Normal.TextSize, theme.selectInput.padding, 0),

			DescriptionTextLabel = self:createTextLabel(description, "SubText", theme.fontStyle.Subtext.TextSize, theme.selectInput.padding, 1),
		})
	end or nil
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
	local availablePermissions = props.AvailablePermissions
	local onPermissionChanged = props.OnPermissionChanged

	local theme = props.Theme:get("Plugin")

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

			Size = UDim2.new(0, DROPDOWN_WIDTH, 0, CONTENT_HEIGHT),
			Position = UDim2.new(1, -(CONTENT_HEIGHT+LIST_PADDING), 0, 0),
			AnchorPoint = Vector2.new(1, 0),
		}, {
			LoadingIndicator = loading and Roact.createElement(LoadingIndicator, {
				Size = UDim2.fromScale(1, 1),
			}),

			PermissionsDropdown = FFlagRemoveUILibraryDetailedDropdown and (not loading) and Roact.createElement(SelectInput, {
				Enabled = writable and #availablePermissions > 1,
				Items = availablePermissions,
				OnItemActivated = self.onItemActivated,
				OnRenderItem = self.onRenderItem,
				PlaceholderText = self:getCurrentPermissionLabel(),
				Width = theme.selectInput.width,
			}) or nil,

			DEPRECATED_PermissionsDropdown = not FFlagRemoveUILibraryDetailedDropdown and (not loading) and Roact.createElement(DEPRECATED_DetailedDropdown, {
				Enabled = writable and #availablePermissions > 1,
				Size = UDim2.fromScale(1, 1),
				ItemHeight = ITEM_HEIGHT,
				DescriptionTextSize = theme.fontStyle.Subtext.TextSize,
				DisplayTextSize = theme.fontStyle.Normal.TextSize,
				IconSize = 20,

				ButtonText = self:getCurrentPermissionLabel(),
				Items = availablePermissions,
				OnItemClicked = function(permission)
					if writable and permission ~= currentPermission then
						onPermissionChanged(permission)
					end
				end,
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
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})(CollaboratorItem)

return CollaboratorItem
