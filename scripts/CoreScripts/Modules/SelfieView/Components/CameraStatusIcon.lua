local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local CameraStatusDot = require(script.Parent.CameraStatusDot)

export type Props = {
	-- Icon should stay visible unless otherwise told
	visible: boolean?,
	iconSize: UDim2?,
	dotPosition: UDim2?,
}

local function CameraStatusIcon(props: Props): React.ReactNode
	local cameraOn = useCameraOn()

	return React.createElement("Frame", {
		Visible = props.visible or true,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		Icon = React.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = cameraOn and Images["icons/controls/video"] or Images["icons/controls/videoOff"],
			Size = props.iconSize or UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}),
		CameraStatusDot = React.createElement(CameraStatusDot, {
			Visible = cameraOn,
			Position = props.dotPosition,
		}),
	})
end

return CameraStatusIcon
