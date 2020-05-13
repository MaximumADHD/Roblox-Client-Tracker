local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local StateInterfaceTheme = require(Plugin.Src.Util.StateInterfaceTheme)
local Hyperlink = require(RoactStudioWidgets.Hyperlink)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local PublishingHint = Roact.PureComponent:extend("PublishingHint")

function PublishingHint:DEPRECATED_render()
	local props = self.props
	if props.IsEnabled then
		return nil
	end

	local function calculateTextSize(text, textSize, font)
		local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
		return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
	end

	return withLocalization(function(localized)
		local linkText = localized.Morpher.PublishingHint.Link
		local hyperLinkTextSize = calculateTextSize(linkText, 22, Enum.Font.SourceSans)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
			BackgroundTransparency = 1,
			LayoutOrder = FFlagAvatarSizeFixForReorganizeHeaders and props.LayoutOrder or nil
		}, {
			HyperLink = Roact.createElement(Hyperlink, {
				Text = linkText,
				Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
				Enabled = true,
				Mouse = props.Mouse,

				OnClick = function()
					StudioService:ShowPublishToRoblox()
				end
			}),
			TextLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				TextColor3 = StateInterfaceTheme.getRadioButtonTextColor(props),
				Font = Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = localized.Morpher.PublishingHint.LinkExplanation,
			})
		})
	end)
end

function PublishingHint:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local localization = props.Localization

	if props.IsEnabled then
		return nil
	end

	local function calculateTextSize(text, textSize, font)
		local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
		return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
	end

	local linkText = localization:getText("General", "PublishingHintLink")
	local hyperLinkTextSize = calculateTextSize(linkText, 22, Enum.Font.SourceSans)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
		BackgroundTransparency = 1,
		LayoutOrder = FFlagAvatarSizeFixForReorganizeHeaders and props.LayoutOrder or nil
	}, {
		HyperLink = Roact.createElement(Hyperlink, {
			Text = linkText,
			Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
			Enabled = true,
			Mouse = props.Mouse,

			OnClick = function()
				StudioService:ShowPublishToRoblox()
			end
		}),
		TextLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			TextColor3 = StateInterfaceTheme.getRadioButtonTextColor(props),
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = localization:getText("General", "PublishingHintLinkExplanation"),
		})
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(PublishingHint, {
		Localization = ContextServices.Localization,
	})
end

return PublishingHint