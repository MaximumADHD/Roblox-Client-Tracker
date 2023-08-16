local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Config = require(ExperienceChat.Config)

return function(bubbleChatMessageProperties: BubbleChatMessageProperties)
	local customProperties = {}
	for property, _ in pairs(Config.DefaultBubbleChatMessagePropertiesInstanceSettings) do
		customProperties[property] = (bubbleChatMessageProperties :: any)[property]
	end

	local imageLabelChild = bubbleChatMessageProperties:FindFirstChildOfClass("ImageLabel")
	if imageLabelChild then
		local imageLabelProperties = {}
		for property, _ in pairs(Config.DefaultBubbleChatChildrenCustomizationProperties.ImageLabel) do
			imageLabelProperties[property] = (imageLabelChild :: any)[property]
		end
		customProperties.ImageLabel = imageLabelProperties
	end

	local uiGradientChild = bubbleChatMessageProperties:FindFirstChildOfClass("UIGradient")
	if uiGradientChild then
		local uiGradientProperties = {}
		for property, _ in pairs(Config.DefaultBubbleChatChildrenCustomizationProperties.UIGradient) do
			uiGradientProperties[property] = (uiGradientChild :: any)[property]
		end
		customProperties.UIGradient = uiGradientProperties
	end

	local uiCornerChild = bubbleChatMessageProperties:FindFirstChildOfClass("UICorner")
	if uiCornerChild then
		local uiCornerProperties = {}
		for property, _ in pairs(Config.DefaultBubbleChatChildrenCustomizationProperties.UICorner) do
			uiCornerProperties[property] = (uiCornerChild :: any)[property]
		end
		customProperties.UICorner = uiCornerProperties
	end

	return customProperties
end
