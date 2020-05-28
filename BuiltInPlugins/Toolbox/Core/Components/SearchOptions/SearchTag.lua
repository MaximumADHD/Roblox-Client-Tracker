--[[
	Search Tag

	A single tag used to filter a marketplace search.

	Props:
		string Name = The name of the search term.
		int LayoutOrder = The order to display this in a SearchTags component.
		function onDelete = A callback when the user wants to delete the tag.
		string prefix = The text pre-appended before the Name
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Images = require(Plugin.Core.Util.Images)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local RoundFrame = require(Plugin.Core.Components.RoundFrame)

local ITEM_HEIGHT = Constants.SEARCH_TAG_HEIGHT
local DELETE_BUTTON_SIZE = 10
local TEXT_PADDING = 4

local SearchTag = Roact.PureComponent:extend("SearchTag")

SearchTag.defaultProps = {
	Name = "",
	prefix = "",
}

function SearchTag:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local prefix = self.props.prefix
			local name = self.props.Name
			local onDelete = self.props.onDelete
			local textWidth = Constants.getTextSize(name).X
			local byTextWidth = Constants.getTextSize((prefix), Constants.FONT_SIZE_MEDIUM, Constants.FONT_BOLD).X

			local frameWidth = byTextWidth
				+ textWidth
				+ DELETE_BUTTON_SIZE
				+ TEXT_PADDING * 4

			return Roact.createElement(RoundFrame, {
				Size = UDim2.new(0, frameWidth, 0, ITEM_HEIGHT),
				BackgroundColor3 = theme.searchTag.backgroundColor,
				BorderColor3 = theme.searchTag.borderColor,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				LayoutOrder = self.props.LayoutOrder or 1
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, TEXT_PADDING),
					PaddingRight = UDim.new(0, TEXT_PADDING),
				}),

				ByLabel = Roact.createElement("TextLabel", {
					Font = Constants.FONT_BOLD,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextColor3 = theme.searchTag.textColor,
					Size = UDim2.new(0, byTextWidth, 1, 0),
					BackgroundTransparency = 1,
					ZIndex = 2,
					Text = prefix,
				}),

				NameLabel = Roact.createElement("TextLabel", {
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextColor3 = theme.searchTag.textColor,
					Size = UDim2.new(0, textWidth, 1, 0),
					Position = UDim2.new(0, byTextWidth + TEXT_PADDING, 0, 0),
					BackgroundTransparency = 1,
					ZIndex = 2,
					Text = name,
				}),

				DeleteButton = Roact.createElement("ImageButton", {
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					Size = UDim2.new(0, DELETE_BUTTON_SIZE, 0, DELETE_BUTTON_SIZE),
					BackgroundTransparency = 1,
					Image = Images.DELETE_BUTTON,
					ImageColor3 = theme.searchTag.textColor,

					[Roact.Event.Activated] = onDelete,
				}),
			})
		end)
	end)
end

return SearchTag