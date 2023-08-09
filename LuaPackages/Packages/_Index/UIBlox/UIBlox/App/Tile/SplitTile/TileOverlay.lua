--!nonstrict
local SplitTileRoot = script.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)

local Interactable = require(Core.Control.Interactable)
local useControlState = require(Core.Control.useControlState)
local useStyle = require(Core.Style.useStyle)
local ControlState = require(Core.Control.Enum.ControlState)

local setDefault = require(UIBlox.Utility.setDefault)

local CORNER_RADIUS = UDim.new(0, 8)

export type Props = {
	-- Height where stateful overlay is visually cut off (ie. to allow for action rows)
	reservedBottomHeight: number?,
	-- Whether or not overlay should be visible
	isVisible: boolean?,
	-- Whether or not overlay should capture input
	isActive: boolean?,
	-- Callback activated when overlay is clicked
	onActivated: (() -> ())?,
	-- ZIndex relative to sibling components
	zIndex: number?,
}

local function TileOverlay(props: Props)
	local onActivated = props.onActivated
	local isVisible = setDefault(props.isVisible, true)
	local isActive = setDefault(props.isActive, true)
	local reservedBottomHeight = props.reservedBottomHeight or 0
	local hasReservedArea = reservedBottomHeight > 0

	if not isVisible and not isActive then
		return nil
	end

	local controlState, updateControlState = useControlState()
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

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = props.zIndex,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = CORNER_RADIUS,
		}),
		ClippingFrame = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, if hasReservedArea then -reservedBottomHeight else 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			Interactable = React.createElement(Interactable, {
				Size = UDim2.new(1, 0, 1, if hasReservedArea then CORNER_RADIUS.Offset else 0),
				BackgroundColor3 = overlayColor,
				BackgroundTransparency = overlayTransparency,
				AutoButtonColor = false,
				onStateChanged = updateControlState,
				[React.Event.Activated] = if isActive then onActivated else nil,
				ZIndex = 3,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
			}),
		}),
	})
end

return TileOverlay
