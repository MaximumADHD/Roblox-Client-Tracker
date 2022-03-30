local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local TruncatedTextLabel = UI.TruncatedTextLabel
local Pane = UI.Pane

local ExampleTruncatedTextLabel = Roact.PureComponent:extend("ExampleTruncatedTextLabel")

function ExampleTruncatedTextLabel:init()
	self:setState({
		count = 1,
	})
	self.updateCount = function()
		self:setState(function(state)
			return {
				count = state.count + 1
			}
		end)
	end
end

function ExampleTruncatedTextLabel:render()
	local countString = tostring(self.state.count)

	return Roact.createElement(Pane, {
		Size = UDim2.new(1,0,0,0),
		AutomaticSize = Enum.AutomaticSize.Y,
		Padding = 50,
		Spacing = 10,
		Layout = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		Instruction = Roact.createElement(TruncatedTextLabel,{
			Text = "Resize the storybook window!",
			Size = UDim2.new(1,0,0,0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 2,
		}),
		SuffixLength = Roact.createElement(TruncatedTextLabel,{
			Text = "This line has a suffix length of 8. This line has a suffix length of 8.",
			SuffixLength = 8,
			Size = UDim2.new(1,0,0,0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 3,
		}),
		NoSuffixLength = Roact.createElement(TruncatedTextLabel,{
			Text = "This line has no suffix length. This line has no suffix length. ",
			Size = UDim2.new(1,0,0,0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 4,
		}),
		On = Roact.createElement(TruncatedTextLabel,{
			Text = "Number of times the absolute size of this text label has changed is: ".. countString,
			SuffixLength = string.len(countString),
			Size = UDim2.new(1,0,0,0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 4,
			[Roact.Change.AbsoluteSize] = self.updateCount
		}),
	})
end

return ExampleTruncatedTextLabel
