--[[
	Render a preview of a material or material variant.

	Required Props:
		table WrapperProps: Interaction props passed by withControl

	Optional Props:
		Color3 AmbientColor: Ambient light color.
		Color3 BackgroundColor: The background color of the viewport frame.
		UDim CornerRadius: Apply a UICornerRadius to the component with the given CornerRadius.
		boolean DisableZoom: Disables the zoom functionality in the preview.
		number InitialDistance: The initial distance from the camera.
		number LayoutOrder: LayoutOrder of the component.
		table Material: The Material to preview. Accepts an Enum.Material or MaterialVariant.
		UDim2 Position: The position of the component.
		any MaterialPreviewGeometryType: The type of preview to display when previewing a MaterialVariant (e.g. Sphere, Cube, CubeCornerOn, Plane, Dominus).
		UDim2 Size: The size of the component.
		boolean Static: Disable interactive features by setting to true.
		string StyleModifier: The StyleModifier index into Style.
		boolean Use2022Materials: Use modern material colors.
		number MeshPartBorderThickness: Thickness of the black border to draw around the MeshPart preview.
		Color3 MeshPartBackgroundColor: Background color of the MeshPart preview.

	Style Values:
		Color3 AmbientColor: Ambient light color.
		Color3 BackgroundColor: The background color of the viewport frame.
		UDim CornerRadius: Apply a UICornerRadius to the component with the given CornerRadius.
		number InitialDistance: The initial distance from the camera.
		Color3 LightColor: Color of the light source.
		Vector3 LightDirection: Director of the light source.
		boolean RecenterCameraOnUpdate: Reset the camera when the material changes.
		boolean Use2022Materials: Use modern material colors.
]]
local main = script.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)
local React = require(Packages.React)

local withForwardRef = Framework.Wrappers.withForwardRef

local Stylizer = Framework.Style.Stylizer

local prioritize = Framework.Util.prioritize

local UI = Framework.UI
local AssetRenderModel = UI.AssetRenderModel
local Pane = UI.Pane

local StudioServices = require(main.Context.StudioServices)

local MaterialPreviewGeometryType = require(main.Enums.MaterialPreviewGeometryType)

local Util = main.Util
local getMaterialColor = require(Util.getMaterialColor)

local Constants = main.Constants
local BASE_MATERIALS_WITH_METALNESS = require(Constants.BASE_MATERIALS_WITH_METALNESS)

local getFFlagMaterialGridTerrainEditorItemUx = require(main.Flags.getFFlagMaterialGridTerrainEditorItemUx)

-- Terrain Editor list/grid UX: narrower FOV + distance compensation + corrected corner-on orientation.
-- ViewportFrame Camera default; corner-on cube uses a narrower FOV so the front vertex is less stretched by perspective.
local DEFAULT_PREVIEW_CAMERA_FOV = 70
local CUBE_CORNER_ON_CAMERA_FOV = 40

local function getPreviewCameraFieldOfView(materialPreviewGeometryType: Types.MaterialPreviewGeometryType?): number
	if materialPreviewGeometryType == MaterialPreviewGeometryType.CubeCornerOn then
		return CUBE_CORNER_ON_CAMERA_FOV
	end
	return DEFAULT_PREVIEW_CAMERA_FOV
end

local function getPreviewCameraDistanceMultiplier(
	materialPreviewGeometryType: Types.MaterialPreviewGeometryType?
): number
	if materialPreviewGeometryType == MaterialPreviewGeometryType.CubeCornerOn then
		return math.tan(math.rad(DEFAULT_PREVIEW_CAMERA_FOV / 2)) / math.tan(math.rad(CUBE_CORNER_ON_CAMERA_FOV / 2))
	end
	return 1
end

