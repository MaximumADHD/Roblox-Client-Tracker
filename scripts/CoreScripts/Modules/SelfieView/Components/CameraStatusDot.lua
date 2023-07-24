local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)

local DOT_COLOR = Color3.new(0.33, 0.62, 0.49)
local DOT_SIZE = UDim2.fromOffset(4, 4)

export type Props = {
	Visible: boolean,
	AnchorPoint: Vector2?,
	Position: UDim2?,
	ZIndex: number?,
}

local function CameraStatusDot(props: Props): React.ReactNode
	return React.createElement("Frame", {
		AnchorPoint = props.AnchorPoint or Vector2.new(0.5, 0.5),
		Size = DOT_SIZE,
		BackgroundColor3 = DOT_COLOR,
		Position = props.Position or UDim2.fromScale(0.8, 0.8),
		Visible = props.Visible,
		ZIndex = props.ZIndex,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})
end

return CameraStatusDot
