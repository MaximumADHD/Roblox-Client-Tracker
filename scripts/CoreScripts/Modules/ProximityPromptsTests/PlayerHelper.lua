--!nonstrict
-- This Module allows easy configuration of player's humanoid and camera.
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local PlayerHelper = {}
PlayerHelper.initStarted = false
PlayerHelper.TestModel = nil
PlayerHelper.hrp = nil
PlayerHelper.humanoid = nil
PlayerHelper.player = nil

-- Initialize Player Helper
function PlayerHelper.Init()
	if PlayerHelper.initStarted then
		return
	end

	PlayerHelper.initStarted = true

	-- Wait for player
	local player = PlayerHelper.WaitForExpression(function()
		return Players.LocalPlayer
	end, 10, "Players.LocalPlayer not found")
	PlayerHelper.player = player -- This local player
	
	if player.Character == nil and RunService:IsServer() then
		if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
			player:LoadCharacterAsync()
		else
			(player :: any):LoadCharacter()
		end
	end

	-- Wait for player's character
	PlayerHelper.WaitForExpression(function()
		return player.Character
	end, 10, "LocalPlayer.Character not found")
	
	PlayerHelper.hrp = player.Character:WaitForChild("HumanoidRootPart")
	PlayerHelper.humanoid = player.Character:WaitForChild("Humanoid")

	if PlayerHelper.TestModel == nil then
		PlayerHelper.TestModel = Instance.new("Model")
		PlayerHelper.TestModel.Name = "_TestContainer"
		PlayerHelper.TestModel.Parent = workspace
	end

	-- Get Player's PlayerGui:
	PlayerHelper.PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
end

function PlayerHelper.AddInstance(type)
	local instance = Instance.new(type)
	instance.Parent = PlayerHelper.TestModel
	return instance
end

-- Destroy all objects that have been created with AddInstance()
function PlayerHelper.CleanUpAfterTest()
	PlayerHelper.TestModel:ClearAllChildren()
end

function PlayerHelper.SetCameraFOV(angle)
	(workspace.CurrentCamera :: Camera).FieldOfView = angle
end

function PlayerHelper.IsPartOnscreen(part)
	local camera = workspace.CurrentCamera
	local viewportPoint, inViewport = camera:WorldToViewportPoint(part.Position)
	return inViewport
end

function PlayerHelper.GetPartViewportPixelPosition(part)
	local camera = workspace.CurrentCamera
	local v3, inViewport = camera:WorldToViewportPoint(part.Position)
	return Vector2.new(v3.x, v3.y)
end

-- Move the player's humanoid to the location on the ground pos
function PlayerHelper.MovePlayerToPosition(pos)
	if PlayerHelper.hrp ~= nil then
		local newCFrame = CFrame.new() + pos + Vector3.new(0, 1+PlayerHelper.humanoid.HipHeight, 0);
		PlayerHelper.hrp.CFrame = newCFrame
	end
end

-- Move the player's camera to have look direction lookDir [Vector3] and distance from humanoid
-- cameraDist [float].
function PlayerHelper.SetPlayerCamera(lookDir, cameraDist)
	local player = PlayerHelper.player
	local head = player.Character:WaitForChild("Head", 10)
	local cameraCFrame = CFrame.new(Vector3.new(), lookDir)
			+ head.Position - cameraDist*lookDir.Unit
			
	local camera = workspace.CurrentCamera
	camera.CameraType = Enum.CameraType.Scriptable
	camera.CFrame = cameraCFrame
end

function PlayerHelper.WaitNFrames(numFrames)
	-- RunService.RenderStepped is fired every frame after processing user input
	for i = 1, numFrames do
		RunService.RenderStepped:Wait()
	end
end

-- Wait a certain amount of time, which should be more accurate than just doing wait(t)
-- because wait(t)'s actual wait time depends on framerate and various throttling conditions.
function PlayerHelper.WaitWallTime(timeout)
	local startt = tick()

	if timeout > 2.0 then
		warn("Requested wait time too long, waiting 2s")
		timeout = 2.0
	end

	while true do
		local elapsed = tick() - startt
		if elapsed > timeout then
			return
		end
		PlayerHelper.WaitNFrames(1) -- Wait
	end
end

-- Wait an amout of simulation time, which is different than wall clock time.
function PlayerHelper.WaitGameTime(gameTime)
	local startt, _ = RunService.Stepped:Wait()
	local currentGameTime = startt
	while currentGameTime - startt < gameTime do
		currentGameTime, _ = RunService.Stepped:Wait()
	end
end

-- Wait for condition (a function passed) until timeout
function PlayerHelper.WaitForExpression(func, timeout, errorMessage)
	local startt = tick()
	local result = func()
	while (not result) and (tick() - startt) < timeout do
		PlayerHelper.WaitNFrames(1)
		result = func()
	end

	if not result then
		error(errorMessage)
	end

	return result
end

-- Returns a table of Vector2's representing the corners and center of a billboardGui object
-- This is useful for sending click/tap events!
-- The coordinates are in UI inset coordinate space (inset by global gui inset).
function PlayerHelper.GetCornersOfBillboardGui(bbgui)
	local bbguiScreenpos = PlayerHelper.GetPartViewportPixelPosition(bbgui.Adornee)
	local offset = Vector2.new(bbgui.SizeOffset.x*bbgui.AbsoluteSize.x, bbgui.SizeOffset.y*bbgui.AbsoluteSize.y)
	local guiInset = GuiService:GetGuiInset()

	local center = bbguiScreenpos - guiInset + offset
	local size = bbgui.AbsoluteSize

	local topLeft = center - size/2 + Vector2.new(1, 1)
	local topRight = center + Vector2.new(size.x/2 - 1, -size.y/2 + 1)
	local bottomRight = center + Vector2.new(size.x/2 - 1, size.y/2 - 1)
	local bottomLeft = center + Vector2.new(-size.x/2 + 1, size.y/2 - 1)
	return {center = center, topLeft = topLeft,
		topRight = topRight, bottomRight = bottomRight, bottomLeft = bottomLeft}
end


return PlayerHelper