export type Props = {
	AmbientColor: Color3?,
	AnchorPoint: Vector2?,
	BackgroundColor: Color3?,
	CornerRadius: UDim?,
	DisableZoom: boolean?,
	ImageTransparency: number?,
	InitialDistance: number?,
	LayoutOrder: number?,
	MaterialPreviewGeometryType: Types.MaterialPreviewGeometryType?,
	Material: Types.Material,
	OnRightClick: (() -> ())?,
	OverrideColor: Color3?,
	OverrideTransparency: number?,
	Position: UDim2?,
	RecenterCameraOnUpdate: boolean?,
	Size: UDim2?,
	Static: boolean?,
	Style: string?,
	Transparent: boolean?,
	Use2022Materials: boolean?,
	MeshPartBorderThickness: number?,
	MeshPartBackgroundColor: Color3?,
}

type _Props = Props & {
	StyleModifier: string?,
	WrapperProps: any,
	ForwardRef: any,
}

type _Style = {
	AmbientColor: Color3,
	BackgroundColor: Color3,
	CornerRadius: UDim?,
	InitialDistance: number,
	LightColor: Color3,
	LightDirection: Vector3,
	RecenterCameraOnUpdate: boolean?,
	Transparent: boolean?,
	Use2022Materials: boolean,
}

local EMPTY_MODEL = Instance.new("Model")

local function getLocalMeshPartTemplate(
	studioServices,
	assetId,
	meshPartBorderThickness,
	meshPartBackgroundColor,
	backgroundColor
)
	if not assetId then
		return EMPTY_MODEL
	end

	assert(type(assetId) == "string", "Bad assetId")

	local backgroundSphereColor = prioritize(meshPartBackgroundColor, backgroundColor)

	local insertService = studioServices:getService("InsertService")
	local template = insertService:LoadLocalAsset(assetId)

	if template then
		local result = template:FindFirstChild("MeshPart")
		if result then
			result.CFrame = CFrame.new(0, 0, 0)

			-- Use an inverted sphere to create a black border around the MeshPart
			-- Also makes the background color behind the mesh black though, so backgroundSphere sets it back to the default color below if necessary
			if meshPartBorderThickness then
				local borderSphere = Instance.new("Part")
				borderSphere.Shape = Enum.PartType.Ball
				borderSphere.Size = result.Size
					+ Vector3.new(meshPartBorderThickness, meshPartBorderThickness, meshPartBorderThickness)
				borderSphere.Color = Color3.fromRGB(38, 38, 38)
				borderSphere.Material = Enum.Material.Neon
				borderSphere.CFrame = CFrame.fromMatrix(Vector3.zero, Vector3.xAxis, Vector3.yAxis, -Vector3.zAxis)
				borderSphere.Parent = result
			end

			-- Background color behind the MeshPart, mostly only noticible for transparent materials
			if meshPartBackgroundColor or meshPartBorderThickness then
				local backgroundSphere = Instance.new("Part")
				backgroundSphere.Shape = Enum.PartType.Ball
				backgroundSphere.Size = result.size
				backgroundSphere.Color = backgroundSphereColor
				backgroundSphere.Material = Enum.Material.Neon
				backgroundSphere.CFrame = CFrame.fromMatrix(Vector3.zero, Vector3.xAxis, Vector3.yAxis, -Vector3.zAxis)
				backgroundSphere.Parent = result
			end

			return result
		else
			return EMPTY_MODEL
		end
	else
		return EMPTY_MODEL
	end
end

local function getCubeTemplate()
	local part = Instance.new("Part")
	local size = 0.5 * math.sqrt(2) * 5
	part.Size = Vector3.new(size, size, size)

	return part
end

local function getPlaneTemplate()
	local size = 100

	local part = Instance.new("Part")
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.Size = Vector3.new(size, size, 0)
	part.CFrame = CFrame.new(0, 0, -0.25 * math.sqrt(2) * 5)

	return part
end

local function getMeshPartAsync(studioServices, meshId)
	local insertService = studioServices:getService("InsertService")

	local meshPart
	local ok, err = pcall(function()
		meshPart = insertService:CreateMeshPartAsync(meshId, Enum.CollisionFidelity.Box, Enum.RenderFidelity.Automatic)
		meshPart.Size = meshPart.Size.unit * math.sqrt(2) * 5
	end)

	if not ok then
		warn(err)
		return EMPTY_MODEL
	end

	return meshPart
