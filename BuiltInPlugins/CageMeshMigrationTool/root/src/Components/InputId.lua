local root = script:FindFirstAncestor("root")

local Roact = require(root.Packages.Roact)

local Framework = require(root.Packages.Framework)

local ContextServices: any = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local TextLabel = UI.TextLabel
local DEPRECATED_TextInput = UI.DEPRECATED_TextInput

local StyleKey = Framework.Style.StyleKey

local constants = require(root.src.constants)

local PADDING = 15

local InputId = Roact.PureComponent:extend("InputId")

function InputId:init()
	self.state = {
		input = "",
	}
end

function InputId:render()
	local props = self.props
	local state = self.state

	local parsedInput = tonumber(state.input)

	return Roact.createElement("Frame", {
		BackgroundColor3 = props.Stylizer[StyleKey.MainBackground],
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
			PaddingTop = UDim.new(0, PADDING),
		}),
		Content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -(30 + PADDING)),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, PADDING),
			}),
			TextLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = props.text,
				Font = constants.FONT,
				FontSize = constants.FONT_SIZE,
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),
			TextInput = Roact.createElement(DEPRECATED_TextInput, {
				LayoutOrder = 2,
				PlaceholderText = props.placeHolder,
				Size = UDim2.new(1, 0, 0, 30),
				Text = state.input,
				OnTextChanged = function(text)
					self:setState({ input = text })
				end,
				Style = "RoundedBorder",
			}),
		}),
		Button = Roact.createElement(Button, {
			Text = "Next",
			Style = parsedInput and "RoundPrimary" or "Round",
			TextSize = 24,
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 1, -30),
			OnClick = function()
				props.onNext(parsedInput)
			end,
		}),
	})
end

InputId = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(InputId)

return InputId
