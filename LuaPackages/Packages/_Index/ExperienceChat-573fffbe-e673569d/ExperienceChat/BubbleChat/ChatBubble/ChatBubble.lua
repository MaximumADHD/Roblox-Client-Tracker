local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)
local getEnablePerBubbleCustomization = require(Flags.getEnablePerBubbleCustomization)
local getFFlagFixBubbleChatCaret = require(Flags.getFFlagFixBubbleChatCaret)
local getFFlagReplicateUIPaddingChildProperties = require(Flags.getFFlagReplicateUIPaddingChildProperties)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local Otter = require(ProjectRoot.Otter)
local Dictionary = require(ProjectRoot.llama).Dictionary

local Config = require(ExperienceChat.Config)

local memoize = require(ExperienceChat.memoize)

local Helpers = ExperienceChat.BubbleChat.Helpers
local getSpringFromSettings = require(Helpers.getSpringFromSettings)
local getTextBounds = require(Helpers.getTextBounds)
local getDictFromBubbleChatMessageProperties = require(Helpers.getDictFromBubbleChatMessageProperties)

local GlobalFlags = require(ExperienceChat.GlobalFlags)
local ClientSettingsUtility = require(ExperienceChat.ClientSettings.ClientSettingsUtility)

local ChatBubble = Roact.Component:extend("ChatBubble")
ChatBubble.defaultProps = {
	isMostRecent = true,
	text = "",
	timestamp = 0,
}

local getChatSettings = memoize(function(preconfiguredSettings, bubbleChatMessageProperties)
	if bubbleChatMessageProperties then
		return Dictionary.join(
			preconfiguredSettings,
			getDictFromBubbleChatMessageProperties(bubbleChatMessageProperties)
		)
	else
		return preconfiguredSettings
	end
end)

function ChatBubble:init()
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(function(value)
		self.updateWidth(math.round(value))
	end)

	self.height, self.updateHeight = Roact.createBinding(0)
	self.heightMotor = Otter.createSingleMotor(0)
	self.heightMotor:onStep(function(value)
		self.updateHeight(math.round(value))
	end)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)

	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparency, self.updateBackgroundTransparency = Roact.createBinding(1)
		self.backgroundTransparencyMotor = Otter.createSingleMotor(1)
		self.backgroundTransparencyMotor:onStep(self.updateBackgroundTransparency)
	end

	self.size = Roact.joinBindings({ self.width, self.height }):map(function(sizes)
		return UDim2.fromOffset(sizes[1], sizes[2])
	end)
end

function ChatBubble:render()
	local chatSettings = self.props.chatSettings
	if getEnablePerBubbleCustomization() then
		chatSettings = getChatSettings(self.props.chatSettings, self.props.bubbleChatMessageProperties)
	end
	local backgroundImageSettings = chatSettings.ImageLabel
	local backgroundGradientSettings = chatSettings.UIGradient
	local bubbleCorner = chatSettings.UICorner
	local bubbleUIPadding = chatSettings.UIPadding
	local defaultCornerRadius = Config.DefaultBubbleChatChildrenCustomizationProperties.UICorner.CornerRadius
	local defaultUIPadding = Config.DefaultBubbleChatChildrenCustomizationProperties.UIPadding

	local extraWidth = self.props.renderInsert and (self.props.insertSize.X + chatSettings.Padding) or 0
	local isCaretVisible
	if getFFlagFixBubbleChatCaret() then
		isCaretVisible = self.props.isMostRecent
			and chatSettings.TailVisible
			and (GlobalFlags.AvatarChatEnabled or self.props.showCaret)
	else
		isCaretVisible = self.props.isMostRecent
			and chatSettings.TailVisible
			and (not GlobalFlags.AvatarChatEnabled or self.props.showCaret)
	end

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

		ChatBubbleFrame = Roact.createElement(
			"ImageLabel",
			Dictionary.join(backgroundImageSettings, {
				LayoutOrder = 1,
				BackgroundColor3 = chatSettings.BackgroundColor3,
				AnchorPoint = Vector2.new(0.5, 0),
				Size = UDim2.fromScale(1, 1),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundTransparency = (backgroundImageSettings and backgroundImageSettings.Image ~= "") and 1
					or (self.backgroundTransparency or self.transparency),
				ClipsDescendants = true,
				ImageTransparency = self.backgroundTransparency or self.transparency,
			}),
			{
				UICorner = bubbleCorner and Roact.createElement("UICorner", {
					CornerRadius = bubbleCorner.CornerRadius,
				}) or Roact.createElement("UICorner", {
					CornerRadius = defaultCornerRadius,
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					Padding = UDim.new(0, chatSettings.Padding),
				}),

				Padding = getFFlagReplicateUIPaddingChildProperties()
						and (bubbleUIPadding and Roact.createElement("UIPadding", bubbleUIPadding))
					or Roact.createElement("UIPadding", defaultUIPadding),

				Insert = self.props.renderInsert and self.props.renderInsert(),

				Text = Roact.createElement("TextLabel", {
					Text = if self.props.useTranslation
							and self.props.translation
							and self.props.translation ~= ""
						then self.props.translation
						else self.props.text,
					Size = UDim2.new(1, -extraWidth, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BackgroundTransparency = 1,
					FontFace = chatSettings.FontFace,
					TextColor3 = chatSettings.TextColor3,
					TextSize = chatSettings.TextSize,
					TextTransparency = self.transparency,
					TextWrapped = true,
					AutoLocalize = false,
					LayoutOrder = 2,
					RichText = true,
				}),

				Gradient = backgroundGradientSettings ~= nil
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),

		Caret = if isCaretVisible
			then Roact.createElement("ImageLabel", {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(9, 6),
				Image = "rbxasset://textures/ui/InGameChat/Caret.png",
				ImageColor3 = chatSettings.BackgroundColor3,
				ImageTransparency = getEnableChatInputBarConfigurationStyleCustomizations()
						and self.backgroundTransparency
					or self.transparency,
			}, {
				Gradient = backgroundGradientSettings ~= nil
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			})
			else nil,
	})
