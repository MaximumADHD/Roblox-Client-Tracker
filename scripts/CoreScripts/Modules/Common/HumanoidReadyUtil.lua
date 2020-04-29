local Players = game:GetService("Players")

 -- wait for the first of the passed signals to fire
 local function waitForFirst(...)
	local shunt = Instance.new("BindableEvent")
	local slots = {...}

	local function fire(...)
		for i = 1, #slots do
			slots[i]:Disconnect()
		end

		return shunt:Fire(...)
	end

	for i = 1, #slots do
		slots[i] = slots[i]:Connect(fire)
	end

	return shunt.Event:Wait()
end

local HumanoidReadyUtil = {}

-- registers a humanoidReady(player: Player, character: Model, humanoid: Humanoid) callback and
-- invokes it immediately for existing player character humanoids.
--
-- Unregistering is not currently supported.
--
-- This can't just be an event because we need to invoke it immediately for existing eligable player
-- character humanoids, but would not for any existing callbacks.
--
-- For now this is about sharing code, not sharing event connections. Supporting this would really
-- complicate the code and we don't currently have multiple systems that could benefit from this
-- sharing that would all be active on a single client.
function HumanoidReadyUtil.registerHumanoidReady(humanoidReady)

	local function characterAdded(player, character)
		-- Avoiding memory leaks in the face of Character/Humanoid/RootPart lifetime has a few complications:
		-- * character deparenting is a Remove instead of a Destroy, so signals are not cleaned up automatically.
		-- ** must use a waitForFirst on everything and listen for hierarchy changes.
		-- * the character might not be in the dm by the time CharacterAdded fires
		-- ** constantly check consistency with player.Character and abort if CharacterAdded is fired again
		-- * Humanoid may not exist immediately, and by the time it's inserted the character might be deparented.
		-- * RootPart probably won't exist immediately.
		-- ** by the time RootPart is inserted and Humanoid.RootPart is set, the character or the humanoid might be deparented.

		if not character.Parent then
			waitForFirst(character.AncestryChanged, player.CharacterAdded)
		end

		if player.Character ~= character or not character.Parent then
			return
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		while character:IsDescendantOf(game) and not humanoid do
			waitForFirst(character.ChildAdded, character.AncestryChanged, player.CharacterAdded)
			humanoid = character:FindFirstChildOfClass("Humanoid")
		end

		if player.Character ~= character or not character:IsDescendantOf(game) then
			return
		end

		-- must rely on HumanoidRootPart naming because Humanoid.RootPart does not fire changed signals
		local rootPart = character:FindFirstChild("HumanoidRootPart")
		while character:IsDescendantOf(game) and not rootPart do
			waitForFirst(character.ChildAdded, character.AncestryChanged, humanoid.AncestryChanged, player.CharacterAdded)
			rootPart = character:FindFirstChild("HumanoidRootPart")
		end

		if rootPart and humanoid:IsDescendantOf(game) and character:IsDescendantOf(game) and player.Character == character then
			humanoidReady(player, character, humanoid)
		end
	end

	local function playerAdded(player)
		local characterAddedConn = player.CharacterAdded:Connect(function(character)
			characterAdded(player, character)
		end)

		-- Players are Removed, not Destroyed, by replication so we must clean up
		local ancestryChangedConn
		ancestryChangedConn = player.AncestryChanged:Connect(function(_child, parent)
			if not game:IsAncestorOf(parent) then
				ancestryChangedConn:Disconnect()
				characterAddedConn:Disconnect()
			end
		end)

		local character = player.Character
		if character then
			characterAdded(player, character)
		end
	end

	-- Track all players (including local player on the client)
	Players.PlayerAdded:Connect(playerAdded)
	for _, player in pairs(Players:GetPlayers()) do
		playerAdded(player)
	end
end

return HumanoidReadyUtil