local VirtualCursorFolder = script.Parent

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local Input = require(VirtualCursorFolder.Input)
local Interface = require(VirtualCursorFolder.Interface)
local Properties = require(VirtualCursorFolder.Properties)
local VirtualCursorEnums = require(VirtualCursorFolder.Enums)

local FFlagVirtualCursorResetLastSelectedObject = game:DefineFastFlag("VirtualCursorResetLastSelectedObject", false)

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
	local closest, dist, order = nil, math.huge, -math.huge

	-- gui inset needs to be taken into account here
	local topLeftInset = GuiService:GetGuiInset()
	pos = pos - topLeftInset
	local guiObjects = PlayerGui:GetGuiObjectsInCircle(pos, rad)
	local guiObjectsCore = CoreGui:GetGuiObjectsInCircle(pos, rad)	

	for _, object in ipairs(guiObjects) do
		if isSelectableButton(object) then
			local bDist = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
			if bDist < dist and order <= object.ZIndex then
				closest = object
				dist = bDist
				order = closest.ZIndex
			end
		end
	end

	for _, object in ipairs(guiObjectsCore) do
		if isSelectableButton(object) then
			local bDist = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
			if bDist < dist and order <= object.ZIndex then
				closest = object
				dist = bDist
				order = closest.ZIndex
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
	local thumbstickVector = Input:GetThumbstickVector()
	local cursorPosition = VirtualCursorMain.CursorPosition
	local cursorAccelerationDV = VirtualCursorMain.CursorAccelerationDV
	local cursorVelocity

	-- process inputs and rendering of position of cursor
	local velocityFromInput = Vector2.new()

	if VirtualCursorMain.SelectedObject == nil then
		velocityTarget = 1
	end

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
	if velocityChanged then -- not idling
		local unclampedPosition = cursorPosition + cursorVelocity*dt
		local cursorPosX = math.clamp(unclampedPosition.x, 0, viewportSize.x)
		local cursorPosY = math.clamp(unclampedPosition.y, 0, viewportSize.y)
		cursorPosition = Vector2.new(cursorPosX, cursorPosY)
	end

	-- set position of cursor
	-- Removing this check entirely, run it every frame instead. Perf seems fine ~0.01ms per call
	Interface:SetCursorPosition(cursorPosition)
	GamepadService:SetGamepadCursorPosition(cursorPosition)
	VirtualCursorMain.CursorPosition = cursorPosition

	local newObject = getNearestButtonInCircle(cursorPosition, Properties.SelectionRadius)

	if FFlagVirtualCursorResetLastSelectedObject and newObject ~= VirtualCursorMain.PreviouslySelectedObject or newObject ~= lastSelectedObject then
		if FFlagVirtualCursorResetLastSelectedObject then
			VirtualCursorMain.PreviouslySelectedObject = newObject
		else
			lastSelectedObject = newObject
		end

		Interface:SetCursorHighlight(newObject ~= nil)
		if newObject then
			if newObject ~= VirtualCursorMain.SelectedObject then
				VirtualCursorMain.SelectedObject = newObject
				velocityTarget = Properties.SpeedAdjustmentTarget
			end
		else
			VirtualCursorMain.SelectedObject = nil
			velocityTarget = 1
		end

		if VirtualCursorMain.SelectedObject == nil then 
			GuiService.SelectedObject = nil
			GuiService.SelectedCoreObject = nil
		elseif VirtualCursorMain.SelectedObject:IsDescendantOf(CoreGui) and
				GuiService.SelectedCoreObject ~= VirtualCursorMain.SelectedObject then
			GuiService.SelectedCoreObject = VirtualCursorMain.SelectedObject
		elseif GuiService.SelectedObject ~= VirtualCursorMain.SelectedObject then
			GuiService.SelectedObject = VirtualCursorMain.SelectedObject
		end
	end
end
