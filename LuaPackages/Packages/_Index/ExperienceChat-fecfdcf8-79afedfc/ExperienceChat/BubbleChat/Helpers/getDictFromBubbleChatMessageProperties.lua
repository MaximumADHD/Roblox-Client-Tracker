local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Config = require(ExperienceChat.Config)
local Flags = ExperienceChat.Flags
local getFFlagReplicateUIPaddingChildProperties = require(Flags.getFFlagReplicateUIPaddingChildProperties)

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

	if getFFlagReplicateUIPaddingChildProperties() then
		local uiPaddingChild = bubbleChatMessageProperties:FindFirstChildOfClass("UIPadding")
		if uiPaddingChild then
			local uiPaddingProperties = {}
			for property, _ in pairs(Config.DefaultBubbleChatChildrenCustomizationProperties.UIPadding) do
				uiPaddingProperties[property] = (uiPaddingChild :: any)[property]
			end
			customProperties.UIPadding = uiPaddingProperties
		end
	end

	return customProperties
end
