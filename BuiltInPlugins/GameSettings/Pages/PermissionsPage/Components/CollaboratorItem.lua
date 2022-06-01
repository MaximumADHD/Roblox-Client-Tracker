local FFlagUXImprovementsShowUserPermsWhenCollaborator2 = game:GetFastFlag("UXImprovementsShowUserPermsWhenCollaborator2")
local FFlagStudioExplainFriendCollaboratorPermission3 = game:GetFastFlag("StudioExplainFriendCollaboratorPermission3")
local FFlagGSPermsRemoveCollaboratorsFixEnabled = game:GetFastFlag("GSPermsRemoveCollaboratorsFixEnabled")

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
local UI = Framework.UI
local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local SelectInput = UI.SelectInput
local Button = UI.Button
local TextLabel = UI.Decoration.TextLabel

local UILibrary = require(Plugin.Packages.UILibrary)

local LoadingIndicator = UILibrary.Component.LoadingIndicator
local UILibraryButton = UILibrary.Component.Button

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local DeleteButton = Roact.PureComponent:extend("DeleteButton")

function DeleteButton:render()
	local props = self.props

	local enabled = props.Enabled
	local onClicked = props.OnClicked

	local theme = props.Stylizer

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
	Stylizer = ContextServices.Stylizer,
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

-- remove with FFlagStudioExplainFriendCollaboratorPermission3
function CollaboratorItem:DEPRECATED_createTextLabel(text, style, height, padding, layoutOrder)
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

		if FFlagStudioExplainFriendCollaboratorPermission3 then
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
		else
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

				MainTextLabel = self:DEPRECATED_createTextLabel(mainText, "Normal", theme.fontStyle.Normal.TextSize, theme.selectInput.padding, 0),

				DescriptionTextLabel = self:DEPRECATED_createTextLabel(description, "SubText", theme.fontStyle.Subtext.TextSize, theme.selectInput.padding, 1),
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

	if FFlagGSPermsRemoveCollaboratorsFixEnabled then
		if not currentPermission then
			return
		end
	end

	local availablePermissions = props.AvailablePermissions

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

			Size = UDim2.new(0, FFlagStudioExplainFriendCollaboratorPermission3 and theme.selectInput.width or DROPDOWN_WIDTH, 0, CONTENT_HEIGHT),
			Position = UDim2.new(1, -(CONTENT_HEIGHT+LIST_PADDING), 0, 0),
			AnchorPoint = Vector2.new(1, 0),
		}, {
			LoadingIndicator = loading and Roact.createElement(LoadingIndicator, {
				Size = UDim2.fromScale(1, 1),
			}),

			PermissionsDropdown = not loading and Roact.createElement(SelectInput, {
				Enabled = writable and #availablePermissions > 1,
				Items = availablePermissions,
				OnItemActivated = self.onItemActivated,
				OnRenderItem = self.onRenderItem,
				PlaceholderText = self:getCurrentPermissionLabel(),
				Width = FFlagStudioExplainFriendCollaboratorPermission3 and theme.selectInput.width or theme.selectInput.DEPRECATED_width,
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
