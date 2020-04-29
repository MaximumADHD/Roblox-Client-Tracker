local Players = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RobloxGui = CoreGuiService:FindFirstChild("RobloxGui")
local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local Rigging = require(CommonModules:FindFirstChild("RagdollRigging"))
local HumanoidReadyUtil = require(CommonModules:FindFirstChild("HumanoidReadyUtil"))

local localPlayer = Players.LocalPlayer
if not localPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

-- If we never get this I don't care. If it doesen't exist I was going to return immediately anyway.
local DeathTypeValue = RobloxReplicatedStorage:WaitForChild("DeathType", math.huge)
if not DeathTypeValue or DeathTypeValue.Value ~= "Ragdoll" then
	return
end

local remote = RobloxReplicatedStorage:WaitForChild("OnRagdoll", math.huge)
-- If we're missing our RemoteEvent to notify the server that we've started simulating our
-- ragdoll so it can authoritatively replicate the joint removal, don't ragdoll at all.
if not (remote and remote:IsA("RemoteEvent")) then
	return
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
	Rigging.easeJointFriction(character, 0.85)
end

HumanoidReadyUtil.registerHumanoidReady(function(player, character, humanoid)
	local ancestryChangedConn
	local diedConn
	local function disconnect()
		ancestryChangedConn:Disconnect()
		diedConn:Disconnect()
	end

	-- Handle Humanoid death
	diedConn = humanoid.Died:Connect(function()
		-- Assume death is final
		disconnect()
		-- Any character: handle fade out on death
		delay(2.0, function()
			-- fade into the mist...
			Rigging.disableParticleEmittersAndFadeOut(character, 0.4)
		end)
		-- Just my character: initiate ragdoll and do friction easing
		if player == localPlayer then
			onOwnedHumanoidDeath(character, humanoid)
		end
	end)

	-- Handle connection cleanup on remove
	ancestryChangedConn = humanoid.AncestryChanged:Connect(function(_child, parent)
		if not game:IsAncestorOf(parent) then
			disconnect()
		end
	end)
end)