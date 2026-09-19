local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local StyledDialog = require(Framework.UI.Components.StyledDialog)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local TextLabel = require(Framework.UI.Components.TextLabel)

local FullBleedDialogStory = Roact.PureComponent:extend("FullBleedDialogStory")

function FullBleedDialogStory:init()
	self.state = {
		enabled = false,
	}
end

function FullBleedDialogStory:render()
	return Roact.createElement(Button, {
		Size = UDim2.new(1, 0, 0, 30),
		LayoutOrder = 2,
		Style = "Round",
		Text = "Open FullBleed Dialog",
		OnClick = function()
			self:setState({
				enabled = true,
			})
		end,
	}, {
		Dialog = Roact.createElement(StyledDialog, {
			Style = "FullBleed",
			Enabled = self.state.enabled,
			Resizable = true,
			Title = "Styled Dialog examples",
			MinContentSize = Vector2.new(400, 100),
			Buttons = {
				{ Key = "ok", Text = "OK" },
			},
			OnButtonPressed = function()
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
			Contents = Roact.createElement("Frame", {
				BackgroundColor3 = Color3.new(0, 1, 0),
				Size = UDim2.fromScale(1, 1),
			}, {
				Label = Roact.createElement(TextLabel, {
					Size = UDim2.fromScale(1, 1),
					Text = "No padding is added to content above the button container",
					TextColor = Color3.new(0, 0, 0),
					TextWrapped = true,
				}),
			}),
		}),
	})
end

return FullBleedDialogStory
