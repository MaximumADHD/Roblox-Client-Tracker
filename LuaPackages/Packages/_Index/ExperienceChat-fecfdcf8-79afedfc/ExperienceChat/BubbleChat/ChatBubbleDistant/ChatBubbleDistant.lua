local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)
local getFFlagReplicateUIPaddingChildProperties = require(Flags.getFFlagReplicateUIPaddingChildProperties)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local Otter = require(ProjectRoot.Otter)
local Dictionary = require(ProjectRoot.llama).Dictionary

local Config = require(ExperienceChat.Config)

local Helpers = ExperienceChat.BubbleChat.Helpers
local getSpringFromSettings = require(Helpers.getSpringFromSettings)
local getAbsolutePaddingbyDimension = require(Helpers.getAbsolutePaddingbyDimension)
local ClientSettingsUtility = require(ExperienceChat.ClientSettings.ClientSettingsUtility)

local ChatBubbleDistant = Roact.Component:extend("ChatBubbleDistant")
ChatBubbleDistant.defaultProps = {
	width = 32,
	height = 16,
}

local function getFullHeight(props)
	local fullHeight = props.height
	if props.renderInsert then
		fullHeight = math.max(fullHeight, props.insertSize.Y)
	end

	if getFFlagReplicateUIPaddingChildProperties() and props.chatSettings.UIPadding then
		local uiPadding = props.chatSettings.UIPadding
		local topPadding = getAbsolutePaddingbyDimension(uiPadding.PaddingTop, fullHeight)
		local bottomPadding = getAbsolutePaddingbyDimension(uiPadding.PaddingBottom, fullHeight)

		if props.renderInsert then
			fullHeight = math.max(fullHeight, props.insertSize.Y)
		end

		fullHeight += topPadding + bottomPadding
	else
		if props.renderInsert then
			fullHeight = math.max(fullHeight, props.insertSize.Y)
		end

		local padding: number = props.chatSettings.Padding
		fullHeight += padding * 2
	end

	return fullHeight
end

function ChatBubbleDistant:init()
	self.state = {}

	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(function(value)
		self.updateWidth(math.round(value))
	end)

	self.height, self.updateHeight = Roact.createBinding(getFullHeight(self.props))

	self.frameSize = Roact.joinBindings({ self.width, self.height }):map(function(sizes)
		return UDim2.fromOffset(sizes[1], sizes[2])
	end)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)

	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparency, self.updateBackgroundTransparency = Roact.createBinding(1)
		self.backgroundTransparencyMotor = Otter.createSingleMotor(1)
		self.backgroundTransparencyMotor:onStep(self.updateBackgroundTransparency)
	end

	-- It's possible for this component to be initialized with fadingOut = true if we switch between maximized/minimized
	-- view during the fade out animation
	if self.props.fadingOut then
		self:fadeOut()
	end
end

