--[[
	Static type → builder map. This is the scene "registry."

	Add a new scene kind: Builders/<Type>/init.lua + one entry here.
]]
local Types = require(script.Parent.Types)
local buildAvatarMoment = require(script.Parent.Builders.AvatarMoment)

type SceneBuilder = Types.SceneBuilder
type BuildersMap = Types.BuildersMap

-- Frozen because this table is a module singleton: one consumer mutating it
-- changes scene dispatch for everyone else in the session. Tests hand
-- createMomentScene a replacement map instead of editing this one.
local builders: BuildersMap = table.freeze({
	AvatarMoment = buildAvatarMoment :: SceneBuilder,
})

return builders
