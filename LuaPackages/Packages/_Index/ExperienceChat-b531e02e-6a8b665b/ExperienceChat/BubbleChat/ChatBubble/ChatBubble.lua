local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)

local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local Otter = require(ProjectRoot.Otter)
local Dictionary = require(ProjectRoot.llama).Dictionary

local Helpers = ExperienceChat.BubbleChat.Helpers
local getSpringFromSettings = require(Helpers.getSpringFromSettings)
local getTextBounds = require(Helpers.getTextBounds)

local ChatBubble = Roact.Component:extend("ChatBubble")
ChatBubble.defaultProps = {
	isMostRecent = true,
	text = "",
	timestamp = 0,
}

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
	local backgroundImageSettings = self.props.chatSettings.BackgroundImage
	local backgroundGradientSettings = self.props.chatSettings.BackgroundGradient

	local extraWidth = self.props.renderInsert and (self.props.insertSize.X + self.props.chatSettings.Padding) or 0

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
				BackgroundTransparency = backgroundImageSettings.Image ~= "" and 1
					or (
						getEnableChatInputBarConfigurationStyleCustomizations() and self.backgroundTransparency
						or self.transparency
					),
				ClipsDescendants = true,
				ImageTransparency = getEnableChatInputBarConfigurationStyleCustomizations()
						and self.backgroundTransparency
					or self.transparency,
			}),
			{
				UICorner = self.props.chatSettings.CornerEnabled and Roact.createElement("UICorner", {
					CornerRadius = self.props.chatSettings.CornerRadius,
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					Padding = UDim.new(0, self.props.chatSettings.Padding),
				}),

				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, self.props.chatSettings.Padding),
					PaddingRight = UDim.new(0, self.props.chatSettings.Padding),
					PaddingBottom = UDim.new(0, self.props.chatSettings.Padding),
					PaddingLeft = UDim.new(0, self.props.chatSettings.Padding),
				}),

				Insert = self.props.renderInsert and self.props.renderInsert(),

				Text = Roact.createElement("TextLabel", {
					Text = self.props.text,
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

				Gradient = backgroundGradientSettings.Enabled
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),

		Caret = self.props.isMostRecent
			and self.props.chatSettings.TailVisible
			and Roact.createElement("ImageLabel", {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(9, 6),
				Image = "rbxasset://textures/ui/InGameChat/Caret.png",
				ImageColor3 = chatSettings.BackgroundColor3,
				ImageTransparency = getEnableChatInputBarConfigurationStyleCustomizations()
						and self.backgroundTransparency
					or self.transparency,
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

		local transparencySpring = getSpringFromSettings(self.props.chatSettings, "transparency")
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
	if
		previousProps.text ~= self.props.text
		or previousProps.chatSettings ~= self.props.chatSettings
		or previousProps.renderInsert ~= self.props.renderInsert
		or previousProps.insertSize ~= self.props.insertSize
	then
		local bounds = getTextBounds(self.props.text, self.props.chatSettings)
		local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
		local padding = self.props.chatSettings.Padding

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

	local bounds = getTextBounds(self.props.text, self.props.chatSettings)
	local sizeSpring = getSpringFromSettings(self.props.chatSettings, "size")
	local transparencySpring = getSpringFromSettings(self.props.chatSettings, "transparency")

	local width = bounds.X
	local height = bounds.Y
	if self.props.renderInsert then
		width += self.props.insertSize.X + self.props.chatSettings.Padding
		height = math.max(height, self.props.insertSize.Y + self.props.chatSettings.Padding * 2)
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

	self.transparencyMotor:setGoal(transparencySpring(self.props.chatSettings.Transparency))
	if getEnableChatInputBarConfigurationStyleCustomizations() then
		self.backgroundTransparencyMotor:setGoal(transparencySpring(self.props.chatSettings.BackgroundTransparency))
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
