
-- Written by SolarCrane

local HEALTH_BACKGROUND_COLOR = Color3.new(228/255, 236/255, 246/255)
local HEALTH_RED_COLOR = Color3.new(255/255, 28/255, 0/255)
local HEALTH_YELLOW_COLOR = Color3.new(250/255, 235/255, 0)
local HEALTH_GREEN_COLOR = Color3.new(27/255, 252/255, 107/255)

local MIN_COLOR_POSITION = 0.1
local MIN_COLOR = HEALTH_RED_COLOR
local MID_COLOR_POSITION = 0.5
local MAX_COLOR_POSITION = 0.8
local MAX_COLOR = HEALTH_GREEN_COLOR

local NAME_SPACE = 14

local PlayersService = game:GetService('Players')
local CoreGui = game:GetService('CoreGui')
local StarterGui = game:GetService('StarterGui')
local UserInputService = game:GetService('UserInputService')

local RobloxGui = CoreGui:WaitForChild("RobloxGui")



local healthbarContainer = Instance.new('Frame')
healthbarContainer.Name = 'HealthbarContainer'
healthbarContainer.BackgroundTransparency = 1
healthbarContainer.Size = UDim2.new(1,0,1,0)

local healthbarBack = Instance.new('ImageLabel')
healthbarBack.ImageColor3 = HEALTH_BACKGROUND_COLOR
healthbarBack.BackgroundTransparency = 1
healthbarBack.ScaleType = Enum.ScaleType.Slice
healthbarBack.SliceCenter = Rect.new(10, 10, 10, 10)
healthbarBack.Name = 'HealthbarBack'
healthbarBack.Image = 'rbxasset://textures/ui/VR/rectBackgroundWhite.png'
healthbarBack.Size = UDim2.new(1,0,0.3,0)
healthbarBack.Position = UDim2.new(0,0,0.7,0)
healthbarBack.Parent = healthbarContainer

local healthbarFront = Instance.new('ImageLabel')
healthbarFront.ImageColor3 = HEALTH_GREEN_COLOR
healthbarFront.BackgroundTransparency = 1
healthbarFront.ScaleType = Enum.ScaleType.Slice
healthbarFront.SliceCenter = Rect.new(10, 10, 10, 10)
healthbarFront.Size = UDim2.new(1, 0, 1, 0)
healthbarFront.Position = UDim2.new(0, 0, 0, 0)
healthbarFront.Name = 'HealthbarFill'
healthbarFront.Image = 'rbxasset://textures/ui/VR/rectBackgroundWhite.png'
healthbarFront.Parent = healthbarBack

local playerName = Instance.new('TextLabel')
playerName.Name = 'PlayerName'
playerName.BackgroundTransparency = 1
playerName.TextColor3 = Color3.new(1, 1, 1)
playerName.Text = ''
playerName.Font = Enum.Font.SourceSansBold
playerName.FontSize = Enum.FontSize.Size24
playerName.TextXAlignment = Enum.TextXAlignment.Left
playerName.Size = UDim2.new(1, 0, 0, NAME_SPACE)
playerName.Parent = healthbarContainer


local function Color3ToVec3(color)
	return Vector3.new(color.r, color.g, color.b)
end

local function FindChildOfType(object, className)
	for _, child in pairs(object:GetChildren()) do
		if child:IsA(className) then
			return child
		end
	end
end


local HEALTH_COLOR_TO_POSITION = {
	[Color3ToVec3(MIN_COLOR)] = MIN_COLOR_POSITION;
	[Color3ToVec3(HEALTH_YELLOW_COLOR)] = MID_COLOR_POSITION;
	[Color3ToVec3(MAX_COLOR)] = MAX_COLOR_POSITION;
}


local function HealthbarColorTransferFunction(healthPercent)
	if healthPercent <= MIN_COLOR_POSITION then
		return MIN_COLOR
	elseif healthPercent >= MAX_COLOR_POSITION then
		return MAX_COLOR
	end

	-- Shepard's Interpolation
	local numeratorSum = Vector3.new(0,0,0)
	local denominatorSum = 0
	for colorSampleValue, samplePoint in pairs(HEALTH_COLOR_TO_POSITION) do
		local distance = healthPercent - samplePoint
		if distance == 0 then
			-- If we are exactly on an existing sample value then we don't need to interpolate
			return Color3.new(colorSampleValue.x, colorSampleValue.y, colorSampleValue.z)
		else
			local wi = 1 / (distance*distance)
			numeratorSum = numeratorSum + wi * colorSampleValue
			denominatorSum = denominatorSum + wi
		end
	end

	local result = numeratorSum / denominatorSum
	return Color3.new(result.x, result.y, result.z)
end

local function UpdateHealth(humanoid)
	local percentHealth = humanoid.Health / humanoid.MaxHealth
	if percentHealth ~= percentHealth then
		percentHealth = 1
	end
	healthbarFront.ImageColor3 = HealthbarColorTransferFunction(percentHealth)
	healthbarFront.Size = UDim2.new(percentHealth, 0, 1, 0)
end

local HumanoidChangedConn = nil
local HumanoidAncestryChangedConn = nil
local function RegisterHumanoid(humanoid)
	if HumanoidAncestryChangedConn then
		HumanoidAncestryChangedConn:disconnect()
		HumanoidAncestryChangedConn = nil
	end
	if HumanoidChangedConn then
		HumanoidChangedConn:disconnect()
		HumanoidChangedConn = nil
	end

	if humanoid then
		HumanoidAncestryChangedConn = humanoid.AncestryChanged:connect(function(child, parent)
			local player = PlayersService.LocalPlayer
			if child == humanoid and (not player or parent ~= player.Character) then
				RegisterHumanoid(nil)
			end
		end)
		HumanoidChangedConn = humanoid.HealthChanged:connect(function() UpdateHealth(humanoid) end)
		UpdateHealth(humanoid)
	end
