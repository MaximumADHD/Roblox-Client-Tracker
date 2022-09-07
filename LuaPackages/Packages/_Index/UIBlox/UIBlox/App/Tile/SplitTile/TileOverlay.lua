local SplitTileRoot = script.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)
local useControlState = require(Core.Control.useControlState)
local useStyle = require(Core.Style.useStyle)
local ControlState = require(Core.Control.Enum.ControlState)

local setDefault = require(UIBlox.Utility.setDefault)

local OUTLINE_THICKNESS = 1
local CORNER_RADIUS = UDim.new(0, 8)

export type TileOverlayProps = {
	-- Whether or not overlay should visibly cover full tile
	isFullOverlay: boolean?,
	-- Whether or not overlay should show border outline
	hasOutline: boolean?,
	-- Whether or not overlay should be visible
	isVisible: boolean?,
	-- Whether or not overlay should capture input
	isActive: boolean?,
	-- Callback activated when overlay is clicked
	onActivated: (() -> ())?,
}

local function TileOverlay(props: TileOverlayProps)
	local onActivated = props.onActivated
	local isFullOverlay = setDefault(props.isFullOverlay, true)
	local hasOutline = setDefault(props.hasOutline, true)
	local isVisible = setDefault(props.isVisible, true)
	local isActive = setDefault(props.isActive, true)

	local controlState, onStateChanged = useControlState()
	local stylePalette = useStyle()

	local theme = stylePalette.Theme
	local overlayColor = nil
	local overlayTransparency = 1

	if isVisible and isActive then
		if controlState == ControlState.Pressed then
			overlayColor = theme.BackgroundOnPress.Color
			overlayTransparency = theme.BackgroundOnPress.Transparency
		elseif controlState == ControlState.Hover then
			overlayColor = theme.BackgroundOnHover.Color
			overlayTransparency = theme.BackgroundOnHover.Transparency
		end
	end

	return React.createElement(Interactable, {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = if isFullOverlay then overlayColor else nil,
		BackgroundTransparency = if isFullOverlay then overlayTransparency else 1,
		AutoButtonColor = false,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = if isActive then onActivated else nil,
		ZIndex = 3,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = CORNER_RADIUS,
		}),
		BorderFrame = if hasOutline
			then React.createElement("Frame", {
				Size = UDim2.new(1, -2 * OUTLINE_THICKNESS, 1, -2 * OUTLINE_THICKNESS),
				AnchorPoint = if isFullOverlay then Vector2.new(0.5, 0.5) else nil,
				Position = if isFullOverlay
					then UDim2.fromScale(0.5, 0.5)
					else UDim2.fromOffset(OUTLINE_THICKNESS, OUTLINE_THICKNESS),
				BackgroundColor3 = if not isFullOverlay then overlayColor else nil,
				BackgroundTransparency = if not isFullOverlay then overlayTransparency else 1,
				SizeConstraint = if not isFullOverlay then Enum.SizeConstraint.RelativeXX else nil,
			}, {
				UIStroke = React.createElement("UIStroke", {
					Color = theme.Divider.Color,
					Transparency = theme.Divider.Transparency,
					Thickness = OUTLINE_THICKNESS,
				}),
				UICorner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			})
			else nil,
	})
end

return TileOverlay
