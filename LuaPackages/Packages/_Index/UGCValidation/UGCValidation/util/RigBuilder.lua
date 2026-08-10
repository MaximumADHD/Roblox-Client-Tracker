local Players = game:GetService("Players")

local RigBuilder = {}

function RigBuilder.createDefaultCharacter(removeMotors: boolean): Model
	local defaultCharacter

	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		defaultCharacter = (Players :: any):CreateHumanoidModelFromDescriptionAsync(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	else
		defaultCharacter = (game.Players :: any):CreateHumanoidModelFromDescription(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	end

	for _, desc in defaultCharacter:GetDescendants() do
		if desc:IsA("Decal") then
			desc.Transparency = 1
		elseif desc:IsA("MeshPart") then
			desc.Transparency = 0
			desc.CanCollide = false
		elseif desc:IsA("Motor6D") then
			if removeMotors then
				desc:Destroy()
			end
		end
	end
	return defaultCharacter
end

return RigBuilder
