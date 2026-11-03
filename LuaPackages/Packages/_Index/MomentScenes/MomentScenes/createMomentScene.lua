--[[
	Build one MomentScene from a SceneSpec.

	Looks up spec.type in builders (or an optional override map for tests),
	then calls that builder with args. Does not inspect args.
]]
local Types = require(script.Parent.Types)
local builders = require(script.Parent.builders)

type SceneSpec = Types.SceneSpec
type MomentScene = Types.MomentScene
type BuildersMap = Types.BuildersMap

local function createMomentScene(spec: SceneSpec, buildersOverride: BuildersMap?): MomentScene
	local map = buildersOverride or builders
	local builder = map[spec.type]
	if builder == nil then
		error(`createMomentScene: unknown scene type '{spec.type}'`)
	end
	return builder(spec.args)
end

return createMomentScene
