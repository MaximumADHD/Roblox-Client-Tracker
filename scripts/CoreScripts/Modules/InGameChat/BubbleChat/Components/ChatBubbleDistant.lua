--[[
	Distant chat bubble.

	This is shown when a user is too far away to see the messages being sent,
	but shows that there is activity that they could get closer to.
]]

local CorePackages = game:GetService("CorePackages")

local Otter = require(CorePackages.Packages.Otter)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Constants = require(script.Parent.Parent.Constants)
local Types = require(script.Parent.Parent.Types)

local ChatBubbleDistant = Roact.Component:extend("ChatBubbleDistannt")

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 2,
}

ChatBubbleDistant.validateProps = t.strictInterface({
	width = t.optional(t.number),
	height = t.optional(t.number),
	fadingOut = t.optional(t.boolean),
	onFadeOut = t.optional(t.callback),

	chatSettings = Types.IChatSettings,
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

	-- It's possible for this component to be initialized with fadingOut = true if we switch between maximized/minimized
	-- view during the fade out animation
	if props.fadingOut then
		self:fadeOut()
	end
end

function ChatBubbleDistant:render()
	local settings = self.props.chatSettings

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.new(0, 43, 0, 32),
		Position = UDim2.new(0.5, 0, 1, -8),
		Transparency = 1,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = 0.75,
		}),
		Carat = settings.TailVisible and Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = settings.BackgroundColor3,
			ImageTransparency = self.transparency,
		}),
		RoundedFrame = 	Roact.createElement("Frame", {
			Size = self.frameSize,
			BackgroundColor3 = settings.BackgroundColor3,
			BackgroundTransparency = self.transparency,
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
			ClipsDescendants = true,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = settings.CornerRadius,
			}),

			Contents = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, settings.Padding),
					PaddingRight = UDim.new(0, settings.Padding),
					PaddingBottom = UDim.new(0, settings.Padding),
					PaddingLeft = UDim.new(0, settings.Padding),
				}),

				Icon = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Text = "…",
					TextColor3 = settings.TextColor3,
					TextTransparency = self.transparency,
					Font = Enum.Font.GothamBlack,
					TextScaled = true,
					Size = UDim2.fromScale(1, 1),
				})
			})
		})
	})
end

function ChatBubbleDistant:fadeOut()
	if not self.isFadingOut then
		self.isFadingOut = true

		self.transparencyMotor:onComplete(function()
			if self.props.onFadeOut then
				self.props.onFadeOut()
			end
		end)

		self.transparencyMotor:setGoal(Otter.spring(1, SPRING_CONFIG))
	end
end

function ChatBubbleDistant:didUpdate()
	if self.props.fadingOut then
		self:fadeOut()
	end
end

function ChatBubbleDistant:didMount()
	if not self.props.fadingOut then
		self.transparencyMotor:setGoal(Otter.spring(self.props.chatSettings.Transparency, SPRING_CONFIG))
		self.widthMotor:setGoal(Otter.spring(self.props.width, SPRING_CONFIG))
	end
end

function ChatBubbleDistant:willUnmount()
	self.transparencyMotor:destroy()
	self.widthMotor:destroy()
end

local function mapStateToProps(state)
	return {
		chatSettings = state.chatSettings,
	}
end

return RoactRodux.connect(mapStateToProps)(ChatBubbleDistant)

