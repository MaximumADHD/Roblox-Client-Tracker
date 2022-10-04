local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local PrimaryContextualButton = require(App.Button.PrimaryContextualButton)
local Images = require(App.ImageSet.Images)

local BUTTON_HEIGHT = 36

local PLAY_ICON = "icons/common/play"
local UNAVAILABLE_ICON = "icons/status/unavailable"

local NOOP = function() end

export type Props = {
	-- Whether or not row contents can be interacted with
	isActionable: boolean?,
	-- Total height of the action row
	height: number,
	-- Padding on left and right of action row
	horizontalPadding: number?,
	-- Padding on top and bottom of action row
	verticalPadding: number?,
	-- Callback run when the row's button is clicked
	onPlayPressed: (() -> ())?,
	-- text displayed on the button
	text: string?,
	-- icon displayed on the button, default based on isActionable
	icon: Images.ImageSetImage?,
}

local function ExperienceActionRow(props: Props)
	local isActionable = props.isActionable
	local horizontalPadding = props.horizontalPadding or 0
	local verticalPadding = props.verticalPadding or 0
	local text = props.text
	local icon = props.icon
	if not icon then
		icon = if isActionable then Images[PLAY_ICON] else Images[UNAVAILABLE_ICON]
	end

	return React.createElement(PrimaryContextualButton, {
		text = text,
		icon = icon,
		size = UDim2.new(1, -2 * horizontalPadding, 0, props.height - 2 * verticalPadding),
		position = UDim2.new(0, horizontalPadding, 1, -verticalPadding - BUTTON_HEIGHT),
		userInteractionEnabled = isActionable,
		onActivated = props.onPlayPressed or NOOP,
		isDisabled = not isActionable,
	})
end

return ExperienceActionRow
