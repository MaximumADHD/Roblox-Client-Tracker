local CoreGuiService = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local StarterPlayer = game:GetService("StarterPlayer")

local RobloxGui = CoreGuiService:FindFirstChild("RobloxGui")
local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local avatarJointUpgrade = game:GetEngineFeature("AvatarJointUpgradeFeature")
local avatarJointUpgradeDefaultOn = game:GetEngineFeature("AvatarJointUpgradeDefaultOnFeature")
local function jointUpgradeActive()
	-- The joint upgrade should actually depend on the rollout state on StarterPlayer.AvatarJointUpgrade.
	-- However, I want to switch that property type from Enum.AvatarJointUpgrade to the generic Enum.RolloutState
	-- AND the lua implementation of the AJU is being deprecated in favor of the C++ implementation (pull/89934).
	-- I don't want to completely remove the lua implementation until the C++ implementation yet, so to change the
	-- rollout property, we'll temporarily use some simpler logic for the lua implementation.
	return avatarJointUpgrade and avatarJointUpgradeDefaultOn
end

local Rigging = require(CommonModules:FindFirstChild("RagdollRigging"))
local HumanoidReadyUtil = require(CommonModules:FindFirstChild("HumanoidReadyUtil"))

local function getDefaultDeathType()
	local deathType = "Classic"

	if not game:GetEngineFeature("PolicyInfoForServerRobloxOnlyAsyncEnabled") then
		return game:DefineFastString("DeathTypeValue", deathType)
	end

	local PolicyService = game:GetService("PolicyService")
	local policies = PolicyService:GetPolicyInfoForServerRobloxOnlyAsync()

	local policyServiceDefaultAvatarDeathType = policies["DefaultAvatarDeathType"]
	if policyServiceDefaultAvatarDeathType == nil then
		error("PolicyService did not have death type policy")
	end
	return policyServiceDefaultAvatarDeathType
end

local deathType = getDefaultDeathType()

-- Replicate this to clients so all clients make the same choice
local DeathTypeValue = Instance.new("StringValue")
DeathTypeValue.Name = "DeathType"
DeathTypeValue.Value = deathType
DeathTypeValue.Parent = RobloxReplicatedStorage

if not avatarJointUpgrade and (deathType :: any) ~= "Ragdoll" then
	return -- Previously everything below was in support of ragdoll death. But now we'll want to always add ragdoll joints.
end

-- { [player: Player] = humanoid: Humanoid, ... }
local riggedPlayerHumanoids = {}

if not avatarJointUpgrade then
	-- Create remote event for the client to notify the server that it went ragdoll. The server
	-- never disables joints authoritatively until the client acknowledges that it has already
	-- broken it's own joints non-authoritatively, started simulating the ragdoll locally, and
	-- should already be sending physics data.
	local remote = Instance.new("RemoteEvent")
	remote.Name = "OnRagdoll"
	remote.OnServerEvent:Connect(function(remotePlayer, humanoid)
		if humanoid and riggedPlayerHumanoids[remotePlayer] == humanoid then
			local character = humanoid and humanoid.Parent
			if character and character:IsA("Model") then
				Rigging.disableMotors(character, humanoid.RigType)
			end
			-- One time, one way.
			riggedPlayerHumanoids[remotePlayer] = nil
		end
	end)
	remote.Parent = RobloxReplicatedStorage
end

HumanoidReadyUtil.registerHumanoidReady(function(player, character, humanoid: Humanoid)
	if avatarJointUpgrade then
		if humanoid.RigType == Enum.HumanoidRigType.R15 and jointUpgradeActive() then
			-- joint upgrade is active on an R15. R6 is not supported
			Rigging.createRagdollJoints(character, humanoid.RigType, jointUpgradeActive())
		elseif deathType == "Ragdoll" then
			-- need to ragdoll for policy. Avatar is either R6 or joint upgrade is off, so don't create AnimationConstraints
			Rigging.createRagdollJoints(character, humanoid.RigType, false)
		end
	end
	if (deathType :: any) ~= "Ragdoll" then
		return -- Avatar will simply break joints on death, no need to run any further logic on death
	end
	local characterRemovingConn
	local function disconnect()
		characterRemovingConn:Disconnect()
		if riggedPlayerHumanoids[player] == humanoid then
			riggedPlayerHumanoids[player] = nil
		end
	end

	-- Handle connection cleanup on remove
	characterRemovingConn = player.CharacterRemoving:Connect(function(removedCharacter)
		if removedCharacter == character then
			disconnect()
		end
	end)

	-- We will only disable specific joints
	humanoid.BreakJointsOnDeath = false

	if not avatarJointUpgrade then
		-- Server creates ragdoll joints on spawn to allow for seamless transition even if death is
		-- initiated on the client. The Motor6Ds keep them inactive until they are disabled.
		Rigging.createRagdollJoints(character, humanoid.RigType, jointUpgradeActive())
	end
	riggedPlayerHumanoids[player] = humanoid

	if avatarJointUpgrade then
		humanoid.Died:Connect(function()
			-- One time, one way.
			riggedPlayerHumanoids[player] = nil

			local character = humanoid.Parent
			if character and character:IsA("Model") then
				Rigging.disableMotors(character, humanoid.RigType)
				if jointUpgradeActive() then
					Rigging.easeNongraphicJointFriction(character, 0.85)
				end
			end
		end)
	end
end)
