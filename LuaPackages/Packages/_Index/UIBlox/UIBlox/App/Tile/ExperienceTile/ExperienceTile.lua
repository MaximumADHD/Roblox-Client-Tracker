local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Core.Style.withStyle)
local Interactable = require(Core.Control.Interactable)
local LoadableImage = require(App.Loading.LoadableImage)
local TileOverlay = require(TileRoot.SplitTile.TileOverlay)
local TileContentPanel = require(TileRoot.SplitTile.TileContentPanel)

local BOTTOM_CONTENT_HEIGHT = 60
local FOOTER_HEIGHT = 22
local CORNER_RADIUS = UDim.new(0, 8)

local ExperienceTile = Roact.PureComponent:extend("ExperienceTile")

ExperienceTile.validateProps = t.strictInterface({
	-- The experience's name that will show a loading state if nil
	experienceName = t.optional(t.string),

	-- The experience's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),

	-- Footer to be shown below the experience title
	footer = t.optional(t.table),

	-- The height of the footer. If nil, a default height of 22 is used
	footerHeight = t.optional(t.number),

	-- Whether or not the tile should use a background
	hasBackground = t.optional(t.boolean),

	-- Whether or not the tile should show a border outline
	hasOutline = t.optional(t.boolean),

	-- Whether or not the tile should show a stateful overlay
	isOverlayVisible = t.optional(t.boolean),

	-- Whether or not the tile should render its hovered state
	isActive = t.optional(t.boolean),

	-- The function that gets called when an ExperienceTile is clicked
	onActivated = t.optional(t.callback),
})

ExperienceTile.defaultProps = {
	footerHeight = FOOTER_HEIGHT,
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

function ExperienceTile:renderImageFrame(isOffset, useFullSize, stylePalette)
	local thumbnail = self.props.thumbnail
	local theme = stylePalette.Theme
	local hasRoundedCorners = useFullSize or not isOffset

	return Roact.createElement("Frame", {
		Position = UDim2.fromScale(0, if isOffset then 0.5 else 0),
		Size = UDim2.fromScale(1, if useFullSize then 1 else 0.5),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
	}, {
		Image = Roact.createElement(LoadableImage, {
			BackgroundColor3 = theme.PlaceHolder.Color,
			BackgroundTransparency = 1,
			Image = thumbnail,
			Position = UDim2.fromScale(0, if isOffset then -1 else 0),
			Size = UDim2.fromScale(1, if useFullSize then 1 else 2),
			cornerRadius = if hasRoundedCorners then CORNER_RADIUS else nil,
			showFailedStateWhenLoadingFailed = true,
			useShimmerAnimationWhileLoading = true,
		}),
	})
end

function ExperienceTile:renderTopContent(stylePalette)
	local hasBackground = self.props.hasBackground

	local hasTitle = true
	if self.props.experienceName then
		hasTitle = string.len(self.props.experienceName) > 0
	end

	local roundAllCorners = not hasBackground or not hasTitle

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeXX,
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, {
		TopImageFrame = self:renderImageFrame(false, roundAllCorners, stylePalette),

		BottomImageFrame = if not roundAllCorners then self:renderImageFrame(true, false, stylePalette) else nil,
	})
end

function ExperienceTile:renderBottomContent()
	return Roact.createElement(TileContentPanel, {
		panelHeight = self.getPanelHeight(),
		contentTitle = self.props.experienceName,
		contentFooter = self.props.footer,
		footerHeight = self.props.footerHeight,
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

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local tileBackgroundColor = if hasBackground then theme.BackgroundUIDefault.Color else nil
		local tileBackgroundTransparency = if hasBackground then theme.BackgroundUIDefault.Transparency else 1

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, panelHeight),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
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
				TopContent = self:renderTopContent(stylePalette),
				BottomContent = self:renderBottomContent(),
			}),
			Overlay = Roact.createElement(TileOverlay, {
				onActivated = onActivated,
				isFullOverlay = hasBackground,
				hasOutline = hasOutline,
				isVisible = isOverlayVisible,
				isActive = isActive,
			}),
		})
	end)
end

return ExperienceTile
