--!nonstrict
local Players = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local StarterPlayer = game:GetService("StarterPlayer")

local RobloxGui = CoreGuiService:FindFirstChild("RobloxGui")
local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local Rigging = require(CommonModules:FindFirstChild("RagdollRigging"))
local HumanoidReadyUtil = require(CommonModules:FindFirstChild("HumanoidReadyUtil"))

local avatarJointUpgrade = game:GetEngineFeature("AvatarJointUpgradeFeature")

local localPlayer = Players.LocalPlayer
if not localPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

local DeathTypeValue = RobloxReplicatedStorage:WaitForChild("DeathType", math.huge)

if not DeathTypeValue or (not avatarJointUpgrade and (DeathTypeValue.Value :: any) ~= "Ragdoll") then
	return -- Something's wrong. Don't bother locally modifying the character
end

local remote
if not avatarJointUpgrade then
	remote = RobloxReplicatedStorage:WaitForChild("OnRagdoll", math.huge)
	if not (remote and remote:IsA("RemoteEvent")) then
		return -- Something's wrong. Don't bother locally modifying the character
	end
end

local function onOwnedHumanoidDeath(character, humanoid)
	-- We first disable the motors on the network owner (the player that owns this character).
	--
	-- This way there is no visible round trip hitch. By the time the server receives the joint
	-- break physics data for the child parts should already be available. Seamless transition.
	--
	-- If we initiated ragdoll by disabling joints on the server there's a visible hitch while the
	-- server waits at least a full round trip time for the network owner to receive the joint
	-- removal, start simulating the ragdoll, and replicate physics data. Meanwhile the other body
	-- parts would be frozen in air on the server and other clients until physics data arives from
	-- the owner. The ragdolled player wouldn't see it, but other players would.
	--
	-- We also specifically do not disable the root joint on the client so we can maintain a
	-- consistent mechanism and network ownership unit root. If we did disable the root joint we'd
	-- be creating a new, seperate network ownership unit that we would have to wait for the server
	-- to assign us network ownership of before we would start simulating and replicating physics
	-- data for it, creating an additional round trip hitch on our end for our own character.

	if avatarJointUpgrade then
		if DeathTypeValue.Value ~= "Scriptable" then
			Rigging.disableMotors(character, humanoid.RigType)
			if DeathTypeValue.Value == "Classic" then -- ClassicBreakApart
				Rigging.removeRagdollJoints(character)
			end
		end
	else
		-- With Moto6D's we needed to manually apply the Animator velocity.
		-- This will no longer be necessary with AnimationConstraints (CLI-75079).

		local motors = Rigging.disableMotors(character, humanoid.RigType)

		-- Apply velocities from animation to the child parts to mantain visual momentum.
		--
		-- This should be done on the network owner's side just after disabling the kinematic joint so
		-- the child parts are split off as seperate dynamic bodies. For consistent animation times and
		-- visual momentum we want to do this on the machine that controls animation state for the
		-- character and will be simulating the ragdoll, in this case the client.
		--
		-- It's also important that this is called *before* any animations are canceled or changed after
		-- death! Otherwise there will be no animations to get velocities from or the velocities won't
		-- be consistent!
		local animator = humanoid:FindFirstChildWhichIsA("Animator")
		if animator then
			animator:ApplyJointVelocities(motors)
		end
		
		-- Tell the server that we started simulating our ragdoll
		remote:FireServer(humanoid)

		-- stiff shock phase...
		wait(0.1)

		-- gradually give up...
		Rigging.easeJointFriction_OLD(character, 0.85)
	end
end

HumanoidReadyUtil.registerHumanoidReady(function(player, character, humanoid)
	local characterRemovingConn
	local diedConn
	local function disconnect()
		characterRemovingConn:Disconnect()
		diedConn:Disconnect()
	end

	-- Handle Humanoid death
	diedConn = humanoid.Died:Connect(function()
		-- Assume death is final
		disconnect()
		-- Any character: handle fade out on death
		if DeathTypeValue.Value == "Ragdoll" then -- NonGraphic death
			delay(2.0, function()
				-- fade into the mist...
				Rigging.disableParticleEmittersAndFadeOut(character, 0.4)
			end)
		end
		-- Just my character: initiate local death sequence
		if player == localPlayer then
			onOwnedHumanoidDeath(character, humanoid)
		end
	end)

	-- Handle connection cleanup on remove
	characterRemovingConn = player.CharacterRemoving:Connect(function(removedCharacter)
		if removedCharacter == character then
			disconnect()
		end
	end)
end)
