local Library = script.Parent.Parent
local Roact = require(Library.Parent.Parent.Roact)
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local StudioWidgetHyperlink = require(script.Parent.Hyperlink)

local PartialHyperlink = Roact.PureComponent:extend("PartialHyperlink")

local function calculateTextSize(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end


function PartialHyperlink:render()
	local textSize
	if FFlagLuobuDevPublishLua and self.props.TextSize then
		textSize = self.props.TextSize
	else
		textSize = self.props.Theme.fontStyle.Normal.TextSize
	end

	local hyperLinkTextSize = calculateTextSize(self.props.HyperLinkText, textSize, self.props.Theme.fontStyle.Normal.Font)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
		BackgroundTransparency = 1,
	}, {
		HyperLink = Roact.createElement(StudioWidgetHyperlink, {
			Text = self.props.HyperLinkText,
			Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
			Mouse = self.props.Mouse,
			OnClick = self.props.OnClick,
			TextSize = FFlagLuobuDevPublishLua and textSize or nil,
		}),
		TextLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
			Size = UDim2.new(1, -hyperLinkTextSize.X, 1, 0),
			TextColor3 = self.props.Theme.fontStyle.Normal.TextColor3,
			Font = Enum.Font.SourceSans,
			TextSize = FFlagLuobuDevPublishLua and textSize or 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = self.props.NonHyperLinkText,
		}),
	})
end

return PartialHyperlink