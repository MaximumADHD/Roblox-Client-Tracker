--[[
	This package is a flagged toggle between the old and new versions of Roact.

	It depends on both old and new versions of Roact explicitly, and then
	re-exports one or the other based on the flag state.

	In CI, this will make sure that we will always have only one version of
	Roact being used, both directly and transitively.

	See https://swarm.simulpong.com/reviews/329855 for more details.
]]
local DEFAULT_VALUE = false

-- Certain workflows (UIBlox in particular) need to depend on the Roact version
-- behind the flag, but can't do so in an environment that doesn't allow flags;
-- for this scenario, we pcall the flag and fall back on a default. In
-- CorePackages, however, there will be no trouble reading the flag.
local success, CoreUseRoact1_x = pcall(function()
	return game:DefineFastFlag("CoreUseRoact1_x", false)
end)

if not success then
	CoreUseRoact1_x = DEFAULT_VALUE
end

if CoreUseRoact1_x then
	return require(script.Parent.Roact1_x)
else
	return require(script.Parent.Roact0_2)
end