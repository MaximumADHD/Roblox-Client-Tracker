local AvatarAbilities = require("@rbx/AvatarAbilities")

-- Libraries with runServerInitialize do this setup themselves.
if AvatarAbilities.runServerInitialize then
	AvatarAbilities.runServerInitialize(script)
	return
end

--------------------------------------------------------------------------------
-- Everything below is the fallback for libraries without runServerInitialize. Remove it
-- once every @rbx/AvatarAbilities asset in use has it.
--------------------------------------------------------------------------------

local actor: Actor = script.Parent :: Actor
assert(actor:IsA("Actor"))
local character: Model = actor.Parent :: Model
assert(character:IsA("Model"))

-- initializeCharacter wires dispatch internally; this script's only
-- remaining job is to be a descendant of the Actor so that BindToMessage
-- (called transitively from initializeCharacter) is permitted.
AvatarAbilities.initializeCharacter(character)
