local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local e = React.createElement

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

local TopBar = script.Parent.Parent.Parent.Parent
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local SetKeepOutArea = require(TopBar.Actions.SetKeepOutArea)
local Constants = require(TopBar.Constants)

local STROKE_THICKNESS = 2

function noop() end

type Props = {
	layoutOrder: number,
	setIsPopupVisible: (boolean) -> (),
	isPopupVisible: boolean,
}

return function(props: Props)
	local style = useStyle()
	local dispatch = useDispatch()
	local isHoveredOrPressed, setHoveredOrPressed = React.useState(false)

	local onAreaChanged = function(rbx: GuiObject?)
		if FFlagEnableChromeBackwardsSignalAPI and rbx then
			-- Need to recalculate the position as stroke is not part of AbsolutePosition/AbsoluteSize
			local strokePosition = Vector2.new(rbx.AbsolutePosition.X - STROKE_THICKNESS, rbx.AbsolutePosition.Y - STROKE_THICKNESS)
			local strokeSize = Vector2.new(rbx.AbsoluteSize.X + 2 * STROKE_THICKNESS, rbx.AbsoluteSize.Y + 2 * STROKE_THICKNESS)
			dispatch(SetKeepOutArea(Constants.BadgeOver13KeepOutAreaId, strokePosition, strokeSize))
		end
	end

	return e(Interactable, {
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
		isDisabled = false,
		LayoutOrder = props.layoutOrder,
		onStateChanged = React.useCallback(function(_oldState, newState)
			setHoveredOrPressed(newState == ControlState.Hover or newState == ControlState.Pressed)
		end),
		[React.Event.Activated] = React.useCallback(function()
			props.setIsPopupVisible(not props.isPopupVisible)
		end),
		[React.Change.AbsoluteSize] = onAreaChanged,
		[React.Change.AbsolutePosition] = onAreaChanged,
	}, {
		constraint = e("UISizeConstraint", {
			MinSize = Vector2.new(32, 32),
		}),
		text = e("TextLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Text = "13+",
			Font = AppFonts.default:getBold(),
			TextSize = 12,
			BackgroundColor3 = style.Theme.TextEmphasis.Color,
			BackgroundTransparency = if isHoveredOrPressed then 0.25 else style.Theme.TextEmphasis.Transparency,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			padding = e("UIPadding", {
				PaddingTop = UDim.new(0, 3),
				PaddingBottom = UDim.new(0, 3),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
			}),
			shape = e("UICorner", {
				CornerRadius = UDim.new(0, 4)
			}),
			stroke = e("UIStroke", {
				Thickness = STROKE_THICKNESS,
				Color = style.Theme.BackgroundMuted.Color,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}),
		})
	})
end
