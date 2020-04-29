local Players = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGuiService:FindFirstChild("RobloxGui")
local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local Rigging = require(CommonModules:FindFirstChild("RagdollRigging"))
local HumanoidReadyUtil = require(CommonModules:FindFirstChild("HumanoidReadyUtil"))

local deathType = game:DefineFastString("DeathTypeValue", "Classic")

-- Replicate this to clients so all clients make the same choice
local DeathTypeValue = Instance.new("StringValue")
DeathTypeValue.Name = "DeathType"
DeathTypeValue.Value = deathType
DeathTypeValue.Parent = RobloxReplicatedStorage

-- Everything below is in support of ragdoll death
if deathType ~= "Ragdoll" then
	return
end

-- { [player: Player] = humanoid: Humanoid, ... }
local riggedPlayerHumanoids = {}

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

HumanoidReadyUtil.registerHumanoidReady(function(player, character, humanoid)
	local ancestryChangedConn
	local function disconnect()
		ancestryChangedConn:Disconnect()
		if riggedPlayerHumanoids[player] == humanoid then
			riggedPlayerHumanoids[player] = nil
		end
	end

	-- Handle connection cleanup on remove
	ancestryChangedConn = humanoid.AncestryChanged:Connect(function(_child, parent)
		if not game:IsAncestorOf(parent) then
			disconnect()
		end
	end)

	-- We will only disable specific joints
	humanoid.BreakJointsOnDeath = false

	-- Server creates ragdoll joints on spawn to allow for seamless transition even if death is
	-- initiated on the client. The Motor6Ds keep them inactive until they are disabled.
	Rigging.createRagdollJoints(character, humanoid.RigType)
	riggedPlayerHumanoids[player] = humanoid
end)