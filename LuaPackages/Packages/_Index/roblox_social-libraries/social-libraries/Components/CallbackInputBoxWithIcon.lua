local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local CallbackInputBox = require(script.Parent.CallbackInputBox)
local CallbackInputBoxWithIcon = Roact.PureComponent:extend("CallbackInputBoxWithIcon")

CallbackInputBoxWithIcon.defaultProps = {
	backgroundTransparency = 0,
	backgroundColor3 = Color3.new(1,1,1),

	iconCellWidth = 60,
	iconSize = 24,
	iconColor3 = Color3.new(1, 1, 1),
	iconTransparency = 0,
	iconImage = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",

	inputTextFont = Enum.Font.Gotham,
	inputTextColor3 = Color3.new(1, 0, 1),
	inputTextSize = 14,
	inputTextYAlignment = Enum.TextYAlignment.Center,
	inputTextXAlignment = Enum.TextXAlignment.Left,
	inputTextTransparency = 0,
	placeholderTextTransparency = 0.6,
	placeholderTextColor3 = Color3.new(1, 0, 0),
	placeholderText = "Test placeholder text",

	clearIconColor3 = Color3.new(1, 1, 0),
	clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png",

	clearButtonDisabled = nil,
	textChangedCallback = nil,
}

function CallbackInputBoxWithIcon:render()
	local iconCellWidth = self.props.iconCellWidth
	local iconSize = self.props.iconSize

	return Roact.createElement("Frame", {
		BackgroundTransparency = self.props.backgroundTransparency,
		BackgroundColor3 = self.props.backgroundColor3,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
	}, {

		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,

			Padding = UDim.new(0, iconCellWidth/4)
		}),

		padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, iconCellWidth/4)
		}),

		icon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, iconSize, 0, iconSize),
			ImageColor3 = self.props.iconColor3,
			ImageTransparency = self.props.iconTransparency,
			Image = self.props.iconImage,
			LayoutOrder = 1,
		}),

		inputBoxContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -iconSize - (iconCellWidth/4), 1, 0),
			LayoutOrder = 2,
		}, {
			padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, iconCellWidth/4),
			}),
			inputBox = Roact.createElement(CallbackInputBox, self.props)
		})
	})
end

return CallbackInputBoxWithIcon
