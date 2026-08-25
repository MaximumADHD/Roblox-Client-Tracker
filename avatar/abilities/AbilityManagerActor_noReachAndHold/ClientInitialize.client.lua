local Players = game:GetService("Players")

local AvatarAbilities = require("@rbx/AvatarAbilities")

local actor: Actor = script.Parent :: Actor
assert(actor:IsA("Actor"))

local character = actor.Parent
while not (character and character:IsA("Model")) do
	local _, newParent = actor.AncestryChanged:Wait()
	character = newParent
end
assert(character, "Character must exist")
local charModel: Model = character :: Model

-- Wait until the character is fully linked to a Player
local player = Players:GetPlayerFromCharacter(charModel)
while not player do
	task.wait()
	player = Players:GetPlayerFromCharacter(charModel)
end

-- initializeCharacter wires dispatch + cross-peer messaging internally;
-- this script's only remaining job is to be a descendant of the Actor so that
-- BindToMessage (called transitively from initializeCharacter) is permitted.
local abilityManager = AvatarAbilities.initializeCharacter(charModel)