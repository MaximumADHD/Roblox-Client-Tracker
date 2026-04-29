export type Anchoring = "Head" | "Wrist" | "World" | "PanelManaged"
local AnchoringTypes = {
	Head = "Head" :: Anchoring,
	Wrist = "Wrist" :: Anchoring,
	World = "World" :: Anchoring,
	PanelManaged = "PanelManaged" :: Anchoring,
}

export type Ref<T> = { current: T }

export type Panel3DProps = {
	-- Size of the "virtual screen" the GUI thinks it is rendered on
	virtualScreenSize: Vector2,
	-- Size of the screen in the 3D space
	partSize: Vector2,
	-- Is the panel static in the world, following the wrist, following the head or managed by the panel component ?
	anchoring: Anchoring,
	offset: CFrame, -- offset position from anchoring default
	lerp: boolean, -- animate changes in offset
	faceCamera: boolean, -- should the panel turn to always face the camera
	tilt: number,
	children: any,
	panelName: string, -- useful for debugging
	movementUpdateEvent: RBXScriptSignal,
	vrService: VRService,
	alwaysOnTop: boolean, -- should the panel render on top of geometry
	parent: Instance, -- parent object, e.g. folder of parts
	hidden: boolean, -- whether to hide the panel
	curvature: number,
	alignedPanel: any?, -- aligned to another in-game panel
	zOffset: number, -- zOffset of the SurfaceGui
	offsetCallback: ((arg: any) -> Vector3)?, -- callback to tweak final position in each frame
	tiltCallback: ((arg: any) -> CFrame)?, -- callback to tweak final rotation in each frame
	connectPanelManagerFunction: ((arg: any) -> ())?, -- callback to connect to the panel manager function, only used for AnchoringTypes.PanelManaged
	-- Ref to the Part maintained in the Panel3D component
	partRef: Ref<any>?,
}

return {
	AnchoringTypes = AnchoringTypes,
}
