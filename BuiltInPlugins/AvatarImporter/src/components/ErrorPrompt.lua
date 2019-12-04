--[[
	ErrorPrompt - Screen that is displayed when an error occurs
]]

local root = script.Parent.Parent.Parent

-- services
local GuiService = game:GetService("GuiService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

-- imports
local Roact = require(root.lib.Roact)
local RoactRodux = require(root.lib.RoactRodux)

local Assets = require(root.src.Assets)

local Constants = require(root.src.Constants)
local CustomTextButton = require(root.src.components.CustomTextButton)
local themeConfig = require(root.src.utils.themeConfig)

local actions = root.src.actions
local SetScreen = require(actions.SetScreen)
local ClosePlugin = require(actions.ClosePlugin)

local Studio = settings().Studio

-- component
local ErrorPrompt = Roact.Component:extend("ErrorPrompt")

function ErrorPrompt:render()
	return Roact.createElement("Frame", {
		Name = "ErrorPrompt",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Studio.Theme:GetColor(
			Enum.StudioStyleGuideColor.MainBackground,
			Enum.StudioStyleGuideModifier.Default
		),
	}, {
		errorIcon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = Assets.ERROR_ICON,
			Size = UDim2.new(0, 22, 0, 22),
			Position = UDim2.new(0, 30, 0, 20),
		}),
		errorTitle = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Position = UDim2.new(0, 62, 0, 20),
			Size = UDim2.new(1, -62, 0, 20),
			Text = self.props.name,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			ClipsDescendants = true,
			TextColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainText,
				Enum.StudioStyleGuideModifier.Default
			),
		}),
		requirementsHeader = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT_BOLD,
			Position = UDim2.new(0, 62, 0, 60),
			Size = UDim2.new(0, 302, 0, Constants.FONT_SIZE_MEDIUM),
			Text = "The file failed to meet the import requirement(s):",
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainText,
				Enum.StudioStyleGuideModifier.Default
			),
		}),
		requirements = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Position = UDim2.new(0, 62, 0, 86),
			Size = UDim2.new(0, 302, 0, Constants.FONT_SIZE_MEDIUM),
			Text = self.props.message,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainText,
				Enum.StudioStyleGuideModifier.Default
			),
		}),
		bottomDescription = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Position = UDim2.new(0, 62, 1, -149),
			Size = UDim2.new(0, 210, 0, Constants.FONT_SIZE_MEDIUM),
			Text = "Please update the file and try again",
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainText,
				Enum.StudioStyleGuideModifier.Default
			),
		}),
		infoLink = Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Position = UDim2.new(0, 62, 1, -123),
			Size = UDim2.new(0, 210, 0, Constants.FONT_SIZE_MEDIUM),
			Text = "What are import requirements?",
			TextSize = Constants.FONT_SIZE_MEDIUM,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = themeConfig({
				Light = Color3.fromRGB(0, 162, 255),
				Dark = Color3.fromRGB(255, 255, 255),
			}),
			[Roact.Event.MouseButton1Click] = function()
				if settings():GetFFlag("UseNewDocumentationUrls") then
					GuiService:OpenBrowserWindow(HttpRbxApiService:GetDocumentationUrl(Constants.AVATAR_IMPORTER_DEVHUB))
				else
					GuiService:OpenBrowserWindow(Constants.AVATAR_IMPORTER_DEVHUB_URL)
				end
			end
		}),
		buttons = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 1, -64),
			Size = UDim2.new(1, 0, 0, 34),
		}, {
			buttonsListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 21),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			cancelButton = Roact.createElement(CustomTextButton, {
				name = "CancelButton",
				labelText = "Cancel",
				layoutOrder = 0,
				[Roact.Event.MouseButton1Click] = self.props.doClose,
			}),
			retryButton = Roact.createElement(CustomTextButton, {
				name = "RetryButton",
				labelText = "Try Again",
				layoutOrder = 1,
				isMain = true,
				[Roact.Event.MouseButton1Click] = self.props.doRetry,
			}),
		})
	})
end

local function mapStateToProps(state)
	state = state or {}

	return {
		name = state.error.name,
		message = state.error.message,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		doRetry = function()
			dispatch(SetScreen(Constants.SCREENS.AVATAR))
		end,

		doClose = function()
			dispatch(ClosePlugin())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ErrorPrompt)