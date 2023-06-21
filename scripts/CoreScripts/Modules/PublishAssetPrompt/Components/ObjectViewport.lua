--[[
	A component for displaying a square ViewportFrame of a given 3D object.
	Object should be of type Model and passed in as props.model
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local RunService = game:GetService("RunService")

local CAMERA_FOV = 70
local OBJ_ROTATION_SPEED = 0.01
local WORLD_Y_AXIS = Vector3.new(0, 1, 0)

local ObjectViewport = Roact.PureComponent:extend("ObjectViewport")

ObjectViewport.validateProps = t.strictInterface({
	model = t.instanceOf("Model"),
})

-- Calculates the appropriate distance for the camera such that the entire model is in-frame
local function getCameraDistance(fov, extentsSize)
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.max(xSize, ySize, zSize)

	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)
	local halfSize = maxSize / 2
	return (halfSize * fovMultiplier) + (zSize / 2)
end

local function rotateVectorAround(v, amount, axis)
	return CFrame.fromAxisAngle(axis, amount):VectorToWorldSpace(v)
end

function ObjectViewport:init()
	self.cameraRef = Roact.createRef()
	self.worldModelRef = Roact.createRef()

	self.cameraCFrameBinding, self.updateCameraCFrameBinding = Roact.createBinding(CFrame.new())
	self.cameraRotationBinding, self.updateCameraRotationBinding = Roact.createBinding(0)
	self.cameraFocusBinding, self.updateCameraFocusBinding = Roact.createBinding(CFrame.new())

	self:OnModelChanged()
end

-- Reset camera position when model changes.
function ObjectViewport:OnModelChanged()
	if self.props.model ~= nil then
		self.modelCFrame = self.props.model:GetModelCFrame()
		self.initialLookVector = self.modelCFrame.lookVector
		self.modelExtentsSize = self.props.model:GetExtentsSize()
		self.cameraDistance = getCameraDistance(CAMERA_FOV, self.modelExtentsSize)
	end
end

function ObjectViewport:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.fromScale(0, 0),
		AnchorPoint = Vector2.new(0, 0),
		Size = UDim2.fromScale(1, 1),
	}, {
		AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1,
			AspectType = Enum.AspectType.FitWithinMaxSize,
			DominantAxis = Enum.DominantAxis.Width,
		}),

		ViewportFrame = Roact.createElement("ViewportFrame", {
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.new(0, 0, 0),
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LightColor = Color3.fromRGB(240, 240, 240),
			LightDirection = Vector3.new(1, 1, 1),
			Ambient = Color3.fromRGB(240, 240, 240),
			CurrentCamera = self.cameraRef,
		}, {
			Camera = Roact.createElement("Camera", {
				CameraType = Enum.CameraType.Scriptable,
				FieldOfView = CAMERA_FOV,

				CFrame = self.cameraCFrameBinding,
				Focus = self.cameraFocusBinding,

				[Roact.Ref] = self.cameraRef,
			}),

			WorldModel = Roact.createElement("WorldModel", {
				[Roact.Ref] = self.worldModelRef,
			}),

			-- Rotate the camera a small amount each frame.
			RenderSteppedConnection = Roact.createElement(ExternalEventConnection, {
				event = RunService.RenderStepped,
				callback = function()
					self.updateCameraRotationBinding(self.cameraRotationBinding:getValue() + OBJ_ROTATION_SPEED)
					local newLookVector =
						rotateVectorAround(self.initialLookVector, self.cameraRotationBinding:getValue(), WORLD_Y_AXIS)
					local newCFrame =
						CFrame.new(self.modelCFrame.p + (newLookVector * self.cameraDistance), self.modelCFrame.p)
					self.updateCameraCFrameBinding(newCFrame)
				end,
			}),
		}),
	})
end

function ObjectViewport:didMount()
	if self.worldModelRef:getValue() and self.props.model ~= nil then
		self.props.model.Parent = self.worldModelRef:getValue()
	end
end

function ObjectViewport:willUnmount()
	if self.props.model then
		self.props.model.Parent = nil
	end
end

function ObjectViewport:didUpdate(prevProps)
	local modelChanged = self.props.model ~= prevProps.model
	if modelChanged then
		-- Unparent the old model, parent the new one.
		if prevProps.model ~= nil then
			prevProps.model.Parent = nil
		end

		if self.props.model ~= nil then
			self.props.model.Parent = self.worldModelRef:getValue()
		end
		self:OnModelChanged()
	end
end

return ObjectViewport