end

function ChatBubble:fadeOut()
	local chatSettings = self.props.chatSettings
	if getEnablePerBubbleCustomization() then
		chatSettings = getChatSettings(self.props.chatSettings, self.props.bubbleChatMessageProperties)
	end
	if not self.isFadingOut then
		self.isFadingOut = true

		self.transparencyMotor:onComplete(function()
			if self.props.onFadeOut then
				self.props.onFadeOut(self.props.messageId)
			end
		end)

		local transparencySpring = getSpringFromSettings(chatSettings, "transparency")
		self.transparencyMotor:setGoal(transparencySpring(1))
		if getEnableChatInputBarConfigurationStyleCustomizations() then
			self.backgroundTransparencyMotor:setGoal(transparencySpring(1))
		end
	end
end

function ChatBubble:didUpdate(previousProps)
	if self.props.fadingOut then
		self:fadeOut()
	end
	-- Update the size of the bubble to accommodate changes to the text's size (for instance: when the text changes due
	-- to filtering, or when new customization settings are applied)
	local chatSettings = self.props.chatSettings
	if getEnablePerBubbleCustomization() then
		chatSettings = getChatSettings(self.props.chatSettings, self.props.bubbleChatMessageProperties)
	end
	if
		previousProps.text ~= self.props.text
		or previousProps.useTranslation ~= self.props.useTranslation
		or previousProps.translation ~= self.props.translation
		or previousProps.chatSettings ~= self.props.chatSettings
		or previousProps.renderInsert ~= self.props.renderInsert
		or previousProps.insertSize ~= self.props.insertSize
	then
		local bounds = if self.props.useTranslation
				and self.props.translation
				and self.props.translation ~= ""
			then getTextBounds(self.props.translation, chatSettings)
			else getTextBounds(self.props.text, chatSettings)
		local sizeSpring = getSpringFromSettings(chatSettings, "size")
		local padding = chatSettings.Padding

		local width = bounds.X
		local height = bounds.Y
		if self.props.renderInsert then
			width += self.props.insertSize.X + padding
			height = math.max(height, self.props.insertSize.Y + padding * 2)
		end
		self.heightMotor:setGoal(sizeSpring(height))
		self.widthMotor:setGoal(sizeSpring(width))
	end
end

function ChatBubble:didMount()
	self.isMounted = true

	local chatSettings = self.props.chatSettings
	if getEnablePerBubbleCustomization() then
		chatSettings = getChatSettings(self.props.chatSettings, self.props.bubbleChatMessageProperties)
	end
	local bounds = if self.props.useTranslation
			and self.props.translation
			and self.props.translation ~= ""
		then getTextBounds(self.props.translation, chatSettings)
		else getTextBounds(self.props.text, chatSettings)
	local sizeSpring = getSpringFromSettings(chatSettings, "size")
	local transparencySpring = getSpringFromSettings(chatSettings, "transparency")

	local width = bounds.X
	local height = bounds.Y
	if self.props.renderInsert then
		width += self.props.insertSize.X + chatSettings.Padding
		height = math.max(height, self.props.insertSize.Y + chatSettings.Padding * 2)
	end

	if self.props.isMostRecent then
		-- Chat bubble spawned for the first time
		self.heightMotor:setGoal(sizeSpring(height))
		self.widthMotor:setGoal(Otter.instant(width))
	else
		-- Transition between distant bubble and chat bubble
		self.heightMotor:setGoal(sizeSpring(height))
		self.widthMotor:setGoal(sizeSpring(width))
	end

	local transparencyGoal = chatSettings.Transparency
	self.transparencyMotor:setGoal(transparencySpring(transparencyGoal))

	if getEnableChatInputBarConfigurationStyleCustomizations() then
		local backgroundTransparency =
			ClientSettingsUtility.getBackgroundTransparency(chatSettings, self.props.clientSettings)

		if getEnablePerBubbleCustomization() then
			local bubbleChatMessageProperties = self.props.bubbleChatMessageProperties
			if bubbleChatMessageProperties and bubbleChatMessageProperties.BackgroundTransparency then
				backgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(
					{ BackgroundTransparency = bubbleChatMessageProperties.BackgroundTransparency },
					self.props.clientSettings
				)
			end
		end

		self.backgroundTransparencyMotor:setGoal(transparencySpring(backgroundTransparency))
	end
end

function ChatBubble:willUnmount()
	self.isMounted = false
	self.transparencyMotor:destroy()
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparencyMotor:destroy()
	end
	self.heightMotor:destroy()
	self.widthMotor:destroy()
end

return ChatBubble
