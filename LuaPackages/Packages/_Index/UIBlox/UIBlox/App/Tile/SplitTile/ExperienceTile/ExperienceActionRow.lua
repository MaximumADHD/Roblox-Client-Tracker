local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local Button = require(App.Button.Button)
local ButtonType = require(App.Button.Enum.ButtonType)
local ComboButton = require(App.Button.ComboButton)
local Images = require(App.ImageSet.Images)

local BUTTON_HEIGHT = 36
local DEFAULT_ROW_HEIGHT = 48
local DEFAULT_BUTTON_PADDING = 6

local TRUNCATION_COLLAPSE = "icons/actions/truncationCollapse"

local NOOP = function() end

export type Props = {
	-- Whether or not row contents can be interacted with
	isActionable: boolean?,
	-- Total height of the action row
	height: number?,
	-- Padding on left and right of action row
	horizontalPadding: number?,
	-- Padding on top and bottom of action row
	verticalPadding: number?,
	-- Callback run when the row's play button is clicked
	onPlayPressed: (() -> ())?,
	-- Callback run when the row's overflow button is clicked. If exists, will
	-- render a combo button instead of a regular button.
	onOverflowPressed: ((rbx: GuiObject) -> ())?,
	-- text displayed on the button
	text: string?,
	-- icon displayed on the button, default based on isActionable
	icon: Images.ImageSetImage?,
	-- The feedback type for interaction feedback manager
	feedbackType: string?,
	-- ButtonType override for the button
	buttonType: string?,
	-- Whether the button should show a loading state
	buttonLoading: boolean?,
	-- Force UIBlox button render regardless of the useFoundationButton config flag.
	-- DO NOT USE: internal escape hatch, not intended for external consumers.
	DO_NOT_USE_useUIBloxButton: boolean?,
}

local function ExperienceActionRow(props: Props)
	local isActionable = props.isActionable
	local horizontalPadding = props.horizontalPadding or DEFAULT_BUTTON_PADDING
	local verticalPadding = props.verticalPadding or DEFAULT_BUTTON_PADDING
	local height = props.height or DEFAULT_ROW_HEIGHT
	local text = props.text
	local icon = props.icon

	if props.onOverflowPressed then
		return React.createElement(ComboButton, {
			position = UDim2.new(0, horizontalPadding, 1, -verticalPadding - BUTTON_HEIGHT),
			size = UDim2.new(1, -2 * horizontalPadding, 0, height - 2 * verticalPadding),
			button = {
				text = text,
				icon = icon,
				onActivated = props.onPlayPressed or NOOP,
				isDisabled = not isActionable,
			},
			overflow = {
				icon = Images[TRUNCATION_COLLAPSE],
				onActivated = props.onOverflowPressed,
				isDisabled = not isActionable,
			},
		})
	else
		return React.createElement(Button, {
			buttonType = if props.buttonType then props.buttonType else ButtonType.PrimaryContextual,
			text = text,
			icon = icon,
			size = UDim2.new(1, -2 * horizontalPadding, 0, height - 2 * verticalPadding),
			position = UDim2.new(0, horizontalPadding, 1, -verticalPadding - BUTTON_HEIGHT),
			userInteractionEnabled = isActionable,
			onActivated = props.onPlayPressed or NOOP,
			isDisabled = not isActionable,
			isLoading = props.buttonLoading,
			feedbackType = props.feedbackType,
			DO_NOT_USE_useUIBloxButton = props.DO_NOT_USE_useUIBloxButton,
		})
	end
end

return ExperienceActionRow
