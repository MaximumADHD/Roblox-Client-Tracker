--[[
	AvatarPrompt - Entry screen, used to select an avatar type before import
]]

local root = script.Parent.Parent.Parent

-- services
local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

-- imports
local Roact = require(root.lib.Roact)

local Assets = require(root.src.Assets)

local AvatarButton = require(root.src.components.AvatarButton)
local Constants = require(root.src.Constants)
local themeConfig = require(root.src.utils.themeConfig)
local getTextWidth = require(root.src.utils.getTextWidth)

local Studio = settings().Studio

-- component
local AvatarPrompt = Roact.Component:extend("AvatarPrompt")

function AvatarPrompt:render()
	local showImportRequirements = not game:GetFastFlag("RemoveImportRequirements")
	return Roact.createElement("Frame", {
		Name = "AvatarPrompt",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Studio.Theme:GetColor(
			Enum.StudioStyleGuideColor.MainBackground,
			Enum.StudioStyleGuideModifier.Default
		),
	}, {
		content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Name = "Content",
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			topDescription = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Name = "TopDescription",
				Position = UDim2.new(0, 0, 0, 20),
				Size = UDim2.new(1, 0, 0, 18),
				Text = "Choose the Avatar type you are going to import:",
				TextSize = Constants.FONT_SIZE_LARGE,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextColor3 = Studio.Theme:GetColor(
					Enum.StudioStyleGuideColor.MainText,
					Enum.StudioStyleGuideModifier.Default
				),
			}),
			buttons = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Name = "Buttons",
				Position = UDim2.new(0, Constants.BUTTON_SIDE_PADDING, 0, Constants.BUTTON_TOP_PADDING),
				Size = UDim2.new(1, -Constants.BUTTON_SIDE_PADDING*2, 0, Constants.BUTTON_HEIGHT),
			}, {
				buttonsListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, Constants.BUTTON_CENTER_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				rthroButton = Roact.createElement(AvatarButton, {
					name = "Rthro",
					avatarType = Constants.AVATAR_TYPE.RTHRO,
					iconOptions = Assets.RTHRO,
					contextInfo = Constants.RTHRO_INFO,
					layoutOrder = 0,
				}),
				rthroNarrowButton = Roact.createElement(AvatarButton, {
					name = "Rthro Narrow",
					avatarType = Constants.AVATAR_TYPE.RTHRO_SLENDER,
					iconOptions = Assets.RTHRO_NARROW,
					contextInfo = Constants.RTHRO_SLENDER_INFO,
					layoutOrder = 1,
				}),
				r15Button = Roact.createElement(AvatarButton, {
					name = "R15",
					avatarType = Constants.AVATAR_TYPE.R15,
					iconOptions = Assets.R15,
					contextInfo = Constants.R15_INFO,
					layoutOrder = 2,
				}),
				customButton = Roact.createElement(AvatarButton, {
					name = "Custom",
					avatarType = Constants.AVATAR_TYPE.CUSTOM,
					iconOptions = Assets.CUSTOM,
					contextInfo = Constants.CUSTOM_INFO,
					layoutOrder = 3,
				}),
			}),
			bottomDescription = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 307),
				Size = UDim2.new(1, 0, 1, -307),
			}, {
				bottomDescriptionListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				requirementsText = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					LayoutOrder = 0,
					Size = UDim2.new(
						0,
						getTextWidth(
							Constants.REQUIREMENTS_DESCRIPTION,
							Constants.FONT_SIZE_SMALL,
							Constants.FONT
						),
						0,
						Constants.FONT_SIZE_SMALL
					),
					Text = Constants.REQUIREMENTS_DESCRIPTION,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextColor3 = themeConfig({
						Light = Color3.fromRGB(98, 98, 98),
						Dark = Color3.fromRGB(204, 204, 204),
					}),
				}),
				infoLink = showImportRequirements and Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					LayoutOrder = 1,
					Size = UDim2.new(
						0,
						getTextWidth(
							Constants.REQUIREMENTS_LINK_TEXT,
							Constants.FONT_SIZE_SMALL,
							Constants.FONT
						),
						0,
						Constants.FONT_SIZE_SMALL
					),
					Text = Constants.REQUIREMENTS_LINK_TEXT,
					TextSize = Constants.FONT_SIZE_SMALL,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextColor3 = themeConfig({
						Light = Color3.fromRGB(0, 162, 255),
						Dark = Color3.fromRGB(255, 255, 255),
					}),
					[Roact.Event.Activated] = function()
						GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(Constants.AVATAR_IMPORTER_DEVHUB))
					end,
				})
			}),
		}),
	})
end

return AvatarPrompt