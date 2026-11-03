--[[
	MomentScenes — the shared scene-building package.

	Hosts (lua-apps Moments feed, rcc-jobs-lua-scripts thumbnail jobs) depend on
	this package to build 3D moment scenes. This file is the entire host-facing
	surface:
	  - createMomentScene — builds one scene from a spec
	  - parseSceneAsset — instance tree → ParsedSceneAsset

	The type → builder map behind createMomentScene stays internal, so a host
	routes by passing a type and never looks a builder up itself.

	Builder authoring helpers (avatarFloorPosition, frameCamera, cameraPath,
	avatarBackground, avatarRig, createPlayhead, loadAsset) are not re-exported
	either. Recipes require them from Builders/_Utils; a host never frames or
	poses anything itself, so exporting them only invites it to.

	README.md carries the worked example for each host. Keeping it in one place
	means the two cannot drift.
]]
local Types = require(script.Types)
local createMomentSceneModule = require(script.createMomentScene)
local parseSceneAsset = require(script.parseSceneAsset)

export type SceneSpec = Types.SceneSpec
export type ParsedSceneAsset = Types.ParsedSceneAsset
export type MomentScene = Types.MomentScene

return {
	createMomentScene = createMomentSceneModule,
	parseSceneAsset = parseSceneAsset,
}
