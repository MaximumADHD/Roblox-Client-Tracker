local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")

local Otter = require(CorePackages.Packages.Otter)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Types = require(script.Parent.Parent.Types)

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 2,
}

local ChatBubble = Roact.PureComponent:extend("ChatBubble")

ChatBubble.validateProps = t.strictInterface({
	messageId = t.string,

	fadingOut = t.optional(t.boolean),
	onFadeOut = t.optional(t.callback),
	isMostRecent = t.optional(t.boolean),
	theme = t.optional(t.string),

	-- RoactRodux
	chatSettings = Types.IChatSettings,
	text = t.string,
	timestamp = t.number,
})

ChatBubble.defaultProps = {
	theme = "Light",
	isMostRecent = true,
}

function ChatBubble:init()
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(self.updateWidth)

	self.height, self.updateHeight = Roact.createBinding(0)
	self.heightMotor = Otter.createSingleMotor(0)
	self.heightMotor:onStep(self.updateHeight)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)

	self.size = Roact.joinBindings({ self.width, self.height }):map(function(sizes)
		return UDim2.fromOffset(sizes[1], sizes[2])
	end)
end

function ChatBubble:getTextBounds()
	local settings = self.props.chatSettings
	local padding = Vector2.new(settings.Padding * 4, settings.Padding * 2)

	local bounds = TextService:GetTextSize(
		self.props.text,
		settings.TextSize,
		settings.Font,
		Vector2.new(settings.MaxWidth, 10000)
	)

	return bounds + padding
end

function ChatBubble:render()
	local bounds = self:getTextBounds()
	local settings = self.props.chatSettings

	return Roact.createElement("Frame", {
		LayoutOrder = self.props.timestamp,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = self.size,
		Position = UDim2.fromScale(1, 0.5),
		Transparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
		}),

		Frame = Roact.createElement("Frame", {
			LayoutOrder = 1,
			BackgroundColor3 = settings.BackgroundColor3,
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0, 0),
			BackgroundTransparency = self.transparency,
			ClipsDescendants = true,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = settings.CornerRadius,
			}),

			Text = Roact.createElement("TextLabel", {
				Text = self.props.text,
				Size = UDim2.new(0, bounds.X, 0, bounds.Y),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				Font = settings.Font,
				TextColor3 = settings.TextColor3,
				TextSize = settings.TextSize,
				TextTransparency = self.transparency,
				TextWrapped = true,
				AutoLocalize = false,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, settings.Padding),
					PaddingRight = UDim.new(0, settings.Padding),
					PaddingBottom = UDim.new(0, settings.Padding),
					PaddingLeft = UDim.new(0, settings.Padding),
				})
			})
		}),

		Carat = self.props.isMostRecent and settings.TailVisible and Roact.createElement("ImageLabel", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(9, 6),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = settings.BackgroundColor3,
			ImageTransparency = self.transparency,
		}),
	})
end

function ChatBubble:fadeOut()
	if not self.isFadingOut then
		self.isFadingOut = true

		self.transparencyMotor:onComplete(function()
			if self.props.onFadeOut then
				self.props.onFadeOut(self.props.messageId)
			end
		end)

		self.transparencyMotor:setGoal(Otter.spring(1, SPRING_CONFIG))
	end
end

function ChatBubble:didUpdate()
	if self.props.fadingOut then
		self:fadeOut()
	end
end

function ChatBubble:didMount()
	self.isMounted = true

	local bounds = self:getTextBounds()

	if self.props.isMostRecent then
		-- Chat bubble spawned for the first time
		self.updateWidth(bounds.X)
		self.heightMotor:setGoal(Otter.spring(bounds.Y, SPRING_CONFIG))
	else
		-- Transition between distant bubble and chat bubble
		self.heightMotor:setGoal(Otter.spring(bounds.Y, SPRING_CONFIG))
		self.widthMotor:setGoal(Otter.spring(bounds.X, SPRING_CONFIG))
	end

	self.transparencyMotor:setGoal(Otter.spring(self.props.chatSettings.Transparency, SPRING_CONFIG))
end

function ChatBubble:willUnmount()
	self.isMounted = false
	self.transparencyMotor:destroy()
	self.heightMotor:destroy()
	self.widthMotor:destroy()
end

local function mapStateToProps(state, props)
	local message = state.messages[props.messageId]
	return {
		chatSettings = state.chatSettings,
		-- We must listen for the message's text from the state rather than get it as a prop from the parent BubbleChatList
		-- because it can be updated (message done filtering) and that would not trigger a BubbleChatList re-render
		text = message and message.text or "",
		timestamp = message and message.timestamp or 0,
	}
end

return RoactRodux.connect(mapStateToProps)(ChatBubble)
