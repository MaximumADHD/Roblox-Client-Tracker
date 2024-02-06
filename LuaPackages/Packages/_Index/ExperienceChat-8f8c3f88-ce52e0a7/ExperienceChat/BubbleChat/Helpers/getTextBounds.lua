local CoreGui = game:GetService("CoreGui")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local TextChatService = game:GetService("TextChatService")
local TextService = game:GetService("TextService")

local getAbsolutePaddingbyDimension = require(ExperienceChat.BubbleChat.Helpers.getAbsolutePaddingbyDimension)
local getFFlagReplicateUIPaddingChildProperties =
	require(ExperienceChat.Flags.getFFlagReplicateUIPaddingChildProperties)

local getBoundsFromSizingLabel = function(text: string, chatSettings)
	local SizingGui = Instance.new("ScreenGui")
	SizingGui.Enabled = false
	SizingGui.Name = "RichTextSizingLabel"
	SizingGui.Parent = CoreGui

	local SizingLabel = Instance.new("TextLabel")
	SizingLabel.TextWrapped = true
	SizingLabel.RichText = true
	SizingLabel.Parent = SizingGui
	SizingLabel.Text = text
	SizingLabel.TextSize = chatSettings.TextSize

	if chatSettings.FontFace then
		SizingLabel.FontFace = chatSettings.FontFace
	else
		SizingLabel.Font = chatSettings.Font
	end
	SizingLabel.Size = UDim2.fromOffset(chatSettings.MaxWidth, 10000)

	local textBounds = SizingLabel.TextBounds

	-- Clean up SizingGui and SizingLabel
	SizingGui:Destroy()

	local padding: Vector2
	if getFFlagReplicateUIPaddingChildProperties() and chatSettings.UIPadding then
		local paddingLeft = getAbsolutePaddingbyDimension(chatSettings.UIPadding.PaddingLeft, textBounds.X)
		local paddingRight = getAbsolutePaddingbyDimension(chatSettings.UIPadding.PaddingRight, textBounds.X)
		local paddingTop = getAbsolutePaddingbyDimension(chatSettings.UIPadding.PaddingTop, textBounds.Y)
		local paddingBottom = getAbsolutePaddingbyDimension(chatSettings.UIPadding.PaddingBottom, textBounds.Y)

		padding = Vector2.new((paddingLeft + paddingRight) * 2, paddingTop + paddingBottom)
	else
		local paddingNumber: number = chatSettings.Padding
		padding = Vector2.new(paddingNumber * 4, paddingNumber * 2)
	end

	return padding + textBounds
end

-- We pass in TextChatService to mock it out for tests
local getTextBounds = function(text: string, chatSettings, textChatService: any?)
	if textChatService == nil then
		textChatService = TextChatService
	end
	if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		-- TextChatService uses rich text so will need to get bounds from a mock sizing label
		return getBoundsFromSizingLabel(text, chatSettings)
	end

	local bounds = TextService:GetTextSize(
		text,
		chatSettings.TextSize,
		chatSettings.Font,
		Vector2.new(chatSettings.MaxWidth, 10000)
	)
	local padding = Vector2.new(chatSettings.Padding * 4, chatSettings.Padding * 2)
	return bounds + padding
end

return getTextBounds
