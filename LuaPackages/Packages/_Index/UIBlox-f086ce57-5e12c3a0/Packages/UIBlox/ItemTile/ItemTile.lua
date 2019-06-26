local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local ItemTileName = require(ItemTileRoot.ItemTileName)
local ItemTileIcon = require(ItemTileRoot.ItemTileIcon)
local ItemTile = Roact.PureComponent:extend("ItemTile")

local NAME_TEXT_LINE_COUNT = 2
local PADDING = 10


local function validateFooterHeight(props)
	if props.footer and props.footerHeight <= 0 then
		return false, ("footerHeight must be a positive non-zero value when footer is not nil."):format(
			props.footer,
			props.footerHeight
		)
	else
		return true
	end
end

local arePropsValid = t.intersection(
	t.strictInterface({
		-- The footer Roact component. Must have a footHeight if not nil.
		footer = t.optional(t.table),
		-- The height of the footer. Required if footer is not nil.
		footerHeight = t.optional(t.numberMin(0)),
		-- The layout order of the final and loading image
		LayoutOrder = t.optional(t.integer),
		-- The item's name that will show a loading state if nil
		name = t.optional(t.string),
		-- The function that gets called on itemTile click
		onActivated = t.callback,
		-- The item's thumbnail that will show a loading state if nil
		thumbnail = t.optional(t.string),
		-- The width of the ItemTile
		width = t.numberPositive,
	}),
	validateFooterHeight
)

ItemTile.defaultProps = {
	footerHeight = 0
}

function ItemTile:render()
	assert(arePropsValid(self.props))
	local footer = self.props.footer
	local footerHeight = self.props.footerHeight
	local layoutOrder = self.props.LayoutOrder
	local name = self.props.name
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail

	local renderFunction = function(stylePalette)
		local font = stylePalette.Font

		-- TODO: Size calculation will be handled by the layout system in the future.
		local width = self.props.width
		local nameHeight = font.BaseSize * font.Header2.RelativeSize * NAME_TEXT_LINE_COUNT
		local height = width + PADDING + nameHeight + PADDING + footerHeight

		-- TODO: use generic button from UIBlox
		return Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.new(0, width, 0, height),
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 0.1,
			[Roact.Event.Activated] = onActivated,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),
			Thumbnail = Roact.createElement("Frame", {
				Size = UDim2.new(0, width, 0, width),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Image = Roact.createElement(ItemTileIcon, {
					Image = thumbnail,
				})
			}),
			Name = Roact.createElement("Frame", {
				Size = UDim2.new(0, width, 0, nameHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Text = Roact.createElement(ItemTileName, {
					name = name,
				}),
			}),
			Footer = Roact.createElement("Frame", {
				Size = UDim2.new(0, width, 0, footerHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Footer = footer,
			}),
		})
	end
	return withStyle(renderFunction)
end

return ItemTile