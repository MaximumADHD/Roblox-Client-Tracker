local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AvatarUnificationFolder = ReplicatedStorage:WaitForChild("AvatarUnification")
local AdaptCharacterPropertiesAndPhysics =
	require(AvatarUnificationFolder:WaitForChild("AdaptCharacterPropertiesAndPhysics"))
local character = script.Parent
repeat
	task.wait()
until character:IsDescendantOf(workspace)
AdaptCharacterPropertiesAndPhysics.adapt(character, AdaptCharacterPropertiesAndPhysics.ADAPTER_MODES.ALL)
