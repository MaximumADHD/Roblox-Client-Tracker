--[[
	A component for displaying a square ViewportFrame of a given 3D object.
	Object should be of type Model and passed in as props.model
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local EventConnection = ReactUtils.EventConnection
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local RunService = require(Foundation.Utility.Wrappers).Services.RunService

local WORLD_Y_AXIS = Vector3.new(0, 1, 0)

-- Calculates the appropriate distance for the camera such that the entire model is in-frame
local function getCameraDistance(fov: number, extentsSize: Vector3)
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.max(xSize, ySize, zSize)

	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)
	local halfSize = maxSize
	return (halfSize * fovMultiplier) + (zSize / 2)
end

local function rotateVectorAround(v: Vector3, amount: number, axis: Vector3)
	return CFrame.fromAxisAngle(axis, amount):VectorToWorldSpace(v)
end

type Props = {
	model: Model?,
	rotationSpeed: number?,
	fieldOfView: number?,
}

local defaultProps = {
	rotationSpeed = 0.01,
	fieldOfView = 70,
}

local function ObjectViewport(objectViewportProps: Props)
	local props = withDefaults(objectViewportProps, defaultProps)
	local tokens = useTokens()

	local model, setModel = React.useState(props.model :: Model?)
	local cameraRef = React.useRef(nil :: Camera?)
	local worldModelRef = React.useRef(nil :: WorldModel?)

	local cameraCFrameBinding, updateCameraCFrameBinding = React.useBinding(CFrame.new())
	local cameraRotationBinding, updateCameraRotationBinding = React.useBinding(0)

	local modelCFrame, setModelCFrame = React.useState(CFrame.new())
	local initialLookVector, setInitialLookVector = React.useState(Vector3.new())
	local cameraDistance, setCameraDistance = React.useState(0)

	React.useEffect(function()
		if worldModelRef.current and model ~= nil then
			model.Parent = worldModelRef.current :: Instance?
		end

		return function()
			if model ~= nil then
				model.Parent = nil :: Instance?
			end
		end
	end, {})

	React.useEffect(function()
		if model ~= nil then
			local cFrame = model:GetModelCFrame() :: CFrame
			setModelCFrame(cFrame)
			setInitialLookVector(cFrame.LookVector)

			local extentsSize: Vector3 = model:GetExtentsSize()
			setCameraDistance(getCameraDistance(props.fieldOfView, extentsSize))
		end
	end, { model })

	React.useEffect(function()
		-- Unparent the old model, parent the new one.
		if model ~= nil then
			model.Parent = nil
		end

		if props.model ~= nil then
			props.model.Parent = worldModelRef.current
			setModel(props.model)
		end
	end, { props.model })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.fromScale(0, 0),
		AnchorPoint = Vector2.new(0, 0),
		Size = UDim2.fromScale(1, 1),
	}, {
		AspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1,
			AspectType = Enum.AspectType.FitWithinMaxSize,
			DominantAxis = Enum.DominantAxis.Width,
		}),

		ViewportFrame = React.createElement("ViewportFrame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 25, 1, 25),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LightColor = tokens.Color.Extended.Gray.Gray_200.Color3,
			LightDirection = Vector3.new(1, 1, 1),
			Ambient = tokens.Color.Extended.Gray.Gray_200.Color3,
			CurrentCamera = cameraRef,
		}, {
			Camera = React.createElement("Camera", {
				CameraType = Enum.CameraType.Scriptable,
				FieldOfView = props.fieldOfView,

				CFrame = cameraCFrameBinding,

				ref = cameraRef,
			}),

			WorldModel = React.createElement("WorldModel", {
				ref = worldModelRef,
			}),

			-- Rotate the camera a small amount each frame.
			RenderSteppedConnection = React.createElement(EventConnection, {
				event = RunService.RenderStepped :: RBXScriptSignal,
				callback = function()
					updateCameraRotationBinding(cameraRotationBinding:getValue() + props.rotationSpeed or 0)
					local newLookVector =
						rotateVectorAround(initialLookVector, cameraRotationBinding:getValue(), WORLD_Y_AXIS)
					local newCFrame = CFrame.new(modelCFrame.p + (newLookVector * cameraDistance), modelCFrame.p)
					updateCameraCFrameBinding(newCFrame)
				end,
			}),
		}),
	})
end

return ObjectViewport
