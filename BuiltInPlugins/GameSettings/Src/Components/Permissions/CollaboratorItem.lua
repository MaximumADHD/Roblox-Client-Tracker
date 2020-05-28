--[[
	An item that displays information about a collaborator (user/group/roleset)

	Props:
		string CollaboratorName - Name of collaborator. Displayed in primary label
		int64 CollaboratorId - For external scripts to check whose permission changed when we fire events
		string CollaboratorIcon - Icon to display in item (e.g. user headshot, group logo, etc)
		string Action - Permission level the collaborator has
		
		??? [SecondaryText=""] - TODO (awarwick) 5/8/2018 design wants to replace this with a new component
		bool [HideLastSeparator=false] - If this is in a list, we don't want to overlap separators
		bool [Removable=false] - Whether delete button is visible and can be clicked
		callback [Removed=nil] - Called whenever the delete button is clicked
]]

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local ITEM_HEIGHT = 60
local PADDING_Y = 20
local PADDING_X = 12
local CONTENT_HEIGHT = ITEM_HEIGHT - PADDING_Y
local LIST_PADDING = 30
local DROPDOWN_WIDTH = 120

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local DetailedDropdown = UILibrary.Component.DetailedDropdown
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local CollaboratorThumbnail = require(Plugin.Src.Components.Permissions.CollaboratorThumbnail)
local Button = UILibrary.Component.Button

local CollaboratorItem = Roact.PureComponent:extend("CollaboratorItem")

local function DeleteButton(props)
	if FFlagStudioConvertGameSettingsToDevFramework then
		local theme = props.Theme
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
	else
		return withTheme(function(theme)
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
end

local function LoadingDropdown(props)
	if FFlagStudioConvertGameSettingsToDevFramework then
		return Roact.createElement(LoadingIndicator, {
			LayoutOrder = props.LayoutOrder or 0,

			Size = props.Size,
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,
		})
	else
		return withTheme(function(theme)
			return Roact.createElement(LoadingIndicator, {
				LayoutOrder = props.LayoutOrder or 0,

				Size = props.Size,
				Position = props.Position,
				AnchorPoint = props.AnchorPoint,
			})
		end)
	end
end

local function CollaboratorIcon(props)
	return Roact.createElement(CollaboratorThumbnail, {
		Size = UDim2.new(0, CONTENT_HEIGHT, 0, CONTENT_HEIGHT),
		LayoutOrder = props.LayoutOrder or 0,

		Image = props.CollaboratorIcon,
		UseMask = props.UseMask,
		ImageTransparency = 0,

		BackgroundTransparency = 1,
	})
end

local function CollaboratorLabels(props)
	if FFlagStudioConvertGameSettingsToDevFramework then
		local theme = props.Theme
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, -(LIST_PADDING*3 + CONTENT_HEIGHT + DROPDOWN_WIDTH), 0, CONTENT_HEIGHT),
			Position = UDim2.new(0, CONTENT_HEIGHT + LIST_PADDING, 0, 0),
			LayoutOrder = props.LayoutOrder or 0,

			BackgroundTransparency = 1,
		}, {
			PrimaryLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Size = UDim2.new(1, 0, props.SecondaryText and 0.5 or 1, 0),

				Text = props.CollaboratorName or "",
				TextXAlignment = Enum.TextXAlignment.Left,

				BackgroundTransparency = 1,
			})),

			-- TODO (awarwick) 5/8/2019 Design replaced TextLabel with new component. Implement later
			SecondaryLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				Size = UDim2.new(1, 0, 0.5, 0),
				Position = UDim2.new(0, 0, 0.5, 0),

				Text = props.SecondaryText or "",
				TextXAlignment = Enum.TextXAlignment.Left,

				BackgroundTransparency = 1,
			})),
		})
	else
		return withTheme(function(theme)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, -(LIST_PADDING*3 + CONTENT_HEIGHT + DROPDOWN_WIDTH), 0, CONTENT_HEIGHT),
				Position = UDim2.new(0, CONTENT_HEIGHT + LIST_PADDING, 0, 0),
				LayoutOrder = props.LayoutOrder or 0,
				
				BackgroundTransparency = 1,
			}, {
				PrimaryLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
					Size = UDim2.new(1, 0, props.SecondaryText and 0.5 or 1, 0),
					
					Text = props.CollaboratorName or "",
					TextXAlignment = Enum.TextXAlignment.Left,

					BackgroundTransparency = 1,
				})),

				-- TODO (awarwick) 5/8/2019 Design replaced TextLabel with new component. Implement later
				SecondaryLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
					Size = UDim2.new(1, 0, 0.5, 0),
					Position = UDim2.new(0, 0, 0.5, 0),
					
					Text = props.SecondaryText or "",
					TextXAlignment = Enum.TextXAlignment.Left,
					
					BackgroundTransparency = 1,
				})),
			})
		end)
	end
