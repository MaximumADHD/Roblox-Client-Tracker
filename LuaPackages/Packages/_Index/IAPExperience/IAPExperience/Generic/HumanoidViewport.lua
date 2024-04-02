--[[
	Component that renders a ViewportFrame with WorldModel given a humanoid model to display.
	This is used to display items we want to preview for purchase which do not have
	thumbnail access. For example, purchasing an avatar that is being created from within
	an experience
]]
local RunService = game:GetService("RunService")

local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent
local React = require(Packages.React)
local CharacterUtility = require(Packages.Thumbnailing).CharacterUtility
local CameraUtility = require(Packages.Thumbnailing).CameraUtility
local CFrameUtility = require(Packages.Thumbnailing).CFrameUtility
local EmoteUtility = require(Packages.Thumbnailing).EmoteUtility

export type Props = {
	model: any,
	Size: UDim2?,
	Position: UDim2?,
	LayoutOrder: number?,
}

local function HumanoidViewport(props: Props)
	local worldModelRef = React.useRef(nil)
	local camera, updateCamera = React.useBinding(nil)
	local isMounted = React.useRef(false)

	React.useEffect(function()
		isMounted.current = true
		return function()
			isMounted.current = false
		end
	end, {})

	React.useEffect(function()
		-- Clone model prop to add to Viewport and setup camera
		task.spawn(function()
			local model = props.model:Clone()
			assert(model.PrimaryPart, "The Model should have a PrimaryPart for setting up Camera")
			model.Parent = worldModelRef.current
			model:MoveTo(Vector3.new(0, 0, 0))

			-- if doing a view of a body, pose it with the head turned to the side
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(model)
			-- wait for pose to apply
			RunService.PostSimulation:Wait()
			if not isMounted.current then
				return
			end
			local camera = Instance.new("Camera")
			camera.CameraType = Enum.CameraType.Scriptable
			camera.Parent = worldModelRef.current

			local targetCFrame
			local headCFrame = CFrameUtility.CalculateTargetCFrame(model.Head.CFrame)
			targetCFrame = headCFrame - headCFrame.Position + model.PrimaryPart.CFrame.Position

			local minPartsExtent, maxPartsExtent = CharacterUtility.CalculateModelExtents(model, targetCFrame)
			local cameraOptions = {
				optFieldOfView = 30,
				targetCFrame = targetCFrame,
				minExtent = minPartsExtent,
				maxExtent = maxPartsExtent,
				extentScale = 1.0,
			}
			cameraOptions.optCameraXRot = CameraUtility.XRotForFullBody
			cameraOptions.optCameraDistanceScale = CameraUtility.DistanceScaleForFullBody
			cameraOptions.extentScale = CameraUtility.DefaultBodyMarginScale
			CameraUtility.SetupCamera(camera, cameraOptions)
			updateCamera(camera)
		end)
	end, {})

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = props.Size,
		Position = props.Position,
		LayoutOrder = props.LayoutOrder,
	}, {
		ViewportFrame = React.createElement("ViewportFrame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LightColor = Color3.fromRGB(240, 240, 240),
			Ambient = Color3.fromRGB(160, 160, 160),
			LightDirection = Vector3.new(9.5, -12, 7.5),
			CurrentCamera = camera,
		}, {
			WorldModel = React.createElement("WorldModel", {
				ref = worldModelRef,
			}),
		}),
	})
end

return HumanoidViewport
