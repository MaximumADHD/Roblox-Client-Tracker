local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Dialog = require(Framework.UI.Components.Dialog)

local ExampleDialog = Roact.PureComponent:extend("ExampleDialog")

function ExampleDialog:init()
	self.state = {
		enabled = false,
	}
	self.open = function()
		self:setState({
			enabled = true,
		})
	end
	self.close = function()
		self:setState({
			enabled = false,
		})
	end
end

function ExampleDialog:render()
	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Open Dialog",
		Size = UDim2.fromOffset(120, 32),
		OnClick = self.open,
	}, {
		Dialog = Roact.createElement(Dialog, {
			Title = "A Vanilla Dialog",
			Enabled = self.state.enabled,
			Size = Vector2.new(300, 120),
			OnClose = self.close,
			Modal = true,
		}),
	})
end

return ExampleDialog
