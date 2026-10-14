local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local StyledDialog = require(Framework.UI.Components.StyledDialog)

local DefaultDialog = Roact.PureComponent:extend("DefaultDialog")

function DefaultDialog:init()
	self.state = {
		enabled = false,
	}
end

function DefaultDialog:render()
	return Roact.createElement(Button, {
		Size = UDim2.new(1, 0, 0, 30),
		LayoutOrder = 1,
		Style = "Round",
		Text = "Open Default Dialog",
		OnClick = function()
			self:setState({
				enabled = true,
			})
		end,
	}, {
		Dialog = Roact.createElement(StyledDialog, {
			Enabled = self.state.enabled,
			Modal = true,
			Title = "Styled Dialog examples",
			MinContentSize = Vector2.new(400, 100),
			Buttons = {
				{ Key = "ok", Text = "OK" },
			},
			OnButtonPressed = function(key)
				print("Dialog button pressed : ", key)
				self:setState({
					enabled = false,
				})
			end,
			OnClose = function()
				self:setState({
					enabled = false,
				})
			end,
		}, {
			Contents = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1.0,
				TextSize = 50,
				Text = "Hello",
				TextColor3 = Color3.new(0, 0, 0),
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0, 0),
			}),
		}),
	})
end

return DefaultDialog
