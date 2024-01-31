local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Cryo = dependencies.Cryo
local Roact = dependencies.Roact
local Text = dependencies.Text

local TestStyle = require(SocialLibraries.Components.Style.TestStyle)
local CallbackInputBox = require(script.Parent.CallbackInputBox)

local InputBoxWithCharacterCounter = Roact.PureComponent:extend("InputBoxWithCharacterCounter")
InputBoxWithCharacterCounter.defaultProps = {
	initialInputText = "",

	validInputTextColor3 = Color3.fromRGB(0, 255, 0),
	validInputTextTransparency = 0,
	invalidInputTextColor3 = Color3.fromRGB(255, 0, 0),
	invalidInputTextTransparency = 0,

	counterTextPadding = 0,
	characterLimit = 150,

	style = TestStyle,
}

function InputBoxWithCharacterCounter:init()
	self.state = {
		inputText = self.props.initialInputText,
	}

	self.textChangedCallback = function(newText)
		self:setState({
			inputText = newText
		})
	end
end

function InputBoxWithCharacterCounter:render()
	local style = self.props.style

	local inputTextLength = #self.state.inputText
	local counterText = inputTextLength.."/"..self.props.characterLimit
	local counterFont = style.Font.CaptionSubHeader.Font
	local counterTextSize = style.Font.BaseSize * style.Font.CaptionSubHeader.RelativeSize
	local counterTextColor
	local counterTextTransparency

	local textWidth = Text.GetTextWidth(counterText, counterFont, counterTextSize)
	local textHeight = Text.GetTextHeight(counterText, counterFont, counterTextSize, textWidth)

	if inputTextLength <= self.props.characterLimit then
		counterTextColor = self.props.validInputTextColor3
		counterTextTransparency = self.props.validInputTextTransparency
	else
		counterTextColor = self.props.invalidInputTextColor3
		counterTextTransparency = self.props.invalidInputTextTransparency
	end

	local inputBoxProps = Cryo.Dictionary.join(self.props, {
		inputText = self.state.inputText,
		textChangedCallback = self.textChangedCallback
	})

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		inputBoxContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -textHeight),
			LayoutOrder = 1,
		}, {
			border = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(3, 3, 4, 4),
				Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png",
			}),

			inputBox = Roact.createElement(CallbackInputBox, inputBoxProps)
		}),

		characterCounter = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, textHeight),
			LayoutOrder = 2,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),

			padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, self.props.counterTextPadding),
			}),

			characterCountLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,

				Text = counterText,
				TextColor3 = counterTextColor,
				TextTransparency = counterTextTransparency,
				TextSize = counterTextSize,
				TextXAlignment = Enum.TextXAlignment.Right,
				TextYAlignment = Enum.TextYAlignment.Top,
				Font = counterFont,
			})
		}),
	})
end

return InputBoxWithCharacterCounter
