local StudioService = game:GetService("StudioService")

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets

local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)
local Hyperlink = require(RoactStudioWidgets.Hyperlink)

local PublishingHint = Roact.PureComponent:extend("PublishingHint")

function PublishingHint:render()
	local props = self.props
	local localization = props.Localization
	local theme = self.props.Stylizer

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
		LayoutOrder = props.LayoutOrder
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
			TextColor3 = if StateInterfaceTheme.getRadioButtonTextColor(props) then StateInterfaceTheme.getRadioButtonTextColor(props) else theme.fontStyle.Header.TextColor3,
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = localization:getText("General", "PublishingHintLinkExplanation"),
		})
	})
end

PublishingHint = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(PublishingHint)

return PublishingHint
