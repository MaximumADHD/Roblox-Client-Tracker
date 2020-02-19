local StudioService = game:GetService("StudioService")

local paths = require(script.Parent.Parent.Paths)
local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")
local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders") and
	settings():GetFFlag("GameSettingsReorganizeHeaders")

local function PublishingHint(props)
	if props.IsEnabled then
		return nil
	end

	local function calculateTextSize(text, textSize, font)
		local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
		return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
	end
	local linkText = FFlagWorldAvatarLocalization and props.LocalizedContent.PublishingHint.Link or nil
	local hyperLinkTextSize = calculateTextSize(FFlagWorldAvatarLocalization and linkText or "Publishing the game to Roblox", 22, Enum.Font.SourceSans)

	return paths.Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
		BackgroundTransparency = 1,
		LayoutOrder = FFlagAvatarSizeFixForReorganizeHeaders and props.LayoutOrder or nil
	}, {
		HyperLink = paths.Roact.createElement(paths.StudioWidgetHyperlink, {
			Text = FFlagWorldAvatarLocalization and linkText or "Publishing the game to Roblox",
			Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
			Enabled = true,
			Mouse = props.Mouse,

			OnClick = function()
				StudioService:ShowPublishToRoblox()
			end
		}),
		TextLabel = paths.Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			TextColor3 = paths.StateInterfaceTheme.getRadioButtonTextColor(props),
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = FFlagWorldAvatarLocalization and props.LocalizedContent.PublishingHint.LinkExplanation or " is required for changing Avatar game settings"
		})
	})
end

return PublishingHint