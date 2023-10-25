local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary
local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)

local Config = require(ExperienceChat.Config)

local BubbleChat = script:FindFirstAncestor("BubbleChat")
local getSpringFromSettings = require(BubbleChat.Helpers.getSpringFromSettings)
local ClientSettingsUtility = require(ExperienceChat.ClientSettings.ClientSettingsUtility)

local BlankBubble = Roact.PureComponent:extend("BlankBubble")

--[[ BlankBubble.validateProps = t.strictInterface({
	fadingOut = t.optional(t.boolean),
	onFadeOut = t.optional(t.callback),
	renderInsert = t.optional(t.callback),
	insertSize = t.optional(t.Vector2),
	isDistant = t.optional(t.boolean),
})]]

function BlankBubble:init(props)
	self.state = {}
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(function(value)
		self.updateWidth(math.round(value))
	end)

	self.frameSize = self.width:map(function(width)
		if self.props.insertSize then
			return UDim2.fromOffset(width, self.props.insertSize.Y + self.props.chatSettings.Padding * 2)
		else
			return UDim2.fromOffset(width, 0)
		end
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
	if props.fadingOut then
		self:fadeOut()
	end
end

function BlankBubble.getDerivedStateFromProps(nextProps, lastState)
	local fullWidth = 0
	if nextProps.insertSize then
		fullWidth = nextProps.insertSize.X + nextProps.chatSettings.Padding * 2
	end

	if fullWidth ~= lastState.fullWidth then
		return {
			fullWidth = fullWidth,
		}
	end

	return nil
end

function BlankBubble:render()
	local chatSettings = self.props.chatSettings
	local backgroundImageSettings = chatSettings.ImageLabel
	local backgroundGradientSettings = chatSettings.UIGradient
	local bubbleCorner = chatSettings.UICorner
	local defaultCornerRadius = Config.DefaultBubbleChatChildrenCustomizationProperties.UICorner.CornerRadius

	local fullHeight = 0
	if self.props.insertSize then
		fullHeight = self.props.insertSize.Y + self.props.chatSettings.Padding * 2
	end

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.fromOffset(self.state.fullWidth, fullHeight),
		Position = UDim2.new(0.5, 0, 1, -8),
		Transparency = 1,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = self.props.isDistant and 0.75 or 1.0,
		}),
		Caret = self.props.chatSettings.TailVisible
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
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, self.props.chatSettings.Padding),
						PaddingRight = UDim.new(0, self.props.chatSettings.Padding),
						PaddingBottom = UDim.new(0, self.props.chatSettings.Padding),
						PaddingLeft = UDim.new(0, self.props.chatSettings.Padding),
					}),

					Insert = self.props.renderInsert and self.props.renderInsert(),
				}),

				Gradient = backgroundGradientSettings ~= nil
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),
	})
end

function BlankBubble:fadeIn()
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

function BlankBubble:fadeOut()
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

function BlankBubble:didUpdate(previousProps, previousState)
	if previousProps.fadingOut ~= self.props.fadingOut then
		if self.props.fadingOut then
			self:fadeOut()
		else
			self:fadeIn()
		end
	end
	if self.state.fullWidth ~= previousState.fullWidth then
		local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
		self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
	end
end

function BlankBubble:didMount()
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

function BlankBubble:willUnmount()
	self.transparencyMotor:destroy()
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparencyMotor:destroy()
	end
	self.widthMotor:destroy()
end

return BlankBubble
