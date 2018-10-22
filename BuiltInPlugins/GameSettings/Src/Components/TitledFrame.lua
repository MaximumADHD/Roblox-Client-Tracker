--[[
	A frame with a title offset to the left side.
	Used as a distinct vertical entry on a SettingsPage.

	Props:
		string Title = The text to display in this TitledFrame's left-hand title.
		int MaxHeight = The maximum height of this TitledFrame in pixels. Defaults to 100.
		int LayoutOrder = The order which this TitledFrame will sort to in a UIListLayout.
		table Content = The content to display in this TitledFrame.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local Constants = require(Plugin.Src.Util.Constants)

local function TitledFrame(props)
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, props.MaxHeight or 100),
			LayoutOrder = props.LayoutOrder or 1,
		}, {
			Title = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, Constants.CENTER_GUTTER, 1, 0),

				TextColor3 = theme.titledFrame.text,
				Font = Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = props.Title,
			}),

			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Size = UDim2.new(1, -Constants.CENTER_GUTTER, 1, 0),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}, props.Content),
		})
	end)
end

return TitledFrame