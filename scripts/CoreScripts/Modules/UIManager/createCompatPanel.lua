local CorePackages = game:GetService("CorePackages")
local useCurvedPanel = game:GetEngineFeature("CurvedSurfaceGuisEnabled")
local CoreGui = game:GetService("CoreGui")
local UIManagerRoot = script.Parent
local Constants = require(UIManagerRoot.Constants)
local SpatialUIType = Constants.SpatialUIType
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local VRService = game:GetService("VRService")

local defaultPanelCompatProps: Constants.PanelCompatProps = {
	spatialPanelProps = nil,
	screenGuiProps = nil,
	type = SpatialUIType.ScreenUI,
}

local defaultScreenGuiProps: Constants.ScreenGuiProps = {
	Name = "ScreenGui",
	ResetOnSpawn = false,
	DisplayOrder = 0,
	ZIndexBehavior = nil,
}

local defaultSpatialPanelProps: Constants.SpatialUIProps = {
	name = "",
	partSize = Constants.DEFAULT_VR_PANEL_SIZE,
	virtualScreenSize = Constants.DEFAULT_VR_PANEL_SIZE * Constants.VR_PANEL_RESOLUTION_MULTIPLIER,
	cframe = CFrame.new(0, 0, 0),
	alwaysOnTop = true,
	hidden = false,
	curvature = 1, -- On by default to obtain anti-aliasing, disable with 0
	transparency = 1,
}

local function createPanelPart(spatialPanelProps: Constants.SpatialUIProps)
	local part = Instance.new("Part")
	part.Parent = workspace.CurrentCamera
	part.Name = spatialPanelProps.name .. "_Part"
	part.CFrame = spatialPanelProps.cframe :: CFrame
	part.CastShadow = false
	part.Size = Vector3.new(spatialPanelProps.partSize.X, spatialPanelProps.partSize.Y, 0.002)
	part.Transparency = if spatialPanelProps.transparency then spatialPanelProps.transparency else 1
	part.Color = Color3.new(0, 0, 0)
	part.CanCollide = false
	part.CanTouch = false
	part.Anchored = true
	return part
end

local function createPanel(providedProps: Constants.PanelCompatProps): Constants.CompatPanel?
	local props: Constants.PanelCompatProps = Object.assign({}, defaultPanelCompatProps, providedProps)
	if props.type == SpatialUIType.SpatialUIPartOnly then
		local spatialPanelProps = Object.assign({}, defaultSpatialPanelProps, props.spatialPanelProps)
		local panelPart = createPanelPart(spatialPanelProps)
		return {
			type = props.type,
			panelObject = panelPart,
		} :: Constants.CompatPanel
	elseif props.type == SpatialUIType.SpatialUI then
		local spatialPanelProps = Object.assign({}, defaultSpatialPanelProps, props.spatialPanelProps)
		local panelPart = createPanelPart(spatialPanelProps)
		local surfaceGui = Instance.new("SurfaceGui", CoreGui)
		surfaceGui.Name = spatialPanelProps.name .. "_SurfaceGui"
		surfaceGui.Enabled = not spatialPanelProps.hidden
		surfaceGui.CanvasSize = spatialPanelProps.virtualScreenSize
		surfaceGui.AlwaysOnTop = spatialPanelProps.alwaysOnTop
		surfaceGui.Shape = if useCurvedPanel and (spatialPanelProps.curvature :: number) ~= 0
			then Enum.SurfaceGuiShape.CurvedHorizontally
			else Enum.SurfaceGuiShape.Flat
		surfaceGui.HorizontalCurvature = if useCurvedPanel then spatialPanelProps.curvature else 0
		surfaceGui.Active = true
		surfaceGui.Adornee = panelPart
		surfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		surfaceGui.LightInfluence = 0
		surfaceGui.ZOffset = 0
		surfaceGui.Face = Enum.NormalId.Back
		return {
			type = props.type,
			panelObject = surfaceGui,
		} :: Constants.CompatPanel
	elseif props.type == SpatialUIType.ScreenUI then
		local screenGuiProps: Constants.ScreenGuiProps = Object.assign({}, defaultScreenGuiProps, props.screenGuiProps)
		local screenGui = Instance.new("ScreenGui", CoreGui)
		screenGui.Name = screenGuiProps.Name
		screenGui.ResetOnSpawn = screenGuiProps.ResetOnSpawn
		screenGui.DisplayOrder = screenGuiProps.DisplayOrder
		if screenGuiProps.ZIndexBehavior then
			screenGui.ZIndexBehavior = screenGuiProps.ZIndexBehavior
		end
		return {
			type = props.type,
			panelObject = screenGui,
		} :: Constants.CompatPanel
	else
		print("Invalid panel type: " .. tostring(props.type))
		return nil
	end
end

-- Util function for creating SpatialUI compatible panels to be used by UIManager

return function(props: Constants.PanelCreationProps): Constants.PanelStruct?
	if VRService.VREnabled then
		local compatPanel: Constants.CompatPanel? = createPanel(Constants.COMPAT_PANEL_PROPS_MAP[props.panelType])
		if compatPanel == nil then
			return nil
		end
		return {
			panelObject = compatPanel.panelObject,
			uiType = compatPanel.type,
			panelType = props.panelType,
			panelPositionProps = Constants.SPATIAL_PANEL_POSITION_PROPS_MAP[props.panelType],
			headScale = 1,
		} :: Constants.PanelStruct
	else
		local compatPanel: Constants.CompatPanel? = createPanel({
			type = SpatialUIType.ScreenUI,
			screenGuiProps = props.screenGuiProps,
		})
		if compatPanel == nil then
			return nil
		end
		return {
			panelObject = compatPanel.panelObject,
			uiType = compatPanel.type,
			panelType = props.panelType,
			panelPositionProps = nil,
		} :: Constants.PanelStruct
	end
end
