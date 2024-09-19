local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local GetFFlagSelfieViewRedStatusDot = require(script.Parent.Parent.Flags.GetFFlagSelfieViewRedStatusDot)
local GetFFlagSelfieViewV4 = require(RobloxGui.Modules.Flags.GetFFlagSelfieViewV4)

export type Props = {
	AnchorPoint: Vector2?,
	Position: UDim2?,
	ZIndex: number?,
	Size: UDim2?,
}

local DOT_SIZE = UDim2.fromOffset(4, 4)
local DEFAULT_ANCHOR_POINT = Vector2.new(0.5, 0.5)
local DEFAULT_POSITION = UDim2.fromScale(0.8, 0.8)

local function CameraStatusDot(props: Props): React.ReactNode
	local style = useStyle()

	return React.createElement("Frame", {
		AnchorPoint = props.AnchorPoint or DEFAULT_ANCHOR_POINT,
		Size = if GetFFlagSelfieViewV4() and props.Size then props.Size else DOT_SIZE,
		BackgroundColor3 = if GetFFlagSelfieViewRedStatusDot()
			then style.Theme.Alert.Color
			else style.Theme.OnlineStatus.Color,
		Position = props.Position or DEFAULT_POSITION,
		ZIndex = props.ZIndex,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})
end

return CameraStatusDot
