local AvatarAbilities = require("@rbx/AvatarAbilities")

local actor: Actor = script.Parent :: Actor
assert(actor:IsA("Actor"))
local character: Model = actor.Parent :: Model
assert(character:IsA("Model"))

local abilityManager = AvatarAbilities.initializeCharacter(character)
