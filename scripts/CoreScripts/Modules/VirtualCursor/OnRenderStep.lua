--!nonstrict
-- This package is DEPRECATED, per https://roblox.atlassian.net/browse/UIBLOX-2597
-- Virtual Cursor has been moved to lua-apps/modules/app-common/virtual-cursor, this location's VC will be deleted after rollout of FFlagUseAppCommonVirtualCursorWithFixes

local VirtualCursorFolder = script.Parent

local FFlagFixVirtualCursorOcclusionChecking = game:DefineFastFlag("FixVirtualCursorOcclusionChecking", false)

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local GamepadService = game:GetService("GamepadService")
local CoreGui = game:GetService("CoreGui")

local PlayerGui

local Input = require(VirtualCursorFolder.Input)
local Interface = require(VirtualCursorFolder.Interface)
local Properties = require(VirtualCursorFolder.Properties)
local isCircleContainedInGuiObject = if FFlagFixVirtualCursorOcclusionChecking then require(VirtualCursorFolder.isCircleContainedInGuiObject) else nil

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

local alreadyScrolled = {} -- Hashset for preventing double scrolling on same ScrollingFrame

-- Variables used in finding best selection candidate
local closestSelectable : GuiObject? = nil
local occludingObj : GuiObject? = nil
local closestDistance : number = math.huge
local closestOrder : number = -math.huge

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

	if FFlagFixVirtualCursorOcclusionChecking then
		if alreadyScrolled[element] then return false end
		alreadyScrolled[element] = true
	end

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
	if abs(rthumbstick.x) > Properties.ThumbstickDeadzone and canScrollX then 
		element.CanvasPosition = element.CanvasPosition + Vector2.new(rthumbstick.x * scrollSpeed, 0)
	end

	if abs(rthumbstick.y) > Properties.ThumbstickDeadzone and canScrollY then
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

local function findClosestOrOccludingGuiObject(parentGui : GuiObject, guiObjectsList : {GuiObject},
											   pos, dt)
	for _, object in ipairs(guiObjectsList) do
		if handleScrollingFrame(object, pos, dt) then
			isScrolling = true
			return
		end

		-- If there is no current object, the top most object is set as the closest.
		-- This is also the top most object
		if isSelectableGuiObject(object) and not closestSelectable then
			closestSelectable = object
		end

		-- Check if next selectable is closer and higher in render
		if isSelectableGuiObject(object) then
			local newDistance = ((object.AbsolutePosition + object.AbsoluteSize / 2) - pos).Magnitude
			if newDistance < closestDistance and closestOrder <= object.ZIndex then
				closestSelectable = object
				closestDistance = newDistance
				closestOrder = object.ZIndex
			end
		end

		-- If current object is input sinking and covers "most" of cursor, occlude the cursor from lower GuiObjects
		if object.Visible and object.Active and object.Interactable and
		isCircleContainedInGuiObject(pos, Properties.CursorRadius * Properties.OcclusionRadiusScale, object) then
			occludingObj = object
			return
		end
	end
end

local function handleScrollingInAncestors(guiObj : GuiObject, parentGui : GuiObject, pos, dt)
	local ancestor = guiObj.Parent
	while ancestor and ancestor ~= parentGui do
		if handleScrollingFrame(ancestor, pos, dt) then
			isScrolling = true
			return
		end
		ancestor = ancestor.Parent
	end
end

local function processCursorPosition(pos, rad, dt)
	if FFlagFixVirtualCursorOcclusionChecking then
		-- Reset variables used in calculating candidates and processing scrolling for this frame
		table.clear(alreadyScrolled)
		closestSelectable = nil
		occludingObj = nil
		closestDistance = math.huge
		closestOrder = -math.huge
	end

	-- gui inset needs to be taken into account here
	local topLeftInset = GuiService:GetGuiInset()
	pos = pos - topLeftInset
	-- Objects are sorted with the top most rendered first

	-- To avoid race condition with not using a "WaitForChild" we will grab the PlayerGui instance before use
	if PlayerGui == nil then
		PlayerGui = (Players.LocalPlayer :: Player):FindFirstChildOfClass("PlayerGui")
	end

	local guiObjects = if PlayerGui then PlayerGui:GetGuiObjectsInCircle(pos, rad) else {}
	local guiObjectsCore = CoreGui:GetGuiObjectsInCircle(pos, rad)

	isScrolling = false

	if FFlagFixVirtualCursorOcclusionChecking then -- Bugfix to prevent Virtual Cursor from selecting things underneath input sinking GuiObjects
		-- Re-using logic for both types of gui
		local guiObjectsToCheck = {
			{CoreGui, guiObjectsCore},
			{PlayerGui, guiObjects}
		}

		for _, gui in ipairs(guiObjectsToCheck) do
			local parentGui = gui[1]
			local guiObjectsList = gui[2]

			-- Find and update the closest object to cursor, or the occluding objects
			findClosestOrOccludingGuiObject(parentGui, guiObjectsList, pos, dt)

			if isScrolling then return nil end -- Don't select while scrolling via cursor

			-- Check for scrolling in unchecked gui due to early termination of search from occlusion
			if closestSelectable then
				handleScrollingInAncestors(closestSelectable, parentGui, pos, dt)
			end
			
			if isScrolling then return nil end
			if occludingObj and occludingObj ~= closestSelectable then
				handleScrollingInAncestors(occludingObj, parentGui, pos, dt)
			end
			
			if isScrolling then return nil end

			-- Stop searching if occluded, since everything below is occluded
			if occludingObj then return closestSelectable end
		end

		return closestSelectable
	else
		-- test for objects in circle
		local closest, distance, order = nil, math.huge, -math.huge
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
		elseif VirtualCursorMain.SelectedObject:IsDescendantOf(PlayerGui) then
			GuiService.SelectedObject = VirtualCursorMain.SelectedObject
			GuiService.SelectedCoreObject = nil
		end
	end
end
