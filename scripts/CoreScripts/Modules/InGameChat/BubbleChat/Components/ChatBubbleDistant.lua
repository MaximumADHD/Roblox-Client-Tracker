--[[
	Distant chat bubble.

	This is shown when a user is too far away to see the messages being sent,
	but shows that there is activity that they could get closer to.
]]

local CorePackages = game:GetService("CorePackages")

local Otter = require(CorePackages.Packages.Otter)
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Constants = require(script.Parent.Parent.Constants)

local ChatBubbleDistant = Roact.Component:extend("ChatBubbleDistannt")

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 2,
}

ChatBubbleDistant.validateProps = t.strictInterface({
	width = t.optional(t.number),
	height = t.optional(t.number),
})

ChatBubbleDistant.defaultProps = {
	width = 48,
	height = 32,
}

function ChatBubbleDistant:init(props)
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(self.updateWidth)

	self.frameSize = self.width:map(function(width)
		return UDim2.fromOffset(width, self.props.height)
	end)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)
end

function ChatBubbleDistant:render()
	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.new(0, 43, 0, 32),
		Position = UDim2.new(0.5, 0, 1, -8),
		Transparency = 1,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = 0.75,
		}),
		Carat = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(0.5, 1),
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageTransparency = self.transparency,
		}),
		RoundedFrame = 	Roact.createElement("Frame", {
			Size = self.frameSize,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = self.transparency,
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
			ClipsDescendants = true,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),

			Contents = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, Constants.UI_PADDING),
					PaddingRight = UDim.new(0, Constants.UI_PADDING),
					PaddingBottom = UDim.new(0, Constants.UI_PADDING),
					PaddingLeft = UDim.new(0, Constants.UI_PADDING),
				}),

				Icon = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Text = "…",
					Font = Enum.Font.GothamBlack,
					TextScaled = true,
					Size = UDim2.fromScale(1, 1),
				})
			})
		})
	})
end

function ChatBubbleDistant:didMount()
	self.transparencyMotor:setGoal(Otter.spring(0.5, SPRING_CONFIG))
	self.widthMotor:setGoal(Otter.spring(self.props.width, SPRING_CONFIG))
end

function ChatBubbleDistant:willUnmount()
	self.transparencyMotor:destroy()
	self.widthMotor:destroy()
end

return ChatBubbleDistant
