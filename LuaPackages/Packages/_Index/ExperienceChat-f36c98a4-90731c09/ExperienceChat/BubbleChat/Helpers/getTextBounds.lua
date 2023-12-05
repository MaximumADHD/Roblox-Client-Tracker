local CoreGui = game:GetService("CoreGui")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local getAbsolutePaddingbyDimension = require(ExperienceChat.BubbleChat.Helpers.getAbsolutePaddingbyDimension)
local getFFlagReplicateUIPaddingChildProperties =
	require(ExperienceChat.Flags.getFFlagReplicateUIPaddingChildProperties)

local getTextBounds = function(text: string, chatSettings)
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
	SizingLabel.FontFace = chatSettings.FontFace
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

return getTextBounds
