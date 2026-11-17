local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Cryo = dependencies.Cryo
local Roact = dependencies.Roact

local TestStyle = require(SocialLibraries.Components.Style.TestStyle)
local CallbackInputBox = require(script.Parent.CallbackInputBox)
local getTextBoundsAsync = dependencies.Foundation.Utility.getTextBoundsAsync
local normalizeFontFace = dependencies.Foundation.Utility.normalizeFontFace

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

	self.textChangedCallback = function(newText: string)
		self:setState({
			inputText = newText,
		})
	end

	self.isMounted = false
	self.measurementId = 0

	self.measureText = function()
		local style = self.props.style
		local text = #self.state.inputText .. "/" .. self.props.characterLimit
		local font = style.Font.CaptionSubHeader.Font
		local fontSize = style.Font.BaseSize * style.Font.CaptionSubHeader.RelativeSize
		if self.measuredText == text and self.measuredFont == font and self.measuredFontSize == fontSize then
			return
		end

		self.measuredText = text
		self.measuredFont = font
		self.measuredFontSize = fontSize
		self.measurementId += 1
		local measurementId = self.measurementId

		task.spawn(function()
			local bounds = getTextBoundsAsync(text, font, fontSize)
			if self.isMounted and self.measurementId == measurementId then
				self:setState({
					textBounds = bounds,
				})
			end
		end)
	end
end

function InputBoxWithCharacterCounter:didMount()
	self.isMounted = true
	self.measureText()
end

function InputBoxWithCharacterCounter:didUpdate()
	self.measureText()
end

function InputBoxWithCharacterCounter:willUnmount()
	self.isMounted = false
	self.measurementId += 1
end

function InputBoxWithCharacterCounter:render()
	local style = self.props.style

	local inputTextLength = #self.state.inputText
	local counterText = inputTextLength.."/"..self.props.characterLimit
	local counterFont = style.Font.CaptionSubHeader.Font
	local counterTextSize = style.Font.BaseSize * style.Font.CaptionSubHeader.RelativeSize
	local counterTextColor
	local counterTextTransparency

	local textBounds = self.state.textBounds or Vector2.new(0, counterTextSize)
	local textHeight = textBounds.Y

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
				FontFace = normalizeFontFace(counterFont),
			})
		}),
	})
end

return InputBoxWithCharacterCounter