end

function CollaboratorItem:DEPRECATED_render(props)
	props.Items = props.Items or {}

	local removable = props.Removable and #props.Items > 0 and not props.IsLoading

	local dropdownEnabled = not props.IsDropdownLocked and props.Enabled and #props.Items > 0
	
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			LayoutOrder = props.LayoutOrder or 0,
			
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Contents = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BackgroundColor3 = theme.backgroundColor,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, PADDING_X/2),
					PaddingRight = UDim.new(0, PADDING_X/2),
					PaddingTop = UDim.new(0, PADDING_Y/2),
					PaddingBottom = UDim.new(0, PADDING_Y/2),
				}),
				Icon = Roact.createElement(CollaboratorIcon, {
					LayoutOrder = 0,
					Enabled = props.Enabled,

					UseMask = props.UseMask,
					CollaboratorIcon = props.CollaboratorIcon,
				}),
				Labels = Roact.createElement(CollaboratorLabels, {
					LayoutOrder = 1,
					Enabled = props.Enabled,
					
					CollaboratorName = props.CollaboratorName,
					SecondaryText = props.SecondaryText,
				}),
				Dropdown = Roact.createElement(props.IsLoading and LoadingDropdown or DetailedDropdown, {
					LayoutOrder = 2,
					Enabled = dropdownEnabled,
					
					ButtonText = props.Action,
					Items = props.Items,
					
					ItemHeight = ITEM_HEIGHT,
					DescriptionTextSize = theme.fontStyle.Subtext.TextSize,
					DisplayTextSize = theme.fontStyle.Normal.TextSize,
					IconSize = 20,
					
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

function CollaboratorItem:render()
	local props = self.props
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render(props)
	end

	local theme = props.Theme:get("Plugin")

	props.Items = props.Items or {}

	local removable = props.Removable and #props.Items > 0 and not props.IsLoading

	local dropdownEnabled = not props.IsDropdownLocked and props.Enabled and #props.Items > 0

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
		LayoutOrder = props.LayoutOrder or 0,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		Contents = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BackgroundColor3 = theme.backgroundColor,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, PADDING_X/2),
				PaddingRight = UDim.new(0, PADDING_X/2),
				PaddingTop = UDim.new(0, PADDING_Y/2),
				PaddingBottom = UDim.new(0, PADDING_Y/2),
			}),
			Icon = Roact.createElement(CollaboratorIcon, {
				LayoutOrder = 0,
				Enabled = props.Enabled,

				UseMask = props.UseMask,
				CollaboratorIcon = props.CollaboratorIcon,
			}),
			Labels = Roact.createElement(CollaboratorLabels, {
				LayoutOrder = 1,
				Enabled = props.Enabled,

				CollaboratorName = props.CollaboratorName,
				SecondaryText = props.SecondaryText,
				Theme = theme,
			}),
			Dropdown = Roact.createElement(props.IsLoading and LoadingDropdown or DetailedDropdown, {
				LayoutOrder = 2,
				Enabled = dropdownEnabled,

				ButtonText = props.Action,
				Items = props.Items,

				ItemHeight = ITEM_HEIGHT,
				DescriptionTextSize = theme.fontStyle.Subtext.TextSize,
				DisplayTextSize = theme.fontStyle.Normal.TextSize,
				IconSize = 20,

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
				Theme = theme,
			}),
		}),
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(CollaboratorItem, {
		Theme = ContextServices.Theme,
	})
end

return CollaboratorItem