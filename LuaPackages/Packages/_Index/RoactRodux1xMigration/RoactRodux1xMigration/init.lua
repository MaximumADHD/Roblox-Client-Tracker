--[[
	This package is a flagged toggle between the old and new versions of
	RoactRodux. Upgrading Roact to 1.x needs a tandem upgrade of RoactRodux, so
	it must behave according to the same flag

	This package depends on both old and new versions of RoactRodux explicitly,
	and then re-exports one or the other based on the flag state.

	In CI, this will make sure that we will always have only one version of
	RoactRodux being used, both directly and transitively.

	See https://swarm.simulpong.com/reviews/329855 for more details.
]]
local CoreUseRoact1_x = game:DefineFastFlag("CoreUseRoact1_x", false)

if CoreUseRoact1_x then
	return require(script.Parent.RoactRoduxNew)
else
	return require(script.Parent.RoactRoduxOld)
end