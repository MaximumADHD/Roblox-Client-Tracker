local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsFireThroughScriptableBindings = FlagUtil.getUserFlag("UserPlayerScriptsFireThroughScriptableBindings")
local FFlagUserPlayerScriptsUseReplicatedCameraAPI = FlagUtil.getUserFlag("UserPlayerScriptsUseReplicatedCameraAPI")
local FFlagUserPlayerScriptsStopFireCameraAction = FlagUtil.getUserFlag("UserPlayerScriptsStopFireCameraAction")
local FFlagUserPlayerScriptsSAuthDirectAPIs = FlagUtil.getUserFlag("UserPlayerScriptsSAuthDirectAPIs2")
local FFlagUserPlayerScriptsCCLIntegrationD = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationD")
local StarterPlayer = game:GetService("StarterPlayer")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local Workspace = game:GetService("Workspace")
local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local FFlagUserAbilitiesUserInterfaceB = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceB")
local PCSInstanceName = if FFlagUserAbilitiesUserInterfaceB then "ControlState" else "PlayerControlState"

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
	local cameraVector3D
	if FFlagUserPlayerScriptsSAuthDirectAPIs then
		cameraVector3D = player:GetCameraState().CFrame.LookVector
	elseif FFlagUserPlayerScriptsUseReplicatedCameraAPI then
		local success, result = pcall(function() return player:GetCameraState() end)
		if success and result then
			local cframe = result.CFrame
			if cframe ~= CFrame.identity and result.FieldOfView > 0 and result.ViewportSize.Magnitude > 0 then
				cameraVector3D = cframe.LookVector
			end
		end
		if not cameraVector3D then
			cameraVector3D = if cameraAction ~= nil then cameraAction:GetState() else Vector3.new(0.0, 0.0, 0.0)
		end
	else
		cameraVector3D = if cameraAction ~= nil then cameraAction:GetState() else Vector3.new(0.0, 0.0, 0.0)
	end

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

	if FFlagUserPlayerScriptsSAuthDirectAPIs then
		local rotationAction = characterContext:FindFirstChild("RotationAction")
		if rotationAction then
			local binding = rotationAction:FindFirstChild("RotationScriptableBinding")
			if binding then
				binding:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
			end
		end
	else
		local shouldFireCameraAction = true
		if FFlagUserPlayerScriptsStopFireCameraAction then
			local success, state = pcall(function() return player:GetCameraState() end)
			if success and state then
				local cframe = state.CFrame
				if cframe ~= CFrame.identity and state.FieldOfView > 0 and state.ViewportSize.Magnitude > 0 then
					shouldFireCameraAction = false
				end
			end
		end
		if shouldFireCameraAction then
			local cameraAction = cameraContext:FindFirstChild("CameraAction")
			if cameraAction then
				local camera = Workspace.CurrentCamera
				if FFlagUserPlayerScriptsFireThroughScriptableBindings then
					local binding = cameraAction:FindFirstChild("CameraScriptableBinding")
					if binding then
						local success, result = pcall(function()
							binding.Type = Enum.InputBindingType.Scriptable
							binding:Fire(camera.CFrame.LookVector)
						end)
						if not success then
							cameraAction:Fire(camera.CFrame.LookVector)
						end
					else
						cameraAction:Fire(camera.CFrame.LookVector)
					end
				else
					cameraAction:Fire(camera.CFrame.LookVector)
				end
			end
		end

		local rotationAction = characterContext:FindFirstChild("RotationAction")
		if rotationAction then
			if FFlagUserPlayerScriptsFireThroughScriptableBindings then
				local binding = rotationAction:FindFirstChild("RotationScriptableBinding")
				if binding then
					local success, result = pcall(function()
						binding.Type = Enum.InputBindingType.Scriptable
						binding:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
					end)
					if not success then
						rotationAction:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
					end
				else
					rotationAction:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
				end
			else
				rotationAction:Fire(UserGameSettings.RotationType == Enum.RotationType.CameraRelative)
			end
		end
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

-- define replicated schema
function InputReplication.setupPlayerControlState(pcs)
	pcs:AddVector3Field("Move", Vector3.zero, 1.0)
	pcs:AddBoolField("Jump", false)
	pcs:AddBoolField("RotateToLookDirection", false)
	pcs:AddUnitVector3Field("LookDirection", Vector3.zAxis)
end

