local Players = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local StarterPlayer = game:GetService("StarterPlayer")

local RobloxGui = CoreGuiService:FindFirstChild("RobloxGui")
local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local avatarJointUpgrade = game:GetEngineFeature("AvatarJointUpgradeFeature")
local avatarJointUpgradeDefaultOn = game:GetEngineFeature("AvatarJointUpgradeDefaultOnFeature")
local function jointUpgradeActive()
	if avatarJointUpgrade then
		if avatarJointUpgradeDefaultOn then
			return StarterPlayer.AvatarJointUpgrade ~= Enum.AvatarJointUpgrade.Disabled
		else
			return StarterPlayer.AvatarJointUpgrade == Enum.AvatarJointUpgrade.Enabled
		end
	end
	return false
end

local Rigging = require(CommonModules:FindFirstChild("RagdollRigging"))
local HumanoidReadyUtil = require(CommonModules:FindFirstChild("HumanoidReadyUtil"))

local function getDefaultDeathType()
	local deathStyleMap = {
		[Enum.DeathStyle.Default] = "RagdollRealistic",
		[Enum.DeathStyle.ClassicBreakApart] = "Classic",
		[Enum.DeathStyle.NonGraphic] = "Ragdoll",
		[Enum.DeathStyle.Scriptable] = "Scriptable",
	}
	local deathType = "Classic"
	if jointUpgradeActive() and game:GetEngineFeature("EnableDeathStyleFeature") then
		deathType = deathStyleMap[StarterPlayer.DeathStyle]
	end

	if not game:GetEngineFeature("PolicyInfoForServerRobloxOnlyAsyncEnabled") then
		return game:DefineFastString("DeathTypeValue", deathType)
	end

	local PolicyService = game:GetService("PolicyService")
	local policies = PolicyService:GetPolicyInfoForServerRobloxOnlyAsync()

	local policyServiceDefaultAvatarDeathType = policies["DefaultAvatarDeathType"]
	if policyServiceDefaultAvatarDeathType == nil then
		error("PolicyService did not have death type policy")
	end
	if jointUpgradeActive() then
		if policyServiceDefaultAvatarDeathType == "Ragdoll" and StarterPlayer.DeathStyle ~= Enum.DeathStyle.Scriptable then
			-- Policy service returns either "Classic" or "Ragdoll". "Ragdoll" implies we cannot show a graphic death (no dismemberment, no high-fidelity realism).
			-- So we'll use whatever DeathStyle the developer set, but override it to be NonGraphic when necessary.
			-- UNLESS the dev set it to Scriptable, in which case we don't want to interfere with whatever they're doing.
			deathType = deathStyleMap[Enum.DeathStyle.NonGraphic]
		end

		return deathType
	else
		return policyServiceDefaultAvatarDeathType
	end
end

local deathType = getDefaultDeathType()

-- Replicate this to clients so all clients make the same choice
local DeathTypeValue = Instance.new("StringValue")
DeathTypeValue.Name = "DeathType"
DeathTypeValue.Value = deathType
DeathTypeValue.Parent = RobloxReplicatedStorage

if avatarJointUpgrade then
	StarterPlayer:GetPropertyChangedSignal("AvatarJointUpgrade"):Connect(function()
		deathType = getDefaultDeathType()
		DeathTypeValue.Value = deathType
	end)
	StarterPlayer:GetPropertyChangedSignal("DeathStyle"):Connect(function()
		deathType = getDefaultDeathType()
		DeathTypeValue.Value = deathType
	end)
end

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
	if not jointUpgradeActive() and (deathType :: any) ~= "Ragdoll" then
		return
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

	-- Server creates ragdoll joints on spawn to allow for seamless transition even if death is
	-- initiated on the client. The Motor6Ds keep them inactive until they are disabled.
	Rigging.createRagdollJoints(character, humanoid.RigType, jointUpgradeActive())
	riggedPlayerHumanoids[player] = humanoid

	if avatarJointUpgrade then
		humanoid.Died:Connect(function()
			-- One time, one way.
			riggedPlayerHumanoids[player] = nil

			local character = humanoid.Parent
			if jointUpgradeActive() then
				if deathType == "Scriptable" then
					return
				end
				if character and character:IsA("Model") then
					Rigging.disableMotors(character, humanoid.RigType)
					if deathType == "Classic" then
						Rigging.removeRagdollJoints(character) -- dismember for ClassicBreakapart
					elseif deathType == "Ragdoll" then -- NonGraphic DeathStyle
						Rigging.easeNongraphicJointFriction(character, 0.85)
					end
				end
			else
				if character and character:IsA("Model") then
					Rigging.disableMotors(character, humanoid.RigType)
				end
			end
		end)
	end
end)
