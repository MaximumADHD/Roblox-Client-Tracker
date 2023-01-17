--!nonstrict
local FFlagVRAvatarGesturesUsePhysicalHands = game:DefineFastFlag("VRAvatarGesturesUsePhysicalHands", false)

-- receive hand/head location from clients
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

-- Used to stop held objects from colliding with players
local PhysicsService = game:GetService("PhysicsService")
local Players = game:GetService("Players")

local playerCollisionGroupName = "AvatarGesturesPlayers"
local heldObjectsCollisionGroupName = "AvatarGesturesHeldObjects"

PhysicsService:RegisterCollisionGroup(playerCollisionGroupName)
PhysicsService:RegisterCollisionGroup(heldObjectsCollisionGroupName)

PhysicsService:CollisionGroupSetCollidable(playerCollisionGroupName, heldObjectsCollisionGroupName, false)

local previousCollisionGroups = {}

local function setPlayerCollisionGroup(object: BasePart)
	if object:IsA("BasePart") then
		previousCollisionGroups[object] = object.CollisionGroup
		object.CollisionGroup = playerCollisionGroupName
	end
end

local function setCollisionGroupRecursive(object)
	setPlayerCollisionGroup(object)

	for _, child in ipairs(object:GetChildren()) do
		setCollisionGroupRecursive(child)
	end
end

local function resetCollisionGroup(object)
	local previousCollisionGroupName = previousCollisionGroups[object]
	if not previousCollisionGroupName then return end

	object.CollisionGroup = previousCollisionGroupName
	previousCollisionGroups[object] = nil
end

local function onCharacterAdded(character)
	setCollisionGroupRecursive(character)

	character.DescendantAdded:Connect(setPlayerCollisionGroup)
	character.DescendantRemoving:Connect(resetCollisionGroup)
end

local function onPlayerAdded(player)
	player.CharacterAdded:Connect(onCharacterAdded)
end

Players.PlayerAdded:Connect(onPlayerAdded)

local RemoteEventHead = Instance.new("RemoteEvent")
RemoteEventHead.Name = "AvatarGesturesHead"
RemoteEventHead.Parent = RobloxReplicatedStorage

local RemoteEventLeftHand = Instance.new("RemoteEvent")
RemoteEventLeftHand.Name = "AvatarGesturesLeftHand"
RemoteEventLeftHand.Parent = RobloxReplicatedStorage

local RemoteEventRightHand = Instance.new("RemoteEvent")
RemoteEventRightHand.Name = "AvatarGesturesRightHand"
RemoteEventRightHand.Parent = RobloxReplicatedStorage

-- receive the desired head rotation from the client
RemoteEventHead.OnServerEvent:Connect(function(player, head)
	-- replicate the desired cframe directly because disabling the neck transform
	-- can kill the character and writing the transform on the server will get overwritten by
	-- client animator
	local headCFrame = player:FindFirstChild("HeadCFrame") :: CFrameValue
	if headCFrame == nil then
		headCFrame = Instance.new("CFrameValue")
		headCFrame.Name = "HeadCFrame"
		headCFrame.Parent = player
	end
	headCFrame.Value = head
end)

-- return the function to update the hand position when given input from the player
function getHandUpdater(handName: string)

	-- the cframe passed from the client should be the cframe of the hand in terms of the
	-- humanoidrootpart of the character
	return function(player: Player, cframe)
		-- if using physical hands, replicate a collider basepart
		if FFlagVRAvatarGesturesUsePhysicalHands then
			if player.Character and player.Character.Parent and player.Character:FindFirstChild(handName) then
				local hand = player.Character:FindFirstChild(handName) :: MeshPart

				local collider = hand:FindFirstChild("Collider")
				local orientation : AlignOrientation
				local position : AlignPosition
				-- first event received, create collider
				if not collider then
					local newCollider = Instance.new("Part")
					newCollider.Transparency = 1
					newCollider.Size = hand.Size
					newCollider.Name = "Collider"

					local attachment = Instance.new("Attachment")
					attachment.Parent = collider

					orientation = Instance.new("AlignOrientation")
					orientation.Parent = collider
					orientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
					orientation.Attachment0 = attachment
					orientation.Responsiveness = 200

					position = Instance.new("AlignPosition")
					position.Parent = collider
					position.Mode = Enum.PositionAlignmentMode.OneAttachment
					position.Attachment0 = attachment
					position.Responsiveness = 200

					newCollider.Parent = hand
					collider = newCollider
					collider.CollisionGroup = heldObjectsCollisionGroupName
				end

				orientation = collider:FindFirstChildOfClass("AlignOrientation") :: AlignOrientation
				position = collider:FindFirstChildOfClass("AlignPosition") :: AlignPosition

				position.Position = cframe.Position
				orientation.CFrame = cframe
			end
		-- not physical hands, replicate the cframe values directly
		else
			local handCFrame = player:FindFirstChild(handName .. "CFrame") :: CFrameValue
			if handCFrame == nil then
				handCFrame = Instance.new("CFrameValue")
				handCFrame.Name = handName .. "CFrame"
				handCFrame.Parent = player
			end
			handCFrame.Value = cframe
		end
	end
end

-- receive desired hand location from clients
RemoteEventLeftHand.OnServerEvent:Connect(getHandUpdater("LeftHand"))
RemoteEventRightHand.OnServerEvent:Connect(getHandUpdater("RightHand"))