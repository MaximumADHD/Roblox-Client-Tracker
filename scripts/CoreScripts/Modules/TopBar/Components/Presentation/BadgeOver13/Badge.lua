local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local e = React.createElement

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState

type Props = {
	layoutOrder: number,
	setIsPopupVisible: (boolean) -> (),
	isPopupVisible: boolean,
}

return function(props: Props)
	local style = useStyle()
    local isHoveredOrPressed, setHoveredOrPressed = React.useState(false)

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
		end)
	}, {
        constraint = e("UISizeConstraint", {
            MinSize = Vector2.new(32, 32),
        }),
		text = e("TextLabel", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.fromScale(0.5, 0.5),
			Text = "13+",
			Font = Enum.Font.GothamBold,
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
				Thickness = 2,
				Color = style.Theme.BackgroundMuted.Color,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}),
		})
	})
end
