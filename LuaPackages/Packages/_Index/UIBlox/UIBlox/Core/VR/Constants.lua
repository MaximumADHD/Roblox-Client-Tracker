--!strict
export type Anchoring = "Head" | "Wrist" | "World"
local AnchoringTypes = {
	Head = "Head" :: Anchoring,
	Wrist = "Wrist" :: Anchoring,
	World = "World" :: Anchoring,
}

export type Ref<T> = { current: T }

export type Panel3DProps = {
	-- Size of the "virtual screen" the GUI thinks it is rendered on
	virtualScreenSize: Vector2,
	-- Size of the screen in the 3D space
	partSize: Vector2,
	-- Is the panel static in the world, following the wrist, following the head?
	anchoring: Anchoring,
	offset: CFrame, -- offset position from anchoring default
	lerp: boolean, -- animate changes in offset
	faceCamera: boolean, -- should the panel turn to always face the camera
	tilt: number,
	children: any,
	panelName: string, -- useful for debugging
	movementUpdateEvent: RBXScriptSignal,
}

return {
	AnchoringTypes = AnchoringTypes,
}
