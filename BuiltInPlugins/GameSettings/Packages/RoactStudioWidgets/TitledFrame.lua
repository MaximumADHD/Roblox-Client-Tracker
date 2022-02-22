--[[
	A frame with a title offset to the left side.
	Used as a distinct vertical entry on a SettingsPage.

	Props:
		string Title = The text to display in this TitledFrame's left-hand title.
		int MaxHeight = The maximum height of this TitledFrame in pixels. Defaults to 100.
		int LayoutOrder = The order which this TitledFrame will sort to in a UIListLayout.
		enum TitleTextYAlignment = where the title text should be positioned vertically
		table Style = {
			TextColor,
		}
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local CENTER_GUTTER = 180

local getStyle = nil

local function TitledFrame(props)
	local function renderInternal()
		local style = getStyle(props)

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, props.MaxHeight or 100),
			LayoutOrder = props.LayoutOrder or 1,
		}, {
			Title = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, CENTER_GUTTER, 1, 0),

				TextColor3 = style.TextColor,
				Font = nil ~= props.Font and props.Font or Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = nil == props.TitleTextYAlignment and Enum.TextYAlignment.Top or props.TitleTextYAlignment,
				Text = props.Title,
			}),

			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Size = UDim2.new(1, -CENTER_GUTTER, 1, 0),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}, props[Roact.Children]),
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(props)
	local style = {
		TextColor = (props.Style and props.Style.TextColor) and props.Style.TextColor or Theme.getTitleTextColor()
	}
	return style
end

return TitledFrame
