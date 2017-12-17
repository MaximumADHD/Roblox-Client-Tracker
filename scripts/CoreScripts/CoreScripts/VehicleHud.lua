--[[
		// Filename: VehicleHud.lua
		// Version 1.0
		// Written by: jmargh
		// Description: Implementation of the VehicleSeat HUD

		// TODO:
			Once this is live and stable, move to PlayerScripts as module
]]
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local RobloxGui = script.Parent
local CurrentVehicleSeat = nil
local VehicleSeatHeartbeatCn = nil
local VehicleSeatHUDChangedCn = nil

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()


--[[ Images ]]--
local VEHICLE_HUD_BG = 'rbxasset://textures/ui/Vehicle/SpeedBarBKG.png'
local SPEED_BAR_EMPTY = 'rbxasset://textures/ui/Vehicle/SpeedBarEmpty.png'
local SPEED_BAR = 'rbxasset://textures/ui/Vehicle/SpeedBar.png'

--[[ Constants ]]--
local BOTTOM_OFFSET = (isTenFootInterface and 100 or 70)

--[[ Gui Creation ]]--
local function createImageLabel(name, size, position, image, parent)
	local imageLabel = Instance.new('ImageLabel')
	imageLabel.Name = name
	imageLabel.Size = size
	imageLabel.Position = position
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = image
	imageLabel.Parent = parent

	return imageLabel
end

local function createTextLabel(name, alignment, text, parent)
	local textLabel = Instance.new('TextLabel')
	textLabel.Name = name
	textLabel.Size = UDim2.new(1, -4, 0, (isTenFootInterface and 50 or 20))
	textLabel.Position = UDim2.new(0, 2, 0, (isTenFootInterface and -50 or -20))
	textLabel.BackgroundTransparency = 1
	textLabel.TextXAlignment = alignment
	textLabel.Font = Enum.Font.SourceSans
	textLabel.FontSize = (isTenFootInterface and Enum.FontSize.Size48 or Enum.FontSize.Size18)
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.TextStrokeTransparency = 0.5
	textLabel.TextStrokeColor3 = Color3.new(49/255, 49/255, 49/255)
	textLabel.Text = text
	textLabel.Parent = parent

	return textLabel
end

local VehicleHudFrame = Instance.new('Frame')
VehicleHudFrame.Name = "VehicleHudFrame"
VehicleHudFrame.Size = UDim2.new(0, (isTenFootInterface and 316 or 158), 0, (isTenFootInterface and 50 or 14))
VehicleHudFrame.Position = UDim2.new(0.5, -(VehicleHudFrame.Size.X.Offset/2), 1, -BOTTOM_OFFSET - VehicleHudFrame.Size.Y.Offset)
VehicleHudFrame.BackgroundTransparency = 1
VehicleHudFrame.Visible = false
VehicleHudFrame.Parent = RobloxGui

local speedBarClippingFrame = Instance.new("Frame")
speedBarClippingFrame.Name = "SpeedBarClippingFrame"
speedBarClippingFrame.Size = UDim2.new(0, 0, 0, (isTenFootInterface and 24 or 4))
speedBarClippingFrame.Position = UDim2.new(0.5, (isTenFootInterface and -142 or -71), 0.5, (isTenFootInterface and -13 or -2))
speedBarClippingFrame.BackgroundTransparency = 1
speedBarClippingFrame.ClipsDescendants = true
speedBarClippingFrame.Parent = VehicleHudFrame

local HudBG = createImageLabel("HudBG", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 1), VEHICLE_HUD_BG, VehicleHudFrame)
local SpeedBG = createImageLabel("SpeedBG", UDim2.new(0, (isTenFootInterface and 284 or 142), 0, (isTenFootInterface and 24 or 4)), UDim2.new(0.5, (isTenFootInterface and -142 or -71), 0.5, (isTenFootInterface and -13 or -2)), SPEED_BAR_EMPTY, VehicleHudFrame)
local SpeedBarImage = createImageLabel("SpeedBarImage", UDim2.new(0, (isTenFootInterface and 284 or 142), 1, 0), UDim2.new(0, 0, 0, 0), SPEED_BAR, speedBarClippingFrame)
SpeedBarImage.ZIndex = 2

local SpeedLabel = createTextLabel("SpeedLabel", Enum.TextXAlignment.Left, "Speed", VehicleHudFrame)
local SpeedText = createTextLabel("SpeedText", Enum.TextXAlignment.Right, "0", VehicleHudFrame)

--[[ Local Functions ]]--
local function getHumanoid()
	local character = LocalPlayer and LocalPlayer.Character
	if character then
		for _,child in pairs(character:GetChildren()) do
			if child:IsA('Humanoid') then
				return child
			end
		end
	end
end

local function onHeartbeat()
	if CurrentVehicleSeat then
		local speed = CurrentVehicleSeat.Velocity.magnitude
		SpeedText.Text = tostring(math.min(math.floor(speed), 9999))
		local drawSize = math.floor((speed / CurrentVehicleSeat.MaxSpeed) * SpeedBG.Size.X.Offset)
		drawSize = math.min(drawSize, SpeedBG.Size.X.Offset)
		speedBarClippingFrame.Size = UDim2.new(0, drawSize, 0, (isTenFootInterface and 24 or 4))
	end
end

local function onVehicleSeatChanged(property)
	if property == "HeadsUpDisplay" then
		VehicleHudFrame.Visible = not VehicleHudFrame.Visible
	end
end

local function onSeated(active, currentSeatPart)
	if active then
		if currentSeatPart and currentSeatPart:IsA('VehicleSeat') then
			CurrentVehicleSeat = currentSeatPart
			VehicleHudFrame.Visible = CurrentVehicleSeat.HeadsUpDisplay
			VehicleSeatHeartbeatCn = RunService.Heartbeat:connect(onHeartbeat)
			VehicleSeatHUDChangedCn = CurrentVehicleSeat.Changed:connect(onVehicleSeatChanged)
		end
	else
		if CurrentVehicleSeat then
			VehicleHudFrame.Visible = false
			CurrentVehicleSeat = nil
			if VehicleSeatHeartbeatCn then
				VehicleSeatHeartbeatCn:disconnect()
				VehicleSeatHeartbeatCn = nil
			end
			if VehicleSeatHUDChangedCn then
				VehicleSeatHUDChangedCn:disconnect()
				VehicleSeatHUDChangedCn = nil
			end
		end
	end
end

local function connectSeated()
	local humanoid = getHumanoid()
	while not humanoid do
		wait()
		humanoid = getHumanoid()
	end
	humanoid.Seated:connect(onSeated)
end
if LocalPlayer.Character then
	connectSeated()
end
LocalPlayer.CharacterAdded:connect(function(character)
	onSeated(false)
	connectSeated()
end)
