--!nonstrict
local VirtualCursorFolder = script.Parent

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagFixMissingPlayerGuiCrash = require(RobloxGui.Modules.Flags.GetFFlagFixMissingPlayerGuiCrash)

local PlayerGui

local Input = require(VirtualCursorFolder.Input)
local Interface = require(VirtualCursorFolder.Interface)
local Properties = require(VirtualCursorFolder.Properties)

local velocityTarget = 1
local lastSelectedObject = nil
local isScrolling = false
local PI = math.pi
local sin = math.sin
local cos = math.cos
local abs = math.abs
local max = math.max
local min = math.min
local sign = math.sign
local abs = math.abs

local function isSelectableGuiObject(element)
	-- has to be a button or textbox, has to be visible, has to be active, (has to have a visible ancestor?)
	if not element:IsA("GuiButton") and not element:IsA("TextBox") then return false end
	if not (element.Active and element.Selectable) then return false end
	if element.AbsoluteSize.Magnitude == 0 then return false end -- chat bar has a button of size 0 for some reason
	return true
end

local function contains(v, min, max) 
	return (v.x >= min.x) and (v.y >= min.y) and (v.x <= max.x) and (v.y <= max.y)
end

local function handleScrollingFrame(element, pos, dt) 	
	if not element:IsA("ScrollingFrame") then return false end
	if not element.ScrollingEnabled then return false end

	local rthumbstick = Input:GetThumbstick2Vector()
	local scrollSpeed = Properties.ScrollingSpeed * dt
	local cursorRadius = Properties.ScrollingRadius
	local absCanvasSize = element.AbsoluteCanvasSize
	local absSize = element.AbsoluteSize
	local scrollingDirection = element.ScrollingDirection
	local canScrollX = absCanvasSize.X > absSize.X and (scrollingDirection == Enum.ScrollingDirection.XY or scrollingDirection == Enum.ScrollingDirection.X)
	local canScrollY = absCanvasSize.Y > absSize.Y and (scrollingDirection == Enum.ScrollingDirection.XY or scrollingDirection == Enum.ScrollingDirection.Y)
	
	local absSize = element.AbsoluteSize
	local absPos = element.AbsolutePosition
	local rotRad = element.Rotation / 180 * PI

	-- Right thumbstick scrolling
	if abs(rthumbstick.x) > Properties.ThumbstickDeadzone then 
		element.CanvasPosition = element.CanvasPosition + Vector2.new(rthumbstick.x * scrollSpeed, 0)
	end

	if abs(rthumbstick.y) > Properties.ThumbstickDeadzone then
		element.CanvasPosition = element.CanvasPosition + Vector2.new(0, rthumbstick.y * scrollSpeed)
	end

	-- cos, sin
	local dirX = Vector2.new(cos(rotRad), sin(rotRad))

	-- -sin, cos
	local dirY = Vector2.new(-sin(rotRad), cos(rotRad))
	local testVector = Vector2.new(pos.X, pos.Y) - absPos
	
	local dx = testVector:Dot(dirX) - absSize.X / 2
	local dy = testVector:Dot(dirY) - absSize.Y / 2
	local d = Vector2.new(abs(dx), abs(dy)) - absSize / 2
	local outer = Vector2.new(max(d.x, 0), max(d.y, 0)).Magnitude
	local inner = min(max(d.x, d.y), 0)

	if abs(inner + outer) < cursorRadius then
		if (abs(d.x) < abs(d.y)) and canScrollX then
			element.CanvasPosition = element.CanvasPosition + Vector2.new(sign(dx) * scrollSpeed, 0)
			Interface:SetArrow(sign(dx), 0)
			return true
		elseif (abs(d.x) >= abs(d.y)) and canScrollY then
			element.CanvasPosition = element.CanvasPosition + Vector2.new(0, sign(dy) * scrollSpeed)
			Interface:SetArrow(0, sign(dy))
			return true
		end
	end

	return false
end

