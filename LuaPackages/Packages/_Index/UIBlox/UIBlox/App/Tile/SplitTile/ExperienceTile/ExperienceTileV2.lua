local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local ImagesTypes = require(App.ImageSet.ImagesTypes)
local setDefault = require(UIBlox.Utility.setDefault)
local VerticalTile = require(SplitTileRoot.VerticalTile.VerticalTile)
local ExperienceActionRow = require(SplitTileRoot.ExperienceTile.ExperienceActionRow)

local ACTION_ROW_HEIGHT = 48
local DEFAULT_FOOTER_HEIGHT = 22

local MIN_WIDTH = 146
local MIN_HEIGHT = 228

local ACTION_BUTTON_PADDING = 6

export type Props = {
	-- The experience's name that will show a loading state if nil
	experienceName: string?,
	-- The experience's thumbnail that will show a loading state if nil
	thumbnail: string?,
	-- The experience's thumbnail to be shown when in a wide aspect ratio
	wideThumbnail: string?,
	-- Footer to be shown below the experience title
	footer: table?,
	-- The height of the footer. If nil, a default height of 22 is used
	footerHeight: number?,
	-- Whether or not the tile should use a background
	hasBackground: boolean?,
	-- Whether or not the tile should show a border outline
	hasOutline: boolean?,
	-- Whether or not hover mode is enabled for the tile
	isHoverEnabled: boolean?,
	-- Whether or not the tile should show a stateful overlay
	isOverlayVisible: boolean?,
	-- Whether or not the experience can be launched
	isPlayable: boolean?,
	-- Whether or not the tile should render its hovered state and accept input
	isActive: boolean?,
	-- Function called when tile panel is clicked
	onActivated: (() -> ())?,
	-- Function called when hover play button is pressed
	onPlayPressed: (() -> ())?,
	-- custom text for the play button, default empty
	buttonText: string?,
	-- custom icon for the play button, default based on isPlayable
	buttonIcon: ImagesTypes.ImageSetImage?,
}

local function ExperienceTile(props: Props)
	local hasBackground = setDefault(props.hasBackground, true)
	local hasOutline = setDefault(props.hasOutline, hasBackground)
	local isHoverEnabled = setDefault(props.isHoverEnabled, hasBackground)
	local isOverlayVisible = setDefault(props.isOverlayVisible, true)
	local isActive = setDefault(props.isActive, true)
	local footer = props.footer
	local footerHeight = setDefault(props.footerHeight, if footer then DEFAULT_FOOTER_HEIGHT else 0)

	return React.createElement(VerticalTile, {
		titleText = props.experienceName,
		thumbnail = props.thumbnail,
		wideThumbnail = props.wideThumbnail,
		actionRow = if isHoverEnabled
			then React.createElement(ExperienceActionRow, {
				isActionable = props.isPlayable,
				height = ACTION_ROW_HEIGHT,
				horizontalPadding = if hasBackground then ACTION_BUTTON_PADDING else nil,
				verticalPadding = ACTION_BUTTON_PADDING,
				onPlayPressed = props.onPlayPressed,
				text = props.buttonText,
				icon = props.buttonIcon,
			})
			else nil,
		actionRowHeight = ACTION_ROW_HEIGHT,
		footer = footer,
		footerHeight = footerHeight,
		hasBackground = hasBackground,
		hasOutline = hasOutline,
		hasWideHover = if hasBackground then true else false,
		isHoverEnabled = isHoverEnabled,
		isOverlayVisible = isOverlayVisible,
		isActive = isActive,
		onActivated = props.onActivated,
	})
end

return ExperienceTile
