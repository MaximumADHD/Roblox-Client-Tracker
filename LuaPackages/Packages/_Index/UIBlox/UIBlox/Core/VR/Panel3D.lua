local RunService = game:GetService("RunService")

local VRRoot = script.Parent
local Constants = require(VRRoot.Constants)
local usePanel3DRenderStep = require(VRRoot.usePanel3DRenderStep)

local CoreRoot = VRRoot.Parent
local UIBlox = CoreRoot.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local GetEngineFeatureSafe = require(UIBlox.Core.Utility.GetEngineFeatureSafe)
local SurfaceGuiWithAdornee = require(CoreRoot.Spatial.SurfaceGuiWithAdornee)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

-- Storybooks
local DEFAULT_VR_PANEL_SIZE_X = 10
local DEFAULT_VR_PANEL_SIZE_Y = 10
local useCurvedPanel = GetEngineFeatureSafe("CurvedSurfaceGuisEnabled")

type Props = Constants.Panel3DProps

local defaultProps: Props = {
	partSize = Vector2.new(DEFAULT_VR_PANEL_SIZE_X, DEFAULT_VR_PANEL_SIZE_Y),
	virtualScreenSize = Vector2.new(DEFAULT_VR_PANEL_SIZE_X, DEFAULT_VR_PANEL_SIZE_Y),
	offset = CFrame.new(0, 0, 0),
	lerp = false,
	tilt = 0,
	anchoring = Constants.AnchoringTypes.World,
	faceCamera = false,
	panelName = "PanelBase",
	movementUpdateEvent = RunService.RenderStepped,
	vrService = game:GetService("VRService"),
	alwaysOnTop = true,
	parent = workspace,
	hidden = false,
	curvature = 1, -- On by default to obtain anti-aliasing, disable with 0
	zOffset = 0,
}

local function Panel3D(providedProps: Props)
	local props = Object.assign({}, defaultProps, providedProps)

	if UIBloxConfig.refactorPanel3D then
		local adorneeSize, adorneeCFrame = usePanel3DRenderStep(props, nil :: any) -- Remove "nil :: any" with refactorPanel3D

		return React.createElement(SurfaceGuiWithAdornee, {
			name = props.panelName,
			detached = true,
			adorneeProps = {
				Size = adorneeSize,
				CFrame = adorneeCFrame,
				Parent = props.parent,
			},
			surfaceGuiProps = {
				Enabled = not props.hidden,
				CanvasSize = props.virtualScreenSize,
				Shape = if useCurvedPanel and (props.curvature :: number) ~= 0
					then Enum.SurfaceGuiShape.CurvedHorizontally
					else nil,
				HorizontalCurvature = if useCurvedPanel then props.curvature else nil,
				ZOffset = props.zOffset,
			},
		}, props.children)
	else
		local basePart: Constants.Ref<Part?> = React.useRef(nil)
		local surfaceGui: Constants.Ref<SurfaceGui?> = React.useRef(nil)
		local folder: Constants.Ref<Folder?> = React.useRef(nil)

		usePanel3DRenderStep(props, basePart)

		return React.createElement("Folder", {
			ref = folder,
			Archivable = false,
		}, {
			WorkspacePortal = React.createElement(Roact.Portal, {
				target = props.parent,
			}, {
				GUIPart = if props.hidden
					then nil
					else React.createElement("Part", {
						Name = props.panelName .. "_Part",
						ref = basePart,
						Anchored = true,
						CFrame = props.offset * CFrame.Angles(math.rad(props.tilt), 0, 0),
						Size = Vector3.new(props.partSize.X, props.partSize.Y, 0.05),
						Transparency = 1,
						Color = Color3.new(0, 0, 0),
						CanCollide = false,
						CanTouch = false,
					}),
			}),
			AppUI = React.createElement("SurfaceGui", {
				Name = props.panelName .. "_SurfaceGui",
				ref = surfaceGui,
				Adornee = basePart,
				Active = true,
				Enabled = not props.hidden,
				CanvasSize = props.virtualScreenSize,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				LightInfluence = 0,
				children = props.children,
				AlwaysOnTop = props.alwaysOnTop,
				Shape = if useCurvedPanel and (props.curvature :: number) ~= 0
					then Enum.SurfaceGuiShape.CurvedHorizontally
					else nil,
				HorizontalCurvature = if useCurvedPanel then props.curvature else nil,
				ZOffset = props.zOffset,
			}),
		}) :: any
	end
end

return Panel3D
