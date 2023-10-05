--[[
    Viewport to mimic a thumbnail view of the passed in model.
    Mostly likely to be used with another viewport such as PreviewViewport when clicking the expand icon
]]
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Roact)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local t = require(CorePackages.Packages.t)
local UIBloxImages = UIBlox.App.ImageSet.Images
local Constants = require(script.Parent.Parent.Parent.Constants)
local CharacterUtility = require(CorePackages.Thumbnailing).CharacterUtility
local CameraUtility = require(CorePackages.Thumbnailing).CameraUtility
local CFrameUtility = require(CorePackages.Thumbnailing).CFrameUtility
local EmoteUtility = require(CorePackages.Thumbnailing).EmoteUtility

local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local PreviewExpandIcon = UIBloxImages["icons/actions/previewExpand"]
local DropShadow = UIBloxImages["component_assets/dropshadow_25"]

local DEFAULT_CAMERA_FOV = 30
local DEFAULT_CAMERA_Y_ROT = 25
local DROP_SHADOW_SIZE = UDim2.new(0.4, 50, 0.15, 10)
local DROP_SHADOW_POSITION = UDim2.new(0.5, 0, 1, 0)

local ObjectViewport = Roact.PureComponent:extend("ObjectViewport")

ObjectViewport.validateProps = t.strictInterface({
	model = t.instanceOf("Model"),
	fieldOfView = t.optional(t.number),
	-- Consider changing how we determine the camera view if other assets need different behavior
	useFullBodyCameraSettings = t.optional(t.boolean),
	openPreviewView = t.optional(t.callback),
})

function ObjectViewport:createCamera()
	local camera = Instance.new("Camera")
	camera.CameraType = Enum.CameraType.Scriptable
	camera.Parent = self.worldModelRef:getValue()
	return camera
end

function ObjectViewport:init()
	self.worldModelRef = Roact.createRef()
	self.camera, self.updateCamera = Roact.createBinding(nil)
	self.isMounted = false
end

-- Clone model prop to add to Viewport and setup camera
function ObjectViewport:setupViewport()
	local model = self.props.model:Clone()
	assert(model.PrimaryPart, "The Model should have a PrimaryPart for setting up Camera")
	model.Parent = self.worldModelRef:getValue()
	model:MoveTo(Vector3.new(0, 0, 0))

	local useFullBodyCameraSettings = self.props.useFullBodyCameraSettings
	-- if doing a view of a body, pose it with the head turned to the side
	if useFullBodyCameraSettings then
		EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(model)
		-- wait for pose to apply
		RunService.RenderStepped:Wait()
		if not self.isMounted then
			return
		end
	end
	local camera = self:createCamera()
	local targetCFrame
	if useFullBodyCameraSettings then
		local headCFrame = CFrameUtility.CalculateTargetCFrame(model.Head.CFrame)
		targetCFrame = headCFrame - headCFrame.Position + model.PrimaryPart.CFrame.Position
	else
		targetCFrame = model.PrimaryPart.CFrame
	end

	local minPartsExtent, maxPartsExtent = CharacterUtility.CalculateModelExtents(model, targetCFrame)
	local cameraOptions = {
		optFieldOfView = if self.props.fieldOfView then self.props.fieldOfView else DEFAULT_CAMERA_FOV,
		targetCFrame = targetCFrame,
		minExtent = minPartsExtent,
		maxExtent = maxPartsExtent,
		extentScale = 1.0,
	}
	if useFullBodyCameraSettings then
		cameraOptions.optCameraXRot = CameraUtility.XRotForFullBody
		cameraOptions.optCameraDistanceScale = CameraUtility.DistanceScaleForFullBody
		cameraOptions.extentScale = CameraUtility.DefaultBodyMarginScale
	else
		cameraOptions.optCameraYRot = DEFAULT_CAMERA_Y_ROT
	end
	CameraUtility.SetupCamera(camera, cameraOptions)
	self.updateCamera(camera)
end

function ObjectViewport:didMount()
	self.isMounted = true
	task.spawn(function()
		self:setupViewport()
	end)
end

function ObjectViewport:render()
	return withStyle(function(style)
		local theme = style.Theme
		return Roact.createElement("Frame", {
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0,
			-- Extend X width due to padding in BasePublishPrompt to make the gradient take the whole prompt width
			Size = UDim2.new(1, Constants.PromptSidePadding * 2, 1, 0),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}, {
			ViewportFrame = Roact.createElement("ViewportFrame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LightColor = Constants.ViewportLightColor,
				Ambient = Constants.ViewportLightAmbient,
				LightDirection = Constants.ViewportLightDirection,
				CurrentCamera = self.camera,
			}, {
				WorldModel = Roact.createElement("WorldModel", {
					[Roact.Ref] = self.worldModelRef,
				}),
			}),
			ExpandPreviewButton = self.props.openPreviewView and Roact.createElement(IconButton, {
				position = UDim2.new(1, -Constants.PromptSidePadding, 1, 0),
				anchorPoint = Vector2.new(1, 1),
				icon = PreviewExpandIcon,
				iconSize = IconSize.Medium,
				onActivated = self.props.openPreviewView,
			}),
			Gradient = Roact.createElement("UIGradient", {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, theme.BackgroundMuted.Color),
					ColorSequenceKeypoint.new(1, theme.BackgroundMuted.Color),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(0.7, 0.75),
					NumberSequenceKeypoint.new(1, 1),
				}),
			}),
			DropShadow = Roact.createElement(ImageSetLabel, {
				Position = DROP_SHADOW_POSITION,
				AnchorPoint = Vector2.new(0.5, 1),
				Image = DropShadow,
				BackgroundTransparency = 1,
				ImageTransparency = 0.5,
				Size = DROP_SHADOW_SIZE,
				ZIndex = 0,
			}),
		})
	end)
end

function ObjectViewport:willUnmount()
	self.isMounted = false
end

return ObjectViewport
