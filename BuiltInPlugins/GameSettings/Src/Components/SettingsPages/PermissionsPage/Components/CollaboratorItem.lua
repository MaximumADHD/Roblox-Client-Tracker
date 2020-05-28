local ITEM_HEIGHT = 60
local PADDING_Y = 20
local PADDING_X = 12
local CONTENT_HEIGHT = ITEM_HEIGHT - PADDING_Y
local LIST_PADDING = 30
local DROPDOWN_WIDTH = 120

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)

local DetailedDropdown = UILibrary.Component.DetailedDropdown
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local Button = UILibrary.Component.Button

local PermissionsConstants = require(Page.Util.PermissionsConstants)

local DeleteButton = Roact.PureComponent:extend("DeleteButton")

function DeleteButton:render()
	local props = self.props

	local enabled = props.Enabled
	local onClicked = props.OnClicked

	local theme = props.Theme:get("Plugin")

	return Roact.createElement(Button, {
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

ContextServices.mapToProps(DeleteButton, {
	Theme = ContextServices.Theme,
})

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
		return localization:getText("AccessPermissions", "MultipleLabel")
	end

	for _,permission in ipairs(availablePermissions) do
		if permission.Key == currentPermission then
			return permission.Display
		end
	end

	assert(false)
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

			PermissionsDropdown = (not loading) and Roact.createElement(DetailedDropdown, {
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
			})
		}),

		Delete = removable and Roact.createElement(DeleteButton, {
			LayoutOrder = 3,
			Enabled = writable and not loading,

			OnClicked = onRemoved,
		}),
	})
end

ContextServices.mapToProps(CollaboratorItem, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return CollaboratorItem