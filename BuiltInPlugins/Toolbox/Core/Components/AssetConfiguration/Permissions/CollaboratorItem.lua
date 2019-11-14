--[[
	This component displays information about a collaborator (user/group/roleset).
	Thumbnail, name (of the user/group/roleset), and permissions are part of the information that is displayed.

	Necessary Properties:
	CollaboratorName = string, name of collaborator. displayed in primary label
	CollaboratorId = num, for external scripts to check whose permission changed when we fire events
	CollaboratorIcon = string, path to icon to display for item (e.g. user headshot, group logo, etc)
	Action = string, permission level the collaborator has (Own | Edit | UseView | No Access (rolesets only))
	
	Optional Properties:
	HideLastSeparator = bool, default to false. If true the last separator will be hidden so that separators don't overlap.
	LayoutOrder = num, default to 0.
	Removable = bool, if true then the delete button is visible and can be clicked.
	Removed = function, callback function for when the delete button is clicked.
	RolePermissionChanged = function, callback function for when a user who has had this package shared with them, has their
		permissions changed.
]]

local ITEM_HEIGHT = 60
local PADDING_Y = 10
local PADDING_X = 6
local CONTENT_HEIGHT = ITEM_HEIGHT - PADDING_Y
local LIST_PADDING = 30
local DROPDOWN_WIDTH = 120
local ICON_SIZE = 20

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary = require(Libs.UILibrary)
local DetailedDropdown = require(Plugin.Libs.UILibrary.Components.DetailedDropdown)
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local Button = UILibrary.Component.Button

local Util = Plugin.Core.Util
local Images = require(Util.Images)
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local CollaboratorThumbnail = require(PermissionsDirectory.CollaboratorThumbnail)

local FFlagDefaultThumbnailForRBXThumb = game:DefineFastFlag("DefaultThumbnailForRBXThumb", false)

local ContentProvider = game:GetService("ContentProvider")

local CollaboratorItem = Roact.PureComponent:extend("CollaboratorItem")

local function DeleteButton(props)
	return withTheme(function(theme)
		return Roact.createElement(Button, {
			Size = UDim2.new(0, CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
			Position = UDim2.new(1, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),

			BorderSizePixel = 0,

			RenderContents = function(buttonTheme, hovered)
				return {
					Icon = Roact.createElement("ImageLabel", {
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),

						Image = Images.CLOSE_ICON,
						ImageColor3 = theme.assetConfig.packagePermissions.collaboratorItem.deleteButton,
						ImageTransparency = props.Enabled and 0 or 0.4,

						BackgroundTransparency = 1,
					})
				}
			end,

			OnClick = function()
				if props.Enabled and props.OnClicked then
					props.OnClicked()
				end
			end,
		})
	end)
end

local function LoadingDropdown(props)
	return withTheme(function(theme)
		return Roact.createElement(LoadingIndicator, {
			LayoutOrder = props.LayoutOrder or 0,
			
			Size = props.Size,
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,
		})
	end)
end

local function CollaboratorIcon(props)
	return Roact.createElement(CollaboratorThumbnail, {
		Size = UDim2.new(0, CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
		LayoutOrder = props.LayoutOrder or 0,
		
		Image = props.IsLoadedThumbnail and props.CollaboratorIcon or Images.DEFAULT_THUMBNAIL,
		UseMask = props.UseMask,
		IsLoadedThumbnail = props.IsLoadedThumbnail,
	})
end

local function CollaboratorLabels(props)
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, -(LIST_PADDING*3 + CONTENT_HEIGHT + DROPDOWN_WIDTH), 0, CONTENT_HEIGHT),
			Position = UDim2.new(0, CONTENT_HEIGHT + LIST_PADDING, 0, 0),
			LayoutOrder = props.LayoutOrder or 0,

			BackgroundTransparency = 1,
		}, {
			PrimaryLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, props.SecondaryText and 0.5 or 1, 0),
				Text = props.CollaboratorName or "",
				TextXAlignment = Enum.TextXAlignment.Left,

				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextColor3 = theme.assetConfig.packagePermissions.subTextColor,

				BackgroundTransparency = 1,
			}),
		})
	end)
end

function CollaboratorItem:init()
	self.state = {
		assetFetchStatus = nil,		
	}

	self.isMounted = false
end

function CollaboratorItem:didMount()
	self.isMounted = true
	if FFlagDefaultThumbnailForRBXThumb then
		spawn(function()
			local asset = { self.props.CollaboratorIcon }
			local function setStatus(contentId, status)
				if self.isMounted then
					self:setState({
						assetFetchStatus = status
					})
				end
			end
			ContentProvider:PreloadAsync(asset, setStatus)
		end)
	end
end

function CollaboratorItem:willUnmount()
	self.isMounted = false
end

function CollaboratorItem:render()
	return withTheme(function(theme)
		local props = self.props

		props.Items = props.Items or {}

		local removable = props.Removable and #props.Items > 0 and not props.IsLoading

		local isLoadedThumbnail = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			LayoutOrder = props.LayoutOrder or 0,
			
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Contents = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BackgroundColor3 = theme.assetConfig.packagePermissions.backgroundColor,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, PADDING_X),
					PaddingRight = UDim.new(0, PADDING_X),
					PaddingTop = UDim.new(0, PADDING_Y),
					PaddingBottom = UDim.new(0, PADDING_Y),
				}),
				Icon = Roact.createElement(CollaboratorIcon, {
					LayoutOrder = 0,
					Enabled = props.Enabled,

					UseMask = props.UseMask,
					CollaboratorIcon = props.CollaboratorIcon,
					IsLoadedThumbnail = isLoadedThumbnail,
				}),
				Labels = Roact.createElement(CollaboratorLabels, {
					LayoutOrder = 1,
					Enabled = props.Enabled,
					
					CollaboratorName = props.CollaboratorName,
					SecondaryText = props.SecondaryText,
				}),
				Dropdown = Roact.createElement(DetailedDropdown, {
					LayoutOrder = 2,
					Enabled = props.Enabled and #props.Items > 0,
					
					ButtonText = props.Action,
					Items = props.Items,

					BackgroundTransparency = 1,

					ItemHeight = ITEM_HEIGHT,
					DescriptionTextSize = Constants.FONT_SIZE_MEDIUM,
					DisplayTextSize = Constants.FONT_SIZE_TITLE,
					IconSize = ICON_SIZE,
					
					Size = UDim2.new(0, DROPDOWN_WIDTH, 0, CONTENT_HEIGHT),
					Position = UDim2.new(1, -(CONTENT_HEIGHT+LIST_PADDING), 0, 0),
					AnchorPoint = Vector2.new(1, 0),

					OnItemClicked = function(item)
						if props.Enabled and props.PermissionChanged then
							props.PermissionChanged(item)
						end
					end,
				}),
				Delete = removable and Roact.createElement(DeleteButton, {
					LayoutOrder = 3,
					Enabled = props.Enabled,
					
					OnClicked = props.Removed,
				}),
			}),
		})
	end)
end

return CollaboratorItem