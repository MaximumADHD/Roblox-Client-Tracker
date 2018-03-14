local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local LocalizedTextButton = require(Modules.LuaApp.Components.LocalizedTextButton)
local StringsLocale = require(Modules.LuaApp.StringsLocale)

local SectionHeaderWithSeeAll = Roact.Component:extend("SectionHeaderWithSeeAll")

local SIDE_PADDING = 15

local BUTTON_WIDTH = 90
local BUTTON_HEIGHT = 24
local BUTTON_PADDING_BOTTOM = 8
local BUTTON_TEXT_SIZE = 18
local BUTTON_FONT = Enum.Font.SourceSans
local TOTAL_BUTTON_HEIGHT = BUTTON_PADDING_BOTTOM + BUTTON_HEIGHT

-- TODO: Remove this when SizeFromContents becomes available
--   MPowell 10/2017
function SectionHeaderWithSeeAll.height(text, width)
	local textHeight = SectionHeader.height(text, width - BUTTON_WIDTH)
	return math.max(textHeight, TOTAL_BUTTON_HEIGHT)
end

function SectionHeaderWithSeeAll:render()
	local text = self.props.text
	local width = self.props.width
	local onActivated = self.props.onActivated
	local layoutOrder = self.props.LayoutOrder

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(0, width, 0, 0),
		fitAxis = FitChildren.FitAxis.Height,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Title = Roact.createElement(SectionHeader, {
			text = text,
			width = width - BUTTON_WIDTH,
		}),
		Button = Roact.createElement(LocalizedTextButton, {
			Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(1, -SIDE_PADDING, 1, -BUTTON_PADDING_BOTTOM),
			Text = { StringsLocale.Keys.SEE_ALL },
			TextColor3 = Constants.Color.WHITE,
			TextSize = BUTTON_TEXT_SIZE,
			Font = BUTTON_FONT,
			BackgroundColor3 = Constants.Color.BLUE_PRIMARY,
			BorderSizePixel = 0,

			[Roact.Event.Activated] = function()
				if onActivated then
					onActivated()
				end
			end,
		}),
	})
end

return SectionHeaderWithSeeAll