end

local function OnCharacterChildAdded(child)
	local player = PlayersService.LocalPlayer
	if player and child.Parent == player.Character and child:IsA('Humanoid') then
		RegisterHumanoid(child)
	end
end

local CharacterChildAddedConn = nil
local function OnCharacterAdded(character)
	local humanoid = FindChildOfType(character, 'Humanoid')
	if humanoid then
		RegisterHumanoid(humanoid)
	end
	
	if CharacterChildAddedConn then
		CharacterChildAddedConn:disconnect()
		CharacterChildAddedConn = nil
	end
	CharacterChildAddedConn = character.ChildAdded:connect(OnCharacterChildAdded)
end

local function OnPlayerAdded(player)
	playerName.Text = player.Name

	player.CharacterAdded:connect(OnCharacterAdded)
	if player.Character then
		OnCharacterAdded(player.Character)
	end
end

if PlayersService.LocalPlayer then
	OnPlayerAdded(PlayersService.LocalPlayer)
else
	spawn(function()
		while not PlayersService.LocalPlayer do
			PlayersService.ChildAdded:wait()
		end
		OnPlayerAdded(PlayersService.LocalPlayer)
	end)
end

local Healthbar = {}

Healthbar.ModuleName = "Healthbar"
Healthbar.KeepVRTopbarOpen = false
Healthbar.VRIsExclusive = false
Healthbar.VRClosesNonExclusive = false

local CoreGuiChangedConn, VRModuleOpenedConn, VRModuleClosedConn;
local function OnVREnabled(prop)
	if prop == "VREnabled" then
		if UserInputService.VREnabled then
			local VRHub = require(RobloxGui.Modules.VR.VRHub)
			local Panel3D = require(RobloxGui.Modules.VR.Panel3D)

			local HealthbarPanel = Panel3D.Get("Healthbar")
			HealthbarPanel:ResizeStuds(1.5, 0.25, 128)
			HealthbarPanel:SetType(Panel3D.Type.Fixed, { CFrame = CFrame.new(0, 0, -5) })
			HealthbarPanel:SetVisible(true)


			function HealthbarPanel:PreUpdate(cameraCF, cameraRenderCF, userHeadCF, lookRay)
				local relativePanel = Panel3D.Get("Backpack") or Panel3D.Get("Topbar3D")
				local topbarPanel = Panel3D.Get("Topbar3D")
				if relativePanel and topbarPanel then
					local panelOriginCF = relativePanel.localCF or CFrame.new()
					-- Line up the Healthbar with the backpack icons, which are set 0.11 inwards
					self.localCF = panelOriginCF * CFrame.new(math.max(topbarPanel.width, relativePanel.width)/2 - HealthbarPanel.width/2 - 0.11, 0.25, 0.1)
				end
			end

			function HealthbarPanel:CalculateTransparency()
				local backpackPanel = Panel3D.Get("Backpack")
				local topbarPanel = Panel3D.Get("Topbar3D")
				local transparency = math.min(
					backpackPanel and backpackPanel:IsVisible() and backpackPanel:CalculateTransparency() or 1,
					topbarPanel and topbarPanel:IsVisible() and topbarPanel:CalculateTransparency() or 1)

				healthbarBack.ImageTransparency = transparency
				healthbarFront.ImageTransparency = transparency
				playerName.TextTransparency = transparency

				return transparency
			end

			local OtherPanelOpen = false
			local function UpdateExclusivePanelOpen()
				for _, openModule in pairs(VRHub:GetOpenedModules()) do
					if openModule.VRIsExclusive then
						OtherPanelOpen = true
						return
					end
				end
				OtherPanelOpen = false
			end

			local function CalculateVisibility()
				return StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health) and
					not OtherPanelOpen
			end


			CoreGuiChangedConn = StarterGui.CoreGuiChangedSignal:connect(function()
				HealthbarPanel:SetVisible(CalculateVisibility())
			end)

			VRModuleOpenedConn = VRHub.ModuleOpened.Event:connect(function(moduleName)
				UpdateExclusivePanelOpen()
				HealthbarPanel:SetVisible(CalculateVisibility())
			end)
			VRModuleClosedConn = VRHub.ModuleClosed.Event:connect(function(moduleName)
				UpdateExclusivePanelOpen()
				HealthbarPanel:SetVisible(CalculateVisibility())
			end)

			-- Initialize OtherPanelOpen variable
			UpdateExclusivePanelOpen()
			HealthbarPanel:SetVisible(CalculateVisibility())
			healthbarContainer.Parent = HealthbarPanel:GetGUI()

			VRHub:RegisterModule(Healthbar)
		else
			if CoreGuiChangedConn then
				CoreGuiChangedConn:disconnect()
				CoreGuiChangedConn = nil
			end
			if VRModuleOpenedConn then
				VRModuleOpenedConn:disconnect()
				VRModuleOpenedConn = nil
			end
			if VRModuleClosedConn then
				VRModuleClosedConn:disconnect()
				VRModuleClosedConn = nil
			end
			healthbarContainer.Parent = nil
		end
	end
end




UserInputService.Changed:connect(OnVREnabled)
if UserInputService.VREnabled then
	OnVREnabled("VREnabled")
end

return Healthbar
