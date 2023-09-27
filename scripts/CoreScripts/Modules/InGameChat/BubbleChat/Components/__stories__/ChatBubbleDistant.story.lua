local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local ChatBubbleDistant = require(script.Parent.Parent.ChatBubbleDistant)

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self:setState({
		voiceOn = true,
	})
end

function Story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),

		Button = Roact.createElement("TextButton", {
			LayoutOrder = -1,
			Size = UDim2.fromOffset(64, 24),
			Text = "Toggle",
			[Roact.Event.Activated] = function()
				self:setState({
					voiceOn = not self.state.voiceOn,
				})
			end,
		}),

		ChatBubbleDistant = Roact.createElement(ChatBubbleDistant, {
			chatSettings = self.props.chatSettings,
			renderInsert = self.state.voiceOn and function()
				return Roact.createElement("Frame", {
					Size = UDim2.fromOffset(28, 28),
				})
			end or nil,
			insertSize = self.state.voiceOn and Vector2.new(28, 28) or nil,
		}),
	})
end

return Story
