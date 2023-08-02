local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local CameraStatusDot = require(script.Parent.CameraStatusDot)

export type Props = {
	iconSize: UDim2?,
	dotPosition: UDim2?,
}

local DEFAULT_ICON_SIZE = UDim2.fromScale(1, 1)

local function CameraStatusIcon(props: Props): React.ReactNode
	local cameraOn = useCameraOn()

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		Icon = React.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = cameraOn and Images["icons/controls/video"] or Images["icons/controls/videoOff"],
			Size = props.iconSize or DEFAULT_ICON_SIZE,
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),
		CameraStatusDot = cameraOn and React.createElement(CameraStatusDot, {
			Position = props.dotPosition,
		}) or nil,
	})
end

return CameraStatusIcon
