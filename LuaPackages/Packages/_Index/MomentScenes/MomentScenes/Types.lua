--[[
	MomentScenes contract types.

	SceneSpec mirrors RCC thumbnail jobs: { type, args }. The dispatcher
	does not inspect args — only the registered builder for `type` does.
]]

export type SceneSpec = {
	type: string,
	args: any,
}

-- What parseSceneAsset produces. Separate from SceneSpec because an authored
-- asset may leave Type out for the job to supply, while createMomentScene needs
-- a concrete type. Resolve `type` to cross from one to the other.
export type ParsedSceneAsset = {
	type: string?,
	args: { [string]: any },
}

export type SceneCapabilities = {
	canUserToggle: boolean,
	hasDuration: boolean,
}

export type Playhead = {
	play: () -> (),
	pause: () -> (),
	dispose: () -> (),
	getIsPlaying: () -> boolean,
	getPosition: () -> number,
	getDuration: () -> number,
	seek: (offset: number) -> (),
}

export type MomentScene = {
	root: Model,
	camera: Camera,
	playhead: Playhead,
	capabilities: SceneCapabilities,
	-- Tears the whole scene down, root included. Hosts call this and nothing
	-- else: destroying root directly leaves the playhead's Heartbeat driving
	-- instances that no longer exist. Recipes set this to playhead.dispose,
	-- which stops the clock before it destroys root, and override it only when
	-- the recipe owns something the playhead does not.
	dispose: () -> (),
}

-- args is `any` because the registry is keyed by a runtime string and each
-- builder takes a different shape, which is a relationship Luau cannot express
-- here. Recipes declare their own args type and validate it themselves.
export type SceneBuilder = (args: any) -> MomentScene

export type BuildersMap = { [string]: SceneBuilder }

return {}