end

local function MaterialPreview(props: _Props)
	local studioServices = StudioServices:use()
	local style: _Style = Stylizer:use("MaterialPreview", props)

	local backgroundColor = prioritize(props.BackgroundColor, style.BackgroundColor)
	local initialDistance = prioritize(props.InitialDistance, style.InitialDistance)
	local recenterCameraOnUpdate = prioritize(props.RecenterCameraOnUpdate, style.RecenterCameraOnUpdate)

	local templateInstance, setTemplateInstance = React.useState(EMPTY_MODEL)
	local renderPart, setRenderPart = React.useState(nil)

	-- Render state
	local baseMaterial, setBaseMaterial = React.useState(Enum.Material.SmoothPlastic)
	local materialColor, setMaterialColor = React.useState(Color3.new(1, 1, 1))
	local materialVariantName, setMaterialVariantName = React.useState("")
	local _, setColorMap = React.useState("")

	-- Enable sky box for metallic base materials so they have something to reflect
	local shouldEnableSky = BASE_MATERIALS_WITH_METALNESS[baseMaterial] and materialVariantName == ""

	-- CubeCornerOn (corner toward camera + matched FOV/distance) is Terrain Editor grid UX only.
	local terrainEditorItemUx = getFFlagMaterialGridTerrainEditorItemUx()

	-- Only construct a new template model if we need one
	React.useEffect(function()
		if
			props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.Cube
			or (terrainEditorItemUx and props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.CubeCornerOn)
		then
			setTemplateInstance(getCubeTemplate())
			return nil
		elseif props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.Plane then
			setTemplateInstance(getPlaneTemplate())
			return nil
		elseif props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.Dominus then
			local thread = task.spawn(function()
				setTemplateInstance(getMeshPartAsync(studioServices, "rbxassetid://1484148960"))
			end)

			return function()
				task.cancel(thread)
			end
		else
			setTemplateInstance(
				getLocalMeshPartTemplate(
					studioServices,
					"rbxasset://models/MaterialManager/smooth_material_model.rbxm",
					props.MeshPartBorderThickness,
					props.MeshPartBackgroundColor,
					backgroundColor
				)
			)
			return nil
		end
	end, { props.MaterialPreviewGeometryType })

	-- Compute the actual state of our material
	React.useEffect(function()
		local use2022Materials = prioritize(props.Use2022Materials, style.Use2022Materials)

		if typeof(props.Material) == "EnumItem" then
			setMaterialColor(props.OverrideColor or getMaterialColor(props.Material, use2022Materials))
			setBaseMaterial(props.Material)
			setMaterialVariantName("")
			setColorMap("")
			return nil
		elseif typeof(props.Material) == "Instance" and props.Material:IsA("MaterialVariant") then
			setMaterialColor(props.OverrideColor or Color3.new(1, 1, 1))
			setBaseMaterial(props.Material.BaseMaterial)
			setMaterialVariantName(props.Material.Name)
			setColorMap(props.Material.ColorMap)

			local nameConn = props.Material:GetPropertyChangedSignal("Name"):Connect(function()
				setMaterialVariantName(props.Material.Name)
			end)

			local baseMaterialConn = props.Material:GetPropertyChangedSignal("BaseMaterial"):Connect(function()
				setBaseMaterial(props.Material.BaseMaterial)
			end)

			return function()
				baseMaterialConn:Disconnect()
				nameConn:Disconnect()
			end
		else
			-- Render neutral item
			setMaterialColor(props.OverrideColor or Color3.new(1, 1, 1))
			setBaseMaterial(Enum.Material.SmoothPlastic)
			setMaterialVariantName("")
			setColorMap("")
			return nil
		end
	end, { props.Material, props.Use2022Materials, style.Use2022Materials, props.OverrideColor })

	if props.Static then
		if typeof(props.Material) == "Instance" and props.Material:IsA("MaterialVariant") then
			if templateInstance:IsA("Part") then
				templateInstance.Size = Vector3.new(10, 10, 0.001)
				local decal = templateInstance:FindFirstChildWhichIsA("Decal")
				if decal == nil then
					decal = Instance.new("Decal")
				end

				decal.Texture = props.Material.ColorMap
				decal.Parent = templateInstance
			end
			if templateInstance:IsA("MeshPart") then
				local surfaceAppearance = templateInstance:FindFirstChildWhichIsA("SurfaceAppearance")
				if surfaceAppearance == nil then
					surfaceAppearance = Instance.new("SurfaceAppearance")
				end

				surfaceAppearance.ColorMap = props.Material.ColorMap
				surfaceAppearance.MetalnessMap = props.Material.MetalnessMap
				surfaceAppearance.NormalMap = props.Material.NormalMap
				surfaceAppearance.RoughnessMap = props.Material.RoughnessMap

				surfaceAppearance.Parent = templateInstance
			end
		end
	end

	-- Only update rendering the model if we need to (side effects!)
	React.useEffect(function()
		if not (renderPart and renderPart:IsA("BasePart")) then
			return
		end

		renderPart.Color = materialColor
		renderPart.Material = baseMaterial
		renderPart.MaterialVariant = materialVariantName
		renderPart.Transparency = props.OverrideTransparency or 0

		if props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.Dominus then
			renderPart.CFrame = CFrame.Angles(0, math.rad(30), 0) * CFrame.Angles(math.rad(15), 0, 0)
		elseif props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.CubeCornerOn then
			if terrainEditorItemUx then
				-- `Angles(rx, ry, rz)` = radians on world X, then Y, then Z. Corner toward +Z (camera) needs
				-- pitch -atan2(1,√2) on X and yaw 45° on Y.
				renderPart.CFrame = CFrame.Angles(-math.atan2(1, math.sqrt(2)), math.rad(45), 0)
			else
				-- Same Part template as Cube; flag off means match standard face-on cube preview.
				renderPart.CFrame = CFrame.new()
			end
		elseif props.MaterialPreviewGeometryType == MaterialPreviewGeometryType.Cube then
			renderPart.CFrame = CFrame.new()
		end
	end, {
		renderPart,
		baseMaterial,
		materialVariantName,
		materialColor,
		props.MaterialPreviewGeometryType,
		props.OverrideTransparency,
		terrainEditorItemUx,
	})

	local componentProps = Dash.join({
		AnchorPoint = props.AnchorPoint,
		BackgroundColor = if not props.Transparent then backgroundColor else nil,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = props.Size,
	}, props.WrapperProps)

	local cornerRadius = prioritize(props.CornerRadius, style.CornerRadius)

	local previewCameraFov = if terrainEditorItemUx
		then getPreviewCameraFieldOfView(props.MaterialPreviewGeometryType)
		else nil
	local previewInitialDistance = if terrainEditorItemUx
		then initialDistance * getPreviewCameraDistanceMultiplier(props.MaterialPreviewGeometryType)
		else initialDistance

	return React.createElement(Pane, componentProps, {
		AssetRenderModel = React.createElement(AssetRenderModel, {
			BackgroundColor3 = backgroundColor,
			CornerRadius = cornerRadius,
			ImageTransparency = props.ImageTransparency,
			DisablePan = true,
			EnableSky = shouldEnableSky,
			RecenterModelOnUpdate = false,
			DisableZoom = props.DisableZoom,
			FieldOfView = previewCameraFov,
			InitialDistance = previewInitialDistance,
			FocusDirection = Vector3.new(0, 0, -1),
			LightDirection = style.LightDirection,
			Ambient = style.AmbientColor,
			LightColor = style.LightColor,
			OnViewModelLoaded = function(thisRenderPart)
				setRenderPart(thisRenderPart)
			end,
			Model = templateInstance,
			RecenterCameraOnUpdate = recenterCameraOnUpdate,
			Size = UDim2.fromScale(1, 1),
			Static = props.Static,
			ref = props.ForwardRef,
		}),

		UICorner = if cornerRadius
			then React.createElement("UICorner", {
				CornerRadius = cornerRadius,
			})
			else nil,
	})
end

return withForwardRef(MaterialPreview)
