local TextService = game:GetService("TextService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)

local SectionHeader = Roact.Component:extend("SectionHeader")

local SIDE_PADDING = 15
local TEXT_SIZE = 26
local TEXT_PADDING_BOTTOM = 5
local TEXT_FONT = Enum.Font.SourceSansLight

-- TODO: Remove this when SizeFromContents becomes available
--   MPowell 10/2017
function SectionHeader.height(text, width)
	local textWidth = width - SIDE_PADDING*2

	return TextService:GetTextSize(text, TEXT_SIZE, TEXT_FONT, Vector2.new(textWidth, 1000)).y + TEXT_PADDING_BOTTOM
end

function SectionHeader:render()
	local text = self.props.text
	local width = self.props.width
	local layoutOrder = self.props.LayoutOrder

	local totalHeight = SectionHeader.height(text, width)
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, totalHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -SIDE_PADDING*2, 1, 0),
			Position = UDim2.new(0, SIDE_PADDING, 0, 0),
			BackgroundTransparency = 1,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.GRAY1,
			Font = TEXT_FONT,
			Text = text,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
	})
end

return SectionHeader