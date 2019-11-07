local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)

local ItemTileName = require(ItemTileRoot.ItemTileName)
local ItemTileIcon = require(ItemTileRoot.ItemTileIcon)

local ItemTile = Roact.PureComponent:extend("ItemTile")

local validateProps = t.strictInterface({
	-- The footer Roact element.
	footer = t.optional(t.table),

	-- The layout order of the final and loading image
	LayoutOrder = t.optional(t.integer),

	-- The item's name that will show a loading state if nil
	name = t.optional(t.string),

	-- The number of lines of text for the item name
	titleTextLineCount = t.optional(t.integer),

	-- The vertical padding between elements in the ItemTile
	innerPadding = t.optional(t.integer),

	-- The function that gets called on itemTile click
	onActivated = t.callback,

	-- The item's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),
})

ItemTile.defaultProps = {
	titleTextLineCount = 2,
	innerPadding = 10,
}

function ItemTile:init()
	self.footerRef = Roact.createRef()

	self.state = {
		tileWidth = 0,
		tileHeight = 0,
	}

	self.OnAbsoluteSizeChange = function(rbx)
		-- This spawn is to avoid triggering a re-render during a Changed event.
		-- The spawn can be removed when we upgrade our Roact version to 1.1
		spawn(function()
			if self.footerRef.current then
				local tileWidth = rbx.AbsoluteSize.X
				local tileHeight = rbx.AbsoluteSize.Y
				self:setState({
					tileWidth = tileWidth,
					tileHeight = tileHeight,
				})
			end
		end)
	end
end

function ItemTile:render()
	assert(validateProps(self.props))
	local footer = self.props.footer
	local layoutOrder = self.props.LayoutOrder
	local name = self.props.name
	local titleTextLineCount = self.props.titleTextLineCount
	local innerPadding = self.props.innerPadding
	local onActivated = self.props.onActivated
	local thumbnail = self.props.thumbnail

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local titleTextHeight = font.BaseSize * font.Header2.RelativeSize * titleTextLineCount
		local footerHeight = self.state.tileHeight - self.state.tileWidth - innerPadding - titleTextHeight - innerPadding
		footerHeight = math.max(0, footerHeight)

		-- TODO: use generic/state button from UIBlox
		return Roact.createElement("TextButton", {
			Text = "",
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = onActivated,
			[Roact.Change.AbsoluteSize] = self.OnAbsoluteSizeChange,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, innerPadding),
			}),
			Thumbnail = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeXX,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Image = Roact.createElement(ItemTileIcon, {
					Image = thumbnail,
				}),
			}),
			Name = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, titleTextHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Text = Roact.createElement(ItemTileName, {
					name = name,
				}),
			}),
			Footer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, footerHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				[Roact.Ref] = self.footerRef,
			}, {
				Footer = footer,
			}),
		})
	end)
end

return ItemTile
