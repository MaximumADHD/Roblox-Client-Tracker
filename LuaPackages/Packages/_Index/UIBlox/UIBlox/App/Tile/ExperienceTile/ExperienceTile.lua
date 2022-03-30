local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent
local BaseTile = TileRoot.BaseTile
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(Core.Style.withStyle)
local Interactable = require(Core.Control.Interactable)
local ControlState = require(Core.Control.Enum.ControlState)

local TileName = require(BaseTile.TileName)
local LoadableImage = require(UIBlox.App.Loading.LoadableImage)

-- Some constants may be abstracted as props later on in subsequent designs
local TEXT_LINE_COUNT = 2
local TITLE_PADDING = 8
local BOTTOM_CONTENT_HEIGHT = 60
local USE_ROUNDED_CORNERS = true

local DEFAULT_CORNER_RADIUS = UDim.new(0, 8)

local ExperienceTile = Roact.PureComponent:extend("ExperienceTile")

ExperienceTile.validateProps = t.strictInterface({
	-- The experience's name that will show a loading state if nil
	experienceName = t.optional(t.string),

	-- The width of the tile, which text sizing is based upon
	textWidth = t.intersection(t.integer, t.numberMin(0)),

	-- Whether the tile should use a background or not
	hasBackground = t.optional(t.boolean),

	-- The function that gets called when an ExperienceTile is clicked
	onActivated = t.optional(t.callback),

	-- The function that gets called when a user hovers over an ExperienceTile
	onHover = t.optional(t.callback),

	-- The experience's thumbnail that will show a loading state if nil
	thumbnail = t.optional(t.string),

	-- Whether the tile is disabled or not
	isDisabled = t.optional(t.boolean),
})

ExperienceTile.defaultProps = {
	hasBackground = true,
	isDisabled = false,
}

function ExperienceTile:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})

		if newState == ControlState.Hover and self.props.onHover then
			self.props.onHover()
		end
	end
end

function ExperienceTile:renderImageFrame(isOffset, useFullSize, stylePalette)
	local thumbnail = self.props.thumbnail
	local theme = stylePalette.Theme
	local hasRoundedCorners = USE_ROUNDED_CORNERS and (useFullSize or not isOffset)

	return Roact.createElement("Frame", {
		Position = UDim2.fromScale(0, if isOffset then 0.5 else 0),
		Size = UDim2.fromScale(1, if useFullSize then 1 else 0.5),
		ClipsDescendants = true,
		BackgroundTransparency = 1,
	}, {
		Image = Roact.createElement(LoadableImage, {
			BackgroundColor3 = theme.PlaceHolder.Color,
			BackgroundTransparency = if UIBloxConfig.fixTileThumbnailColorInconsistency
				then 1
				else theme.PlaceHolder.Transparency,
			Image = thumbnail,
			Position = UDim2.fromScale(0, if isOffset then -1 else 0),
			Size = UDim2.fromScale(1, if useFullSize then 1 else 2),
			cornerRadius = if hasRoundedCorners then DEFAULT_CORNER_RADIUS else nil,
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

function ExperienceTile:renderBottomContent(stylePalette)
	local experienceName = self.props.experienceName
	local textWidth = self.props.textWidth
	local hasBackground = self.props.hasBackground
	local titleTextLineCount = TEXT_LINE_COUNT
	local font = stylePalette.Font

	local maxTitleTextHeight = math.ceil(font.BaseSize * font.Header2.RelativeSize * titleTextLineCount)

	local bottomContentHeight = BOTTOM_CONTENT_HEIGHT
	if self.props.experienceName then
		if string.len(self.props.experienceName) < 1 then
			bottomContentHeight = 0
		end
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, bottomContentHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = if hasBackground then UDim.new(0, TITLE_PADDING) else nil,
			PaddingRight = if hasBackground then UDim.new(0, TITLE_PADDING) else nil,
			PaddingTop = UDim.new(0, TITLE_PADDING),
			PaddingBottom = UDim.new(0, TITLE_PADDING),
		}),
		Name = if titleTextLineCount > 0
			then Roact.createElement(TileName, {
				name = experienceName,
				maxHeight = maxTitleTextHeight,
				maxWidth = if hasBackground then textWidth - (2 * TITLE_PADDING) else textWidth,
				fluidSizing = true,
			})
			else nil,
	})
end

function ExperienceTile:render()
	local onActivated = self.props.onActivated
	local isDisabled = self.props.isDisabled
	local hasBackground = self.props.hasBackground
	local hasRoundedCorners = USE_ROUNDED_CORNERS

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local backgroundStateMap = {
			[ControlState.Hover] = theme.BackgroundOnHover,
			[ControlState.Pressed] = theme.BackgroundOnPress,
		}

		local backgroundColor = if hasBackground then theme.BackgroundUIDefault.Color else nil
		local backgroundTransparency = if hasBackground then theme.BackgroundUIDefault.Transparency else 1

		if hasBackground and backgroundStateMap[self.state.controlState] then
			backgroundColor = backgroundStateMap[self.state.controlState].Color
			backgroundTransparency = backgroundStateMap[self.state.controlState].Transparency
		end

		-- These values should change IF top and bottom content is abstracted to be passed in as props
		local bottomContentHeight = BOTTOM_CONTENT_HEIGHT
		if self.props.experienceName then
			if string.len(self.props.experienceName) < 1 then
				bottomContentHeight = 0
			end
		end

		local TileContent = Roact.createElement(Interactable, {
			Size = UDim2.new(1, 0, 1, bottomContentHeight),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = backgroundTransparency,
			isDisabled = isDisabled,
			onStateChanged = self.onStateChanged,
			[Roact.Event.Activated] = if not isDisabled then onActivated else nil,
		}, {
			UICorner = if hasRoundedCorners
				then Roact.createElement("UICorner", {
					CornerRadius = DEFAULT_CORNER_RADIUS,
				})
				else nil,
			UIStroke = if hasBackground
				then Roact.createElement("UIStroke", {
					Color = theme.Divider.Color,
					Transparency = theme.Divider.Transparency,
					Thickness = 1,
				})
				else nil,
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			TopContent = self:renderTopContent(stylePalette),
			BottomContent = self:renderBottomContent(stylePalette),
		})

		return TileContent
	end)
end

return ExperienceTile
