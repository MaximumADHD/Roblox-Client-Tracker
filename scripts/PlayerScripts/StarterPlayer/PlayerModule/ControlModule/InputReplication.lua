local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local StarterPlayer = game:GetService("StarterPlayer")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))

local InputReplication = {}
InputReplication.__index = InputReplication

function InputReplication._calculatePlayerInputValues(player: Player)
	local character = player.Character
	if character == nil then
		return Vector3.new(0, 0, 0), Vector3.new(0, 0, 1), false
	end
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid == nil then
		return Vector3.new(0, 0, 0), Vector3.new(0, 0, 1), false
	end
    local input = player:FindFirstChild("InputContexts")
    if input == nil then
        return Vector3.new(0, 0, 0), Vector3.new(0, 0, 1), false
    end
    local characterContext = input:FindFirstChild("CharacterContext")
    if characterContext == nil then
        return Vector3.new(0, 0, 0), Vector3.new(0, 0, 1), false
    end
    local cameraContext = input:FindFirstChild("CameraContext")

    local moveAction = characterContext.MoveAction
    local cameraAction = cameraContext and cameraContext.CameraAction
	local rotationAction = characterContext:FindFirstChild("RotationAction")
    local cameraRelativeRotation = rotationAction ~= nil and rotationAction:GetState()

    local function isValidInput2D(vector2:Vector2):boolean
        return not (
            vector2.X ~= vector2.X or
            vector2.Y ~= vector2.Y or
            vector2.X == math.huge or
            vector2.Y == math.huge)
    end

    local function isValidInput3D(vector3:Vector3):boolean
        return not (
            vector3.X ~= vector3.X or
            vector3.Y ~= vector3.Y or
            vector3.Z ~= vector3.Z or
            vector3.X == math.huge or
            vector3.Y == math.huge or 
            vector3.Z == math.huge)
    end

    local moveVector2D = if moveAction ~= nil then moveAction:GetState() else Vector2.new(0.0, 0.0)
    local cameraVector3D = if cameraAction ~= nil then cameraAction:GetState() else Vector3.new(0.0, 0.0, 0.0)

    if isValidInput2D(moveVector2D) and isValidInput3D(cameraVector3D) and cameraVector3D.Magnitude > 0.0 then
        if humanoid and humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
            cameraVector3D = Vector3.new(cameraVector3D.X, 0.0, cameraVector3D.Z).Unit
        end

        local rightVector = cameraVector3D:Cross(Vector3.yAxis).Unit

        local moveVector = cameraVector3D * moveVector2D.Y + rightVector * moveVector2D.X

        return moveVector, cameraVector3D, cameraRelativeRotation
    end

    return Vector3.new(0, 0, 0), Vector3.new(0, 0, 1), false
end

-- This is used to create the InputAction objects on the server when replication is needed
-- It is needed when Server Authority is enabled or when the CCL (character controller library) is active.
function InputReplication.CloneInputsIfAbsent(player: Player)
	if player:FindFirstChild("InputContexts") then return end
	local inputContexts = StarterPlayer.PlayerModule.InputContexts:Clone()
	inputContexts.CharacterContext.Enabled = true
	inputContexts.CameraContext.Enabled = true
	inputContexts.Parent = player
end

-- Called on the client, this sends additional data needed to InputActions which will be replicated and used on the server
function InputReplication.FireCustomInputs(player: Player)
    local inputContexts = player:FindFirstChild("InputContexts")
    if not inputContexts then return end
    local characterContext = inputContexts:FindFirstChild("CharacterContext")
    if not characterContext then return end
    local cameraContext = inputContexts:FindFirstChild("CameraContext")
    if not cameraContext then return end

    local cameraAction = cameraContext:FindFirstChild("CameraAction")
    if cameraAction then
        local camera = Workspace.CurrentCamera
        cameraAction:Fire(camera.CFrame.LookVector)
    end

    local rotationAction = characterContext:FindFirstChild("RotationAction")
    if rotationAction then
        rotationAction:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
    end
end

-- When the CCL is active, this is called to forward inputs to the CCL from the InputAction objects on the player.
-- This is done on both the client and the server, because the character may be network owned by either.
function InputReplication.SendInputToCCLCharacter(player: Player)
    if not player then return end
	local avatarAbilitiesInterface = AvatarAbilitiesInterface.get(player)
    local inputContexts = player:FindFirstChild("InputContexts")
    if not inputContexts then return end
    local characterContext = inputContexts:FindFirstChild("CharacterContext")
    if not characterContext then return end

    for _, abilityName in avatarAbilitiesInterface:GetAbilities() do
        local action = characterContext:FindFirstChild(abilityName .. "Action")
        if action then
            avatarAbilitiesInterface:SendInput(abilityName, action:GetState())
        end
    end
    local moveVector, cameraVector3D, cameraRelativeRotation = InputReplication._calculatePlayerInputValues(player)
    avatarAbilitiesInterface:SendInput("Move", moveVector)
    avatarAbilitiesInterface:SendInput("CameraLookDirection", cameraVector3D)
    avatarAbilitiesInterface:SendInput("CameraRelativeRotation", cameraRelativeRotation)    
end

-- When Server Authority is enabled but CCL is not active, this is called to forward inputs to the humanoid from the InputAction objects on the player.
function InputReplication.SendInputToHumanoidForServerAuth(player: Player)
	local character = player.Character
	if character == nil then return end
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid == nil then return end
	local input = player:FindFirstChild("InputContexts")
	if input == nil then return end
	local characterContext = input:FindFirstChild("CharacterContext")
	if characterContext == nil then return end
	local jumpAction = characterContext.JumpAction

    local moveVector, cameraVector3D, cameraRelativeRotation = InputReplication._calculatePlayerInputValues(player)
    humanoid:Move(moveVector)
    humanoid.AutoRotate = not cameraRelativeRotation

    if cameraRelativeRotation then
        if humanoid.SeatPart == nil and humanoid.RootPart ~= nil and not humanoid.Sit and not humanoid.RootPart:IsGrounded() then
            humanoid.RootPart.CFrame = CFrame.new(
                humanoid.RootPart.CFrame.Position,
                humanoid.RootPart.CFrame.Position + cameraVector3D
            )
        end
    end    

    local jumpBool = if jumpAction ~= nil then jumpAction:GetState() else false
	humanoid.Jump = jumpBool
end

return InputReplication
