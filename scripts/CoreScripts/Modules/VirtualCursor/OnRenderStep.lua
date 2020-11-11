local VirtualCursorFolder = script.Parent

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local GamepadService = game:GetService("GamepadService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local Input = require(VirtualCursorFolder.Input)
local Interface = require(VirtualCursorFolder.Interface)
local Properties = require(VirtualCursorFolder.Properties)
local VirtualCursorEnums = require(VirtualCursorFolder.Enums)

local velocityTarget = 1
local lastSelectedObject = nil

local function isSelectableButton(element)
	-- has to be a button, has to be visible, has to be active, (has to have a visible ancestor?)
	if not element:IsA("GuiButton") then return false end
	if not (element.Active and element.Selectable) then return false end
	if element.AbsoluteSize.Magnitude == 0 then return false end -- chat bar has a button of size 0 for some reason
	return true
end

local function getNearestButtonInCircle(pos, rad)
	-- test for objects in circle
	local closest, dist = nil, math.huge

	-- gui inset needs to be taken into account here
	local topLeftInset = GuiService:GetGuiInset()
	pos = pos - topLeftInset
	local guiObjects = PlayerGui:GetGuiObjectsInCircle(pos, rad)
	-- this should be layered in zindex order, so might have to take that into account
	for _, object in ipairs(guiObjects) do
		if isSelectableButton(object) then
			local bDist = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
			if bDist < dist then
				closest = object
				dist = bDist
			end
		end
	end

	return closest
end

local function getBaseSpeed()
	if Properties.MovementMode == VirtualCursorEnums.MovementMode.Standard then
		return 0
	else
		local sensitivityMult = Input:GetSensitivityEffect() * (Input:GetCursorFastModeEnabled() and Properties.FastModeMultiplier or 1)
		if Properties.SpeedRelativity == VirtualCursorEnums.SpeedRelativity.Pixel then
			return Properties.AccelBaseSpeedPixels * sensitivityMult
		elseif Properties.SpeedRelativity == VirtualCursorEnums.SpeedRelativity.Viewport then
			local viewportRadius = GuiService:GetScreenResolution().Magnitude
			return viewportRadius * Properties.AccelBaseSpeedRelative * sensitivityMult
		end
	end
end

local function getMaxSpeed()
	local sensitivityMult = Input:GetSensitivityEffect() * (Input:GetCursorFastModeEnabled() and Properties.FastModeMultiplier or 1)
	if Properties.SpeedRelativity == VirtualCursorEnums.SpeedRelativity.Pixel then
		return Properties.MaxSpeedPixels * sensitivityMult
	elseif Properties.SpeedRelativity == VirtualCursorEnums.SpeedRelativity.Viewport then
		local viewportRadius = GuiService:GetScreenResolution().Magnitude
		return viewportRadius * Properties.MaxSpeedRelative * sensitivityMult
	end
end


return function(VirtualCursorMain, dt)
	local viewportSize = GuiService:GetScreenResolution()
	local isInitialRun = VirtualCursorMain:InitialRun()
	local thumbstickVector = Input:GetThumbstickVector()
	local cursorPosition = VirtualCursorMain.CursorPosition
	local cursorAccelerationDV = VirtualCursorMain.CursorAccelerationDV
	local cursorVelocity

	-- process inputs and rendering of position of cursor
	local velocityFromInput = Vector2.new()

	if Properties.MovementMode == VirtualCursorEnums.MovementMode.Standard then
		velocityFromInput = thumbstickVector*getMaxSpeed()
	elseif Properties.MovementMode == VirtualCursorEnums.MovementMode.Acceleration then
		-- velocity still weighted by other factors, but we start at a base, and if a threshold is reached, we accelerate.
		local isAccelerating = thumbstickVector.Magnitude >= Properties.AccelToggleThreshold
		local maxDeltaV = getMaxSpeed()-getBaseSpeed()

		local acceleration = maxDeltaV/Properties.AccelTime
		local deltaV = acceleration * dt * (isAccelerating and 1 or -1)

		-- velocity from acceleration should be decreased proportionately to thumbstick position
		-- this allows quick opposite direction corrections to slow down the cursor.
		local maxSpeed = maxDeltaV * math.min((thumbstickVector.Magnitude * Properties.AccelToggleThreshold) + (1 - Properties.AccelToggleThreshold), 1)
		cursorAccelerationDV = math.clamp(cursorAccelerationDV + deltaV, 0, maxSpeed)
		velocityFromInput = thumbstickVector*(getBaseSpeed()+cursorAccelerationDV)

		VirtualCursorMain.CursorAccelerationDV = cursorAccelerationDV
	end
	cursorVelocity = velocityFromInput*velocityTarget

	-- step the position
	local velocityChanged = cursorVelocity.Magnitude > 0
	local positionChanged = velocityChanged
	if velocityChanged then -- not idling
		local unclampedPosition = cursorPosition + cursorVelocity*dt
		local cursorPosX = math.clamp(unclampedPosition.x, 0, viewportSize.x)
		local cursorPosY = math.clamp(unclampedPosition.y, 0, viewportSize.y)
		cursorPosition = Vector2.new(cursorPosX, cursorPosY)
	end

	-- set position of cursor
	if positionChanged or isInitialRun then -- if its the initial run, we should check to see if there's something under our cursor already.
		Interface:SetCursorPosition(cursorPosition)
		GamepadService:SetGamepadCursorPosition(cursorPosition)

		local newObject = getNearestButtonInCircle(cursorPosition, Properties.SelectionRadius)
		if newObject ~= lastSelectedObject then
			lastSelectedObject = newObject
			Interface:SetCursorHighlight(newObject ~= nil)
			if newObject then
				if newObject ~= VirtualCursorMain.SelectedObject then
					VirtualCursorMain.SelectedObject = newObject
					velocityTarget = Properties.SpeedAdjustmentTarget
				end
			else
				if VirtualCursorMain.SelectedObject then
					VirtualCursorMain.SelectedObject = nil
					velocityTarget = 1
				end
			end
		end
	end

	-- update position
	VirtualCursorMain.CursorPosition = cursorPosition
	GuiService.SelectedObject = VirtualCursorMain.SelectedObject
end