local function processCursorPosition(pos, rad, dt)
	-- test for objects in circle
	local closest, distance, order = nil, math.huge, -math.huge
	isScrolling = false

	-- gui inset needs to be taken into account here
	local topLeftInset = GuiService:GetGuiInset()
	pos = pos - topLeftInset
	-- Objects are sorted with the top most rendered first

	if GetFFlagFixMissingPlayerGuiCrash() then
		-- To avoid race condition with not using a "WaitForChild" we will grab the PlayerGui instance before use
		if PlayerGui == nil then
			PlayerGui = (Players.LocalPlayer :: Player):FindFirstChildOfClass("PlayerGui")
		end
	else
		if PlayerGui == nil then
			PlayerGui = (Players.LocalPlayer :: Player):WaitForChild("PlayerGui")
		end
	end

	local guiObjects = if PlayerGui then PlayerGui:GetGuiObjectsInCircle(pos, rad) else {}
	local guiObjectsCore = CoreGui:GetGuiObjectsInCircle(pos, rad)	

	for _, object in ipairs(guiObjects) do
		if handleScrollingFrame(object, pos, dt) then 
			isScrolling = true
			return nil
		end

		-- If there is no current object, the top most object is set as the closest.
		-- This is also the top most object
		if isSelectableGuiObject(object) and not closest then
			closest = object
		end

		-- If two objects have the same parent, measure their distance and sorting then choose closest
		-- If they don't have the same parent, prefer the current object as it is guaranteed to be on top
		if isSelectableGuiObject(object) then
			if object.Parent == closest.Parent then
				local newDistance = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
				if newDistance < distance and order <= object.ZIndex then
					closest = object
					distance = newDistance
					order = closest.ZIndex
				end
			end
		end
	end

	local isCoreGui = false
	for _, object in ipairs(guiObjectsCore) do
		if handleScrollingFrame(object, pos, dt) then 
			isScrolling = true
			return nil
		end

		if isSelectableGuiObject(object) then
			local newDistance = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
			if isCoreGui and newDistance < distance and order <= object.ZIndex or not isCoreGui and newDistance < distance then
				closest = object
				distance = newDistance
				order = closest.ZIndex
				isCoreGui = true
			end
		end
	end

	return closest
end

local function getMaxSpeed()
	local viewportRadius = GuiService:GetScreenResolution().Magnitude
	return viewportRadius * Properties.MaxSpeedRelative
end

return function(VirtualCursorMain, dt)
	local viewportSize = GuiService:GetScreenResolution() + GuiService:GetGuiInset()

	local thumbstickVector = Input:GetThumbstickVector()
	local cursorPosition = GamepadService:GetGamepadCursorPosition()
	local cursorVelocity

	-- process inputs and rendering of position of cursor
	local velocityFromInput = Vector2.new()

	if VirtualCursorMain.SelectedObject == nil then
		velocityTarget = 1
		Interface:SetCursorHighlight(false)
	end

	if isScrolling then
		velocityTarget = Properties.ScrollingSlowDown
	end

	velocityFromInput = thumbstickVector * getMaxSpeed()
	cursorVelocity = velocityFromInput * velocityTarget

	-- step the position
	local velocityChanged = cursorVelocity.Magnitude > 0
	if velocityChanged then -- not idling
		local unclampedPosition = cursorPosition + cursorVelocity * dt
		local cursorPosX = math.clamp(unclampedPosition.x, 0, viewportSize.x)
		local cursorPosY = math.clamp(unclampedPosition.y, 0, viewportSize.y)
		cursorPosition = Vector2.new(cursorPosX, cursorPosY)
	end

	-- set position of cursor
	-- Removing this check entirely, run it every frame instead. Perf seems fine ~0.01ms per call
	Interface:SetCursorPosition(cursorPosition)
	GamepadService:SetGamepadCursorPosition(cursorPosition)
	VirtualCursorMain.CursorPosition = cursorPosition

	local newObject = processCursorPosition(cursorPosition, Properties.SelectionRadius, dt)

	if newObject ~= VirtualCursorMain.PreviouslySelectedObject then
		VirtualCursorMain.PreviouslySelectedObject = newObject

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
		elseif VirtualCursorMain.SelectedObject:IsDescendantOf(CoreGui) then
			GuiService.SelectedCoreObject = VirtualCursorMain.SelectedObject
			GuiService.SelectedObject = nil
		else
			GuiService.SelectedObject = VirtualCursorMain.SelectedObject
			GuiService.SelectedCoreObject = nil
		end
	end
end