function ChatBubbleDistant.getDerivedStateFromProps(nextProps, lastState)
	local fullWidth
	if getFFlagReplicateUIPaddingChildProperties() and nextProps.chatSettings.UIPadding then
		fullWidth = nextProps.width
		if nextProps.renderInsert then
			fullWidth += nextProps.insertSize.X
		end

		local uiPadding = nextProps.chatSettings.UIPadding
		local leftPadding = getAbsolutePaddingbyDimension(uiPadding.PaddingLeft, fullWidth)
		local rightPadding = getAbsolutePaddingbyDimension(uiPadding.PaddingRight, fullWidth)

		fullWidth += leftPadding + rightPadding
	else
		if nextProps.renderInsert then
			fullWidth = nextProps.width + nextProps.insertSize.X + nextProps.chatSettings.Padding * 2
		else
			fullWidth = nextProps.width + nextProps.chatSettings.Padding * 2
		end
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
	local backgroundImageSettings = chatSettings.ImageLabel
	local backgroundGradientSettings = chatSettings.UIGradient
	local bubbleCorner = chatSettings.UICorner
	local bubbleUIPadding = chatSettings.UIPadding
	local defaultCornerRadius = Config.DefaultBubbleChatChildrenCustomizationProperties.UICorner.CornerRadius
	local defaultUIPadding = Config.DefaultBubbleChatChildrenCustomizationProperties.UIPadding

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
		Carat = self.props.chatSettings.TailVisible
			and Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 1, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
				Size = UDim2.fromOffset(12, 8),
				Image = "rbxasset://textures/ui/InGameChat/Caret.png",
				ImageColor3 = chatSettings.BackgroundColor3,
				ImageTransparency = getEnableChatInputBarConfigurationStyleCustomizations()
						and self.backgroundTransparency
					or self.transparency,
			}, {
				Gradient = backgroundGradientSettings ~= nil
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}),
		RoundedFrame = Roact.createElement(
			"ImageLabel",
			Dictionary.join(backgroundImageSettings, {
				Size = self.frameSize,
				BackgroundColor3 = chatSettings.BackgroundColor3,
				BackgroundTransparency = (backgroundImageSettings and backgroundImageSettings.Image ~= "") and 1
					or (self.backgroundTransparency or self.transparency),
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				ClipsDescendants = true,
				ImageTransparency = self.backgroundTransparency or self.transparency,
				Image = (backgroundImageSettings and backgroundImageSettings.Image) or "",
			}),
			{
				UICorner = bubbleCorner and Roact.createElement("UICorner", {
					CornerRadius = bubbleCorner.CornerRadius,
				}) or Roact.createElement("UICorner", {
					CornerRadius = defaultCornerRadius,
				}),

				Contents = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
				}, {
					Padding = getFFlagReplicateUIPaddingChildProperties()
							and (bubbleUIPadding and Roact.createElement("UIPadding", bubbleUIPadding))
						or Roact.createElement("UIPadding", defaultUIPadding),

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
						TextScaled = if getFFlagReplicateUIPaddingChildProperties() then false else true,
						TextSize = if getFFlagReplicateUIPaddingChildProperties() then chatSettings.TextSize else nil,
						Size = UDim2.new(1, -extraWidth, 1, 0),
						LayoutOrder = 2,
					}),
				}),

				Gradient = backgroundGradientSettings ~= nil
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),
	})
end

function ChatBubbleDistant:fadeIn()
	local transparencySpring = getSpringFromSettings(self.props.chatSettings, "transparency")

	self.transparencyMotor:setGoal(transparencySpring(self.props.chatSettings.Transparency))
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		local backgroundTransparency =
			ClientSettingsUtility.getBackgroundTransparency(self.props.chatSettings, self.props.clientSettings)

		self.backgroundTransparencyMotor:setGoal(transparencySpring(backgroundTransparency))
	end

	local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
	self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
end

function ChatBubbleDistant:fadeOut()
	self.transparencyMotor:onComplete(function()
		if self.props.onFadeOut then
			self.props.onFadeOut()
		end
	end)

	local transparencySpring = getSpringFromSettings(self.props.chatSettings, "transparency")
	self.transparencyMotor:setGoal(transparencySpring(1))
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparencyMotor:setGoal(transparencySpring(1))
	end
end

function ChatBubbleDistant:didUpdate(previousProps, previousState)
	if previousProps.fadingOut ~= self.props.fadingOut then
		if self.props.fadingOut then
			self:fadeOut()
		else
			self:fadeIn()
		end
	else
		if self.state.fullHeight ~= previousState.fullHeight then
			self.updateHeight(self.state.fullHeight)
		end
		if self.state.fullWidth ~= previousState.fullWidth then
			local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
			self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
		end
	end
end

function ChatBubbleDistant:didMount()
	if not self.props.fadingOut then
		local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
		local transparencySpring = getSpringFromSettings(self.props.chatSettings, "transparency")

		self.transparencyMotor:setGoal(transparencySpring(self.props.chatSettings.Transparency))
		if getEnableChatInputBarConfigurationStyleCustomizations() then
			local backgroundTransparency =
				ClientSettingsUtility.getBackgroundTransparency(self.props.chatSettings, self.props.clientSettings)

			self.backgroundTransparencyMotor:setGoal(transparencySpring(backgroundTransparency))
		end
		self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
	end
end

function ChatBubbleDistant:willUnmount()
	self.transparencyMotor:destroy()
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparencyMotor:destroy()
	end
	self.widthMotor:destroy()
end

return ChatBubbleDistant
