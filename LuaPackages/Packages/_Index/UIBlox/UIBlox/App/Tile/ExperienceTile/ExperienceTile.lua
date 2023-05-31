--!nonstrict
local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Core.Style.withStyle)
local TileOverlay = require(TileRoot.SplitTile.TileOverlay)
local TileContentPanel = require(TileRoot.SplitTile.TileContentPanel)
local VerticalTileThumbnail = require(TileRoot.SplitTile.VerticalTile.VerticalTileThumbnail)

local BOTTOM_CONTENT_HEIGHT = 60
local CORNER_RADIUS = UDim.new(0, 8)
local OUTLINE_THICKNESS = 1

local ExperienceTile = Roact.PureComponent:extend("ExperienceTile")

ExperienceTile.validateProps = t.strictInterface({
	-- The title name for the the experience tile. Will not render text if nil or empty.
	experienceName = t.optional(t.string),

	-- The experience's thumbnail that will show a loading state if nil.
	-- Will be rounded if no name is provided.
	thumbnail = t.optional(t.string),

	-- A footer to be displayed below the experience's title.
	-- Size is fixed vertically and scales horizontally.
	footer = t.optional(t.table),

	-- The height of the tile's footer.å
	footerHeight = t.optional(t.number),

	-- Whether or not the tile has an opaque background.
	-- When false, all corners of thumbnail will be rounded and title name will float underneath.
	hasBackground = t.optional(t.boolean),

	-- Whether or not the tile has a border.
	-- When `isBackground` is false, the border will only outline the tile's thumbnail.
	hasOutline = t.optional(t.boolean),

	-- Whether or not the tile should show a stateful overlay when isActive is true.
	isOverlayVisible = t.optional(t.boolean),

	-- Whether or not the tile can is active and can receive user input
	isActive = t.optional(t.boolean),

	-- A function that fires when the tile is pressed
	onActivated = t.optional(t.callback),
})

ExperienceTile.defaultProps = {
	footerHeight = 22,
	hasBackground = true,
	hasOutline = true,
	isOverlayVisible = true,
	isActive = true,
}

function ExperienceTile:init()
	self.getPanelHeight = function()
		local panelHeight = BOTTOM_CONTENT_HEIGHT
		local footerHeight = self.props.footerHeight
		if self.props.experienceName then
			if string.len(self.props.experienceName) < 1 then
				panelHeight = 0
			end
		end
		if self.props.footer ~= nil then
			panelHeight = panelHeight + footerHeight
		end

		return panelHeight
	end
end

function ExperienceTile:renderTopContent()
	return Roact.createElement(VerticalTileThumbnail, {
		aspectRatio = 1,
		isTopRounded = true,
		isBottomRounded = not self.props.hasBackground,
		thumbnail = self.props.thumbnail,
	})
end

function ExperienceTile:renderBottomContent()
	return Roact.createElement(TileContentPanel, {
		panelHeight = UDim.new(0, self.getPanelHeight()),
		contentTitle = self.props.experienceName,
		contentFooter = self.props.footer,
		footerHeight = UDim.new(0, self.props.footerHeight),
		hasSidePadding = self.props.hasBackground,
	})
end

function ExperienceTile:render()
	local onActivated = self.props.onActivated
	local hasBackground = self.props.hasBackground
	local hasOutline = self.props.hasOutline
	local isOverlayVisible = self.props.isOverlayVisible
	local isActive = self.props.isActive
	local panelHeight = self.getPanelHeight()
	local hasFooter = self.props.footer ~= nil

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local tileBackgroundColor = if hasBackground then theme.BackgroundUIDefault.Color else nil
		local tileBackgroundTransparency = if hasBackground then theme.BackgroundUIDefault.Transparency else 1

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, if hasFooter then nil else panelHeight),
			SizeConstraint = if hasFooter then nil else Enum.SizeConstraint.RelativeXX,
			BackgroundColor3 = tileBackgroundColor,
			BackgroundTransparency = tileBackgroundTransparency,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = CORNER_RADIUS,
			}),
			Panel = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				TopContent = self:renderTopContent(),
				BottomContent = self:renderBottomContent(),
			}),
			Overlay = Roact.createElement(TileOverlay, {
				onActivated = onActivated,
				hasOutline = hasOutline,
				isVisible = isOverlayVisible,
				isActive = isActive,
			}),
			BorderFrame = if hasOutline
				then Roact.createElement("Frame", {
					Size = UDim2.new(1, -2 * OUTLINE_THICKNESS, 1, -2 * OUTLINE_THICKNESS),
					AnchorPoint = if hasBackground then Vector2.new(0.5, 0.5) else nil,
					Position = if hasBackground
						then UDim2.fromScale(0.5, 0.5)
						else UDim2.fromOffset(OUTLINE_THICKNESS, OUTLINE_THICKNESS),
					BackgroundTransparency = 1,
					SizeConstraint = if not hasBackground then Enum.SizeConstraint.RelativeXX else nil,
					ZIndex = 4,
				}, {
					UIStroke = Roact.createElement("UIStroke", {
						Color = theme.Divider.Color,
						Transparency = theme.Divider.Transparency,
						Thickness = OUTLINE_THICKNESS,
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = CORNER_RADIUS,
					}),
				})
				else nil,
		})
	end)
end

return ExperienceTile
