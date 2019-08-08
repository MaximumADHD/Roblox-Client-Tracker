--[[
	Entry to SearchOptions.

	Props:
		string Header = The text to display at the top of this entry.
		int LayoutOrder = The order in which to display this entry in the SearchOptions page.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local createFitToContent = require(Plugin.Core.Components.createFitToContent)
local withTheme = ContextHelper.withTheme

local SearchOptionsEntry = Roact.PureComponent:extend("SearchOptionsEntry")

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	FillDirection = Enum.FillDirection.Vertical,
	Padding = UDim.new(0, 6),
	SortOrder = Enum.SortOrder.LayoutOrder,
})

function SearchOptionsEntry:render()
	return withTheme(function(theme)
		local header = self.props.Header
		local layoutOrder = self.props.LayoutOrder
		local ZIndex = self.props.ZIndex or 1
		local children = self.props[Roact.Children] or {}
		local searchTheme = theme.searchOptions

		local textSize = Constants.getTextSize(header)

		return Roact.createElement(FitToContent, {
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,
			ZIndex = ZIndex,
		}, Cryo.Dictionary.join(children, {
			Header = Roact.createElement("TextLabel", {
				LayoutOrder = -1,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextColor3 = searchTheme.headerTextColor,
				Size = UDim2.new(0, textSize.X, 0, textSize.Y),
				Text = header,
			}),
		}))
	end)
end

return SearchOptionsEntry
