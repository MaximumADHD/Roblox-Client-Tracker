--!strict
--[[
    Viewport for the SelfieView Module. 

    Draggable display on the screen that shows the status of SelfieView as well
	as the current facial expression of the avatar.
]]
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local React = require(Packages.React)
local IconButton = UIBlox.App.Button.IconButton

local toggleSelfieViewVisibleSignal = require(script.Parent.Parent.toggleSelfieViewVisibleSignal)

-- TODO: UPDATE WITH DESIGN TOKENS
local UI_OBJECT_NAME: string = "SelfieView"
local DEFAULT_POSITION: UDim2 = UDim2.fromOffset(15, 25)
local DEFAULT_SIZE: UDim2 = UDim2.fromOffset(86, 185)

type Props = {
	minimized: boolean,
	setMinimized: (boolean) -> (),
	cameraOn: boolean,
	setCameraOn: (boolean) -> (),
}

local function Viewport(props: Props)
	return React.createElement("ScreenGui", {
		Name = UI_OBJECT_NAME,
		DisplayOrder = -2,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Frame = if props.minimized
			then nil
			else React.createElement("Frame", {
				Name = "SelfieViewFrame",
				Active = true,
				Size = DEFAULT_SIZE,
				Position = DEFAULT_POSITION,
				Visible = not props.minimized,
				-- TODO: UPDATE WITH DESIGN TOKENS
				BackgroundColor3 = Color3.new(0, 0, 0),
				BackgroundTransparency = 0.3,
			}, {}, {
				Corners = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				CloseButton = React.createElement(UIBlox.App.Button.IconButton, {
					icon = Images["icons/navigation/close_small"],
					size = UDim2.fromOffset(6, 6),

					onActivated = function()
						toggleSelfieViewVisibleSignal:fire()
					end,
				}),
				ToggleCameraButton = React.createElement(IconButton, {
					icon = props.cameraOn and Images["icons/controls/video"] or Images["icons/controls/videoOff"],
					-- TODO: UPDATE WITH DESIGN TOKENS
					size = UDim2.fromOffset(86, 0),
					position = UDim2.fromScale(0, 1),
					anchorPoint = Vector2.new(0, 1),
					onActivated = function()
						-- TODO: Link to FaceAnimator Service. Then listen for changes to FaceAnimatorService to update cameraOn.
					end,
				}),
			}),
	})
end

return Viewport
