--!nonstrict
--[[
	Distant chat bubble.

	This is shown when a user is too far away to see the messages being sent,
	but shows that there is activity that they could get closer to.
]]

local CorePackages = game:GetService("CorePackages")

local Otter = require(CorePackages.Packages.Otter)
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Packages.Cryo)

local root = script.Parent.Parent
local Types = require(root.Types)
local getSizeSpringFromSettings = require(root.Helpers.getSizeSpringFromSettings)
local getTransparencySpringFromSettings = require(root.Helpers.getTransparencySpringFromSettings)

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local ChatBubbleDistant = Roact.PureComponent:extend("ChatBubbleDistant")

ChatBubbleDistant.validateProps = t.strictInterface({
	width = t.optional(t.number),
	height = t.optional(t.number),
	fadingOut = t.optional(t.boolean),
	onFadeOut = t.optional(t.callback),
	chatSettings = Types.IChatSettings,
	renderInsert = t.optional(t.callback),
	insertSize = t.optional(t.Vector2),
})

ChatBubbleDistant.defaultProps = {
	width = 32,
	height = 16,
}

local function getFullHeight(props)
	local fullHeight = props.height
	if props.renderInsert then
		fullHeight = math.max(fullHeight, props.insertSize.Y)
	end
	fullHeight += props.chatSettings.Padding * 2
	return fullHeight
end

function ChatBubbleDistant:init(props)
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(function(value)
		self.updateWidth(math.round(value))
	end)

	self.height, self.updateHeight = Roact.createBinding(getFullHeight(props))

	self.frameSize = Roact.joinBindings({ self.width, self.height }):map(function(sizes)
		return UDim2.fromOffset(sizes[1], sizes[2])
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

function ChatBubbleDistant.getDerivedStateFromProps(nextProps, lastState)
	local chatSettings = nextProps.chatSettings

	local fullWidth
	if nextProps.renderInsert then
		fullWidth = nextProps.width + nextProps.insertSize.X + chatSettings.Padding * 2
	else
		fullWidth = nextProps.width + chatSettings.Padding * 2
	end

	local fullHeight = getFullHeight(nextProps)

	if fullWidth ~= lastState.fullWidth or fullHeight ~= lastState.fullHeight then
		return {
			fullWidth = fullWidth,
			fullHeight = fullHeight,
		}
	end

	return nil
end

function ChatBubbleDistant:render()
	local chatSettings = self.props.chatSettings
	local backgroundImageSettings = chatSettings.BackgroundImage
	local backgroundGradientSettings = chatSettings.BackgroundGradient

	local extraWidth = self.props.renderInsert and self.props.insertSize.X or 0

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.fromOffset(self.state.fullWidth, self.state.fullHeight),
		Position = UDim2.new(0.5, 0, 1, -8),
		Transparency = 1,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = 0.75,
		}),
		Carat = chatSettings.TailVisible and Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = chatSettings.BackgroundColor3,
			ImageTransparency = self.transparency,
		}),
		RoundedFrame = Roact.createElement(
			"ImageLabel",
			Cryo.Dictionary.join(backgroundImageSettings, {
				Size = self.frameSize,
				BackgroundColor3 = chatSettings.BackgroundColor3,
				BackgroundTransparency = backgroundImageSettings.Image == "" and self.transparency or 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				ClipsDescendants = true,
				ImageTransparency = self.transparency,
			}),
			{
				UICorner = chatSettings.CornerEnabled and Roact.createElement("UICorner", {
					CornerRadius = chatSettings.CornerRadius,
				}),

				Contents = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, chatSettings.Padding),
						PaddingRight = UDim.new(0, chatSettings.Padding),
						PaddingBottom = UDim.new(0, chatSettings.Padding),
						PaddingLeft = UDim.new(0, chatSettings.Padding),
					}),

					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					Insert = self.props.renderInsert and self.props.renderInsert(),

					Ellipsis = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Text = "…",
						TextColor3 = chatSettings.TextColor3,
						TextTransparency = self.transparency,
						Font = Enum.Font.GothamBlack,
						TextScaled = true,
						Size = UDim2.new(1, -extraWidth, 1, 0),
						LayoutOrder = 2,
					}),
				}),

				Gradient = backgroundGradientSettings.Enabled
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),
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

		local transparencySpring = getTransparencySpringFromSettings(self.props.chatSettings)
		self.transparencyMotor:setGoal(transparencySpring(1))
	end
end

function ChatBubbleDistant:didUpdate(previousProps, previousState)
	if self.props.fadingOut then
		self:fadeOut()
	else
		if self.state.fullHeight ~= previousState.fullHeight then
			self.updateHeight(self.state.fullHeight)
		end
		if self.state.fullWidth ~= previousState.fullWidth then
			local chatSettings = self.props.chatSettings
			local sizeSpring = getSizeSpringFromSettings(chatSettings)
			self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
		end
	end
end

function ChatBubbleDistant:didMount()
	if not self.props.fadingOut then
		local chatSettings = self.props.chatSettings
		local sizeSpring = getSizeSpringFromSettings(chatSettings)
		local transparencySpring = getTransparencySpringFromSettings(chatSettings)

		self.transparencyMotor:setGoal(transparencySpring(self.props.chatSettings.Transparency))
		self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
	end
end

function ChatBubbleDistant:willUnmount()
	self.transparencyMotor:destroy()
	self.widthMotor:destroy()
end

return ChatBubbleDistant
