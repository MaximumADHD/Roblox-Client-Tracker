--[[
	Viewport that mimics a Body Part or Head Thumbnail
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local CameraUtility = require(CorePackages.Thumbnailing).CameraUtility
local MannequinUtility = require(CorePackages.Thumbnailing).MannequinUtility
local Constants = require(script.Parent.Parent.Parent.Parent.Constants)

local AvatarPartViewport = Roact.PureComponent:extend("AvatarPartViewport")

AvatarPartViewport.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number),
	--[[
        supposed to be folders under a model/table that looks like
        Model:
            R15ArtistIntent
                ... MeshParts of the BodyPart
            R15
            R6
        where R15ArtistIntent must at least always have parts

		Or a single MeshPart or Accessory
    ]]
	asset = t.union(t.table, t.instanceOf("MeshPart"), t.instanceOf("Accessory")),
	viewportSize = t.optional(t.Vector2),
})

function AvatarPartViewport:init()
	self.camera = nil
	self.modelRef = Roact.createRef()
	self.camera, self.updateCamera = Roact.createBinding(nil)
end

function AvatarPartViewport:createViewportCamera()
	local camera = Instance.new("Camera")
	camera.Parent = self.modelRef:getValue()
	camera.CameraType = Enum.CameraType.Scriptable
	return camera
end

-- Showing off a non Head body part uses a mannequin that the part is added onto
function AvatarPartViewport:addBodyPartMannequinToViewport()
	local useR15, useR15NewNames, mannequin =
		MannequinUtility.CreateBodyPartMannequin(self.props.asset, --[[parentToWorkspace]] false)
	local faceRight, focusPartNames =
		MannequinUtility.SetupBodyPartMannequin(useR15, useR15NewNames, mannequin, self.props.asset)
	mannequin.Parent = self.modelRef:getValue()
	local camera = self:createViewportCamera()
	CameraUtility.SetupBodyPartCamera(mannequin, faceRight, focusPartNames, camera)
	self.updateCamera(camera)
end

-- Showing off a head does not use a mannequin, only the head is shown
function AvatarPartViewport:addHeadModelToViewport()
	local headModel = MannequinUtility.CreateHeadModel(self.props.asset)
	headModel.Parent = self.modelRef:getValue()
	local camera = self:createViewportCamera()
	CameraUtility.SetupHeadCamera(headModel, camera)
	self.updateCamera(camera)
end

-- Showing off eyelashes and eyebrows
function AvatarPartViewport:addAccessoryToViewport()
	local accoutrement = self.props.asset
	local model = Instance.new("Model")
	accoutrement.Parent = model
	model.Parent = self.modelRef:getValue()
	local camera = self:createViewportCamera()
	CameraUtility.SetupAccessoryCamera(model, camera)
	self.updateCamera(camera)
end

function AvatarPartViewport:didMount()
	local asset = self.props.asset
	if typeof(asset) == "Instance" then
		if asset:IsA("MeshPart") then
			self:addHeadModelToViewport()
		else
			self:addAccessoryToViewport()
		end
	else
		self:addBodyPartMannequinToViewport()
	end
end

function AvatarPartViewport:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local viewportSize = if self.props.viewportSize
			then self.props.viewportSize
			else Constants.ItemCardWidthLandscape
		return Roact.createElement("Frame", {
			LayoutOrder = self.props.LayoutOrder,
			BackgroundColor3 = theme.PlaceHolder.Color,
			BackgroundTransparency = theme.PlaceHolder.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.fromOffset(viewportSize, viewportSize),
			ZIndex = 0,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 10),
			}),

			AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1,
				AspectType = Enum.AspectType.FitWithinMaxSize,
				DominantAxis = Enum.DominantAxis.Width,
			}),
			ViewportFrame = Roact.createElement("ViewportFrame", {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ImageTransparency = 0,
				BackgroundTransparency = 1,
				LightColor = Constants.ViewportLightColor,
				Ambient = Constants.ViewportLightAmbient,
				LightDirection = Constants.ViewportLightDirection,
				CurrentCamera = self.camera,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 10),
				}),
				WorldModel = Roact.createElement("WorldModel", {
					[Roact.Ref] = self.modelRef,
				}),
			}),
		})
	end)
end

return AvatarPartViewport
