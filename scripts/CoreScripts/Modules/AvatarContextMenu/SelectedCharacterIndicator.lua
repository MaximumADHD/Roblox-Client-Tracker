--[[
	// FileName: SelectedCharacterIndicator.lua
	// Written by: TheGamer101
	// Description: Module for rendering an effect for the selected character .
]]

local SelectedCharacterIndicator = {}
SelectedCharacterIndicator.__index = SelectedCharacterIndicator

local RunService = game:GetService("RunService")

local RENDER_ARROW_CONTEXT_ACTION = "ContextActionMenuRenderArrow"

local CurrentCamera = workspace.CurrentCamera

function ApplyArrow(character)
	local baseModel = Instance.new("Model")
	baseModel.Name = "ContextMenuArrow"
	baseModel.Parent = CurrentCamera

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid == nil then
		humanoid = character:WaitForChild("Humanoid", 15)
		if humanoid == nil then
			return
		end
	end

	local torso = character:WaitForChild("HumanoidRootPart")

	local arrowPart = game:GetService("InsertService"):LoadLocalAsset("rbxasset://models/AvatarContextMenu/AvatarContextArrow.rbxm")
	arrowPart.Anchored = true
	arrowPart.Transparency = 0
	arrowPart.CanCollide = false
	arrowPart.Parent = baseModel

	local arrowTween = game:GetService("TweenService"):Create(arrowPart, 
														TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false), 
														{Orientation=Vector3.new(0,360,180)})
	arrowTween:Play()

	local function update()
		arrowPart.Position = torso.Position + Vector3.new(0, 5, 0)
	end

	local isKilled = false
	local function kill()
		if isKilled then
			return
		end
		isKilled = true
		baseModel:Destroy()
		arrowTween:Destroy()
		RunService:UnbindFromRenderStep(RENDER_ARROW_CONTEXT_ACTION)
	end

	humanoid.Died:Connect(kill)
	character.AncestryChanged:Connect(kill)
	RunService:BindToRenderStep(RENDER_ARROW_CONTEXT_ACTION, Enum.RenderPriority.Camera.Value + 1 , update)
	baseModel.Parent = CurrentCamera

	return kill
end

function SelectedCharacterIndicator:ChangeSelectedPlayer(selectedPlayer)
	coroutine.wrap(function()
		if self.SelectedPlayer then
			self.SelectedPlayer = nil
			self.CharacterAddedConn:Disconnect()
			self.CharacterAddedConn = nil
			if self.KillOldRenderFunction then
				self.KillOldRenderFunction()
				self.KillOldRenderFunction = nil
			end
		end

		if selectedPlayer then
			self.SelectedPlayer = selectedPlayer
			self.CharacterAddedConn = selectedPlayer.CharacterAdded:Connect(function(character)
				if self.KillOldRenderFunction then
					self.KillOldRenderFunction()
				end
				self.KillOldRenderFunction = ApplyArrow(character)
			end)
			if selectedPlayer.Character then
				self.KillOldRenderFunction = ApplyArrow(selectedPlayer.Character)
			end
		end
	end)()
end

function SelectedCharacterIndicator.new()
	local obj = setmetatable({}, SelectedCharacterIndicator)

	obj.KillOldRenderFunction = nil
	obj.SelectedPlayer = nil
	obj.CharacterAddedConn = nil

	return obj
end

return SelectedCharacterIndicator.new()
