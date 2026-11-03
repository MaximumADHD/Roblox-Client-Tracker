--[[
	MaterialPreview - a DeveloperFramework-free material preview. It owns a raw
	ViewportFrame (native Ambient/LightColor/LightDirection + a plain Camera) and
	renders a material on a small part. Styling/layout is Foundation.

	Material-agnostic: it takes a base `material`, an optional MaterialVariant
	`variant` name, and an optional tint `color`. Callers resolve their own source
	(e.g. a Terrain material slot) down to those values.

	Static (no pan/zoom). The part + camera + optional sky are built imperatively in
	an effect (the camera needs the part's extents), mirroring AssetRenderModel; the
	ViewportFrame's own visual props are declarative.
]]
local Main = script:FindFirstAncestor("MaterialFramework")
local Foundation = require(Main.Parent.Foundation)
local React = require(Main.Parent.React)

local Constants = require(Main.Constants)
local Enums = require(Main.Enums)
local Types = require(Main.Types)
local viewportCamera = require(Main.Util.viewportCamera)

local View = Foundation.View
local GeometryType = Enums.MaterialPreviewGeometryType

type MaterialPreviewGeometryType = Types.MaterialPreviewGeometryType

-- Edge length shared by the cube/sphere previews (matches MaterialFramework's cube).
local GEOMETRY_SIZE = 0.5 * math.sqrt(2) * 5
local PLANE_THICKNESS = 0.1

-- Corner-toward-camera orientation (camera looks from -Z): pitch by -atan2(1, √2)
-- and yaw 45° so a cube vertex faces the viewer.
local CUBE_CORNER_ON_CFRAME = CFrame.Angles(-math.atan2(1, math.sqrt(2)), math.rad(45), 0)

-- Sensible default viewport lighting (overridable via props). Kept fairly bright
-- so the swatch reads clearly at small sizes.
--selene: allow(roblox_internal_custom_color)
local DEFAULT_AMBIENT = Color3.fromRGB(190, 190, 190)
--selene: allow(roblox_internal_custom_color)
local DEFAULT_LIGHT_COLOR = Color3.fromRGB(255, 255, 255)
local DEFAULT_LIGHT_DIRECTION = Vector3.new(-1, -1, 0.6)

-- Skybox faces so metallic materials have something to reflect. Hardcoded (these
-- come from the DeveloperFramework Stylizer in MaterialFramework; we stay
-- DevFramework-free by inlining them).
local SKYBOX = {
	Bk = "rbxassetid://16358461871",
	Dn = "rbxassetid://16358249286",
	Ft = "rbxassetid://16358251874",
	Lf = "rbxassetid://16358461871",
	Rt = "rbxassetid://16358369477",
	Up = "rbxassetid://16358379810",
}

local function buildPart(geometryType: MaterialPreviewGeometryType?): Part
	local part = Instance.new("Part")
	part.Anchored = true
	part.CanCollide = false
	part.CanQuery = false
	part.CanTouch = false
	-- Instance.new defaults Top to Studs and Bottom to Inlet; those decorations
	-- render in the ViewportFrame and are visible on the corner-on cube and plane.
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = Enum.SurfaceType.Smooth

	if geometryType == GeometryType.Sphere then
		part.Shape = Enum.PartType.Ball
		part.Size = Vector3.new(GEOMETRY_SIZE, GEOMETRY_SIZE, GEOMETRY_SIZE)
	elseif geometryType == GeometryType.Plane then
		part.Size = Vector3.new(GEOMETRY_SIZE, GEOMETRY_SIZE, PLANE_THICKNESS)
	else
		-- Cube and CubeCornerOn share the cube shape; the corner-on orientation is
		-- applied below.
		part.Size = Vector3.new(GEOMETRY_SIZE, GEOMETRY_SIZE, GEOMETRY_SIZE)
	end

	if geometryType == GeometryType.CubeCornerOn then
		part.CFrame = CUBE_CORNER_ON_CFRAME
	else
		part.CFrame = CFrame.identity
	end

	return part
end

export type Props = {
	-- The material to preview: a base material, an optional MaterialVariant name,
	-- and an optional tint (defaults to white).
	material: Enum.Material,
	variant: string?,
	color: Color3?,
	geometryType: MaterialPreviewGeometryType?,
	Size: UDim2?,
	Position: UDim2?,
	AnchorPoint: Vector2?,
	LayoutOrder: number?,
	cornerRadius: UDim?,
	backgroundColor: Color3?,
	ambientColor: Color3?,
	lightColor: Color3?,
	lightDirection: Vector3?,
	-- Base camera distance; defaults to the part's extents magnitude.
	initialDistance: number?,
	testId: string?,
}

local function MaterialPreview(props: Props)
	local material, variant, color = props.material, props.variant, props.color
	-- Annotated: Luau widens the string-singleton union to `string` on a field read.
	local geometryType: MaterialPreviewGeometryType? = props.geometryType
	local initialDistance = props.initialDistance
	local viewportRef = React.useRef(nil :: ViewportFrame?)
	local tokens = Foundation.Hooks.useTokens()

	-- Build the material'd part + framed camera (+ optional sky) whenever the
	-- material or geometry changes. Imperative because the camera framing needs the
	-- part's extents once it exists.
	React.useEffect(
		function()
			local viewport = viewportRef.current
			if viewport == nil then
				return
			end

			local part = buildPart(geometryType)
			part.Material = material
			part.MaterialVariant = variant or ""
			part.Color = color or Constants.DEFAULT_COLOR

			local framing = viewportCamera.frameCamera(part.Size, geometryType, initialDistance)
			local camera = Instance.new("Camera")
			camera.FieldOfView = framing.fieldOfView
			camera.CFrame = framing.cframe
			viewport.CurrentCamera = camera

			part.Parent = viewport

			-- Metallic base materials (with no variant texture) need a sky to reflect.
			local sky: Sky? = nil
			if Constants.BASE_MATERIALS_WITH_METALNESS[material] and (variant == nil or variant == "") then
				local skyInstance = Instance.new("Sky")
				skyInstance.SkyboxBk = SKYBOX.Bk
				skyInstance.SkyboxDn = SKYBOX.Dn
				skyInstance.SkyboxFt = SKYBOX.Ft
				skyInstance.SkyboxLf = SKYBOX.Lf
				skyInstance.SkyboxRt = SKYBOX.Rt
				skyInstance.SkyboxUp = SKYBOX.Up
				skyInstance.Parent = viewport
				sky = skyInstance
			end

			return function()
				part:Destroy()
				camera:Destroy()
				if sky then
					sky:Destroy()
				end
				if viewport.CurrentCamera == camera then
					viewport.CurrentCamera = nil
				end
			end
		end,
		-- Substitute the effect's own defaults so no dependency is nil: a nil hole makes
		-- Luau's `#` (border search) truncate the array, so React would stop comparing
		-- deps past the hole and skip re-running on later prop changes.
		{
			material,
			variant or "",
			color or Constants.DEFAULT_COLOR,
			geometryType or GeometryType.Cube,
			initialDistance or 0,
		} :: { unknown }
	)

	return React.createElement(View, {
		Size = props.Size or UDim2.fromOffset(tokens.Size.Size_600, tokens.Size.Size_600),
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		LayoutOrder = props.LayoutOrder,
		tag = "clip",
		testId = props.testId,
	}, {
		Viewport = React.createElement("ViewportFrame", {
			ref = viewportRef,
			-- Mirrors Foundation's testId tag format so tests can query the viewport.
			[React.Tag] = "data-testid=MaterialPreviewViewport",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = props.backgroundColor or tokens.Color.Surface.Surface_300.Color3,
			BackgroundTransparency = 0,
			-- Opaque background would otherwise show the default 1px border around the swatch.
			BorderSizePixel = 0,
			Ambient = props.ambientColor or DEFAULT_AMBIENT,
			LightColor = props.lightColor or DEFAULT_LIGHT_COLOR,
			LightDirection = props.lightDirection or DEFAULT_LIGHT_DIRECTION,
		}, {
			UICorner = if props.cornerRadius
				then React.createElement("UICorner", {
					CornerRadius = props.cornerRadius,
				})
				else nil,
		}),
	})
end

return MaterialPreview