-- client check for ControlState instance replication from server
function InputReplication.watchForPlayerControlState(player: Player)
	local function watchCharacter(character: Model)
		local function onPCSAdded(child: Instance)
			if child:IsA(PCSInstanceName) then
				InputReplication.setupPlayerControlState(child)
			end
		end
		local existing = character:FindFirstChildOfClass(PCSInstanceName)
		if existing then InputReplication.setupPlayerControlState(existing) end
		character.ChildAdded:Connect(onPCSAdded)
	end
	if player.Character then watchCharacter(player.Character) end
	player.CharacterAdded:Connect(watchCharacter)
end

-- server create and parent ControlState instance under character, set owner to player
function InputReplication.createPlayerControlState(player: Player)
	local function createForCharacter(character: Model)
		if FFlagUserAbilitiesUserInterfaceB then
			if character:FindFirstChildOfClass(PCSInstanceName) then return end
		else
			if character:FindFirstChild(PCSInstanceName) then return end
		end
		local pcs = Instance.new(PCSInstanceName)
		pcs.Owner = player
		pcs.Parent = character
		InputReplication.setupPlayerControlState(pcs)
	end
	if player.Character then createForCharacter(player.Character) end
	player.CharacterAdded:Connect(createForCharacter)
end

-- very bloated right now and not final but get ControlModule values to send to server
function InputReplication.writeInputToPCS(player: Player, controlModule, isServerAuthority: boolean)
	local character = player.Character
	if not character then return end
	local pcs
	if FFlagUserAbilitiesUserInterfaceB then
		pcs = character:FindFirstChildOfClass(PCSInstanceName)
	else
		pcs = character:FindFirstChild(PCSInstanceName)
	end
	if not pcs then return end
	local humanoid = controlModule.humanoid
	if not humanoid then return end
	local input = if isServerAuthority then
		player:FindFirstChild("InputContexts") else
		script.Parent.Parent:FindFirstChild("InputContexts")
	local characterContext = input and input:FindFirstChild("CharacterContext")
	if not characterContext then return end
	local moveAction = characterContext:FindFirstChild("MoveAction")
	local jumpAction = characterContext:FindFirstChild("JumpAction")
	local moveVector2D = if moveAction then moveAction:GetState() else Vector2.zero
	local jumpBool = if jumpAction then jumpAction:GetState() else false
	local worldMove = controlModule:calculateRawMoveVector(humanoid,
		Vector3.new(moveVector2D.X, 0, -moveVector2D.Y))
	local isRelative = UserGameSettings.RotationType == Enum.RotationType.CameraRelative
	local camLook = Workspace.CurrentCamera and Workspace.CurrentCamera.CFrame.LookVector or Vector3.zAxis
	local horiz = Vector3.new(camLook.X, 0, camLook.Z)
	local facingDir = if horiz.Magnitude > 0.001 then horiz.Unit else Vector3.zAxis
	local newState = {
		Move = worldMove,
		RotateToLookDirection = isRelative,
		LookDirection = facingDir,
	}
	if not FFlagUserPlayerScriptsCCLIntegrationD or not AvatarAbilitiesInterface.get(player):isEnabled() then
		newState["Jump"] = jumpBool
	end
	pcs:UpdateFields(newState)
end

function InputReplication.processPCSInputs(player: Player)
	local character = player.Character
	if character == nil then return end
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid == nil then return end
	local pcs
	if FFlagUserAbilitiesUserInterfaceB then
		pcs = character:FindFirstChildOfClass(PCSInstanceName)
	else
		pcs = character:FindFirstChild(PCSInstanceName)
	end
	if pcs == nil then return end
	local state = pcs:GetState()
	local moveVector = state["Move"]
	local jumpTrigger = state["Jump"]
	local isRelative = state["RotateToLookDirection"]
	local facingDir = state["LookDirection"]
	if moveVector then humanoid:Move(moveVector) end
	humanoid.AutoRotate = not isRelative
	if isRelative and facingDir ~= nil and humanoid.RootPart ~= nil and not humanoid.Sit
		and humanoid.SeatPart == nil and not humanoid.RootPart:IsGrounded() then
		humanoid.RootPart.CFrame = CFrame.new(
			humanoid.RootPart.CFrame.Position,
			humanoid.RootPart.CFrame.Position + facingDir
		)
	end
	humanoid.Jump = jumpTrigger or false
end

return InputReplication
