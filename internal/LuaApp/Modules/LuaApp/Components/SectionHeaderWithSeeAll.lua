local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local LocalizedTextButton = require(Modules.LuaApp.Components.LocalizedTextButton)
local StringsLocale = require(Modules.LuaApp.StringsLocale)

local SectionHeaderWithSeeAll = Roact.PureComponent:extend("SectionHeaderWithSeeAll")

local BUTTON_WIDTH = 90
local BUTTON_HEIGHT = 24
local BUTTON_TEXT_SIZE = 18
local BUTTON_FONT = Enum.Font.SourceSans
local TOTAL_HEIGHT = 37

function SectionHeaderWithSeeAll:render()
	local text = self.props.text
	local onActivated = self.props.onActivated
	local layoutOrder = self.props.LayoutOrder

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, TOTAL_HEIGHT),
		fitAxis = FitChildren.FitAxis.Height,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement(SectionHeader, {
			text = text,
		}),
		Spacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 11),
			LayoutOrder = 2,
		}, {
			Button = Roact.createElement(LocalizedTextButton, {
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				Position = UDim2.new(1, -BUTTON_WIDTH, 0, -BUTTON_HEIGHT),
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
	})
end

return SectionHeaderWithSeeAll