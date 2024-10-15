--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local INPUT_VALIDATION_PREFIX = "[Testing Library] input validation"

local function getGuiObject(instance: Instance): GuiObject
	if instance:IsA("GuiObject") then
		return instance
	end
	error(("expected instance to be a GuiObject, but got `%s`"):format(instance.ClassName))
end

local function getCenter(element: GuiObject): Vector2
	local position = element.AbsolutePosition
	local size = element.AbsoluteSize

	return Vector2.new(position.X + size.X / 2, position.Y + size.Y / 2)
end

--[[
	Prints a short description of an instance in the format of:
		game.Workspace.Path.To.Button (TextButton)
]]
local function describeInstance(instance: Instance): string
	return string.format("%s (%s)", instance:GetFullName(), instance.ClassName)
end

--[[
	Prints the boundaries of a GuiBase2d in the format "(minX, minY) (maxX, maxY)":
		(100, 100) (200, 200)
]]
local function describeBounds(instance: GuiBase2d): string
	local position = instance.AbsolutePosition
	local size = instance.AbsoluteSize
	return string.format("(%s) (%s)", tostring(position), tostring(size + position))
end

--[[
	Prints a short description of a GuiBase2d:
		game.Workspace.Path.To.Button (TextButton)
			element bounds: (100, 100) (200, 200)
]]
local function describeGuiBase2d(instance: GuiBase2d): string
	return string.format("%s\n\telement bounds: %s", describeInstance(instance), describeBounds(instance))
end

local function isPointOutsideViewport(point: Vector2, container: GuiBase2d): (boolean, string?)
	local directions = {}
	if point.Y < container.AbsolutePosition.Y then
		table.insert(directions, "top")
	end
	if point.Y > container.AbsolutePosition.Y + container.AbsoluteSize.Y then
		table.insert(directions, "bottom")
	end
	if point.X < container.AbsolutePosition.X then
		table.insert(directions, "left")
	end
	if point.X > container.AbsolutePosition.X + container.AbsoluteSize.X then
		table.insert(directions, "right")
	end

	if #directions > 0 then
		return true, table.concat(directions, "-")
	end

	return false
end

local function isPointClippedByAncestor(target: GuiBase2d, clickLocation: Vector2)
	local ancestor = target.Parent
	while ancestor ~= nil do
		if ancestor:IsA("GuiBase2d") then
			-- Non-GuiObjects (LayerCollectors) clip descendants inherently,
			-- while GuiObjects like "Frame" default to _not_ clipping unless
			-- ClipsDescendants is true
			local ancestorClips = if ancestor:IsA("GuiObject") then ancestor.ClipsDescendants else true
			local targetIsClipped, direction = isPointOutsideViewport(clickLocation, ancestor)
			if ancestorClips and targetIsClipped then
				return true, ancestor :: GuiBase2d?, direction :: string?
			end
		end
		ancestor = ancestor.Parent
	end
	return false
end

local function isClickable(instance: GuiObject, allowInactive: boolean?): (boolean, { string })
	local notClickableReasons = {}

	if not instance.Active then
		-- Check if the element is either a kind of GuiObject that always sinks
		-- clicks _or_ an Instance that's set to Active to sink clicks anyways
		if not instance:IsA("GuiButton") and not instance:IsA("TextBox") then
			local interactiveDescendants = {}
			local instancePath = instance:GetFullName()
			for _, descendant in instance:GetDescendants() do
				if descendant:IsA("GuiButton") or descendant:IsA("TextBox") then
					local path = string.sub(describeInstance(descendant), #instancePath + 1)
					table.insert(interactiveDescendants, string.format("%s%s", instance.Name, path))
				end
			end
			table.insert(
				notClickableReasons,
				string.format(
					"target is not a GuiButton or TextBox, so it will not sink inputs unless `Active` is true.\n"
						.. "\tThe target instance has the following descendants that may be better click targets:%s\n\n"
						.. "\tIf you are intentionally simulating clicks on a GUI element that is not typically interactive\n"
						.. "\t(like a Frame or an ImageLabel), consider using `element:clickWithoutValidation` instead.",
					if #interactiveDescendants > 0
						then "\n\t\t* " .. table.concat(interactiveDescendants, "\n\t\t* ")
						else " <none>"
				)
			)
		end
		if not allowInactive then
			table.insert(notClickableReasons, "target is not Active")
		end
	end
	if not instance.Visible then
		table.insert(notClickableReasons, "target is not Visible")
	end
	if instance.AbsoluteSize.X <= 0 then
		table.insert(
			notClickableReasons,
			string.format("target has 0 width; element bounds: %s", describeBounds(instance))
		)
	end
	if instance.AbsoluteSize.Y <= 0 then
		table.insert(
			notClickableReasons,
			string.format("target has 0 height; element bounds: %s", describeBounds(instance))
		)
	end

	local layerCollector = instance:FindFirstAncestorWhichIsA("LayerCollector")
	if not layerCollector then
		table.insert(
			notClickableReasons,
			"target is not a descendant of a LayerCollector, like a ScreenGui or a SurfaceGui"
		)
	end

	return #notClickableReasons == 0, notClickableReasons
end

local function assertMounted(instance: Instance)
	if not (instance :: Instance):IsA("GuiObject") then
		error(
			string.format("%s: %s is not a GuiObject", INPUT_VALIDATION_PREFIX, describeInstance(instance :: Instance))
		)
	end
	if not (instance :: GuiObject):FindFirstAncestorOfClass("DataModel") then
		error(
			string.format(
				"%s: %s is not mounted into the DataModel",
				INPUT_VALIDATION_PREFIX,
				describeInstance(instance :: Instance)
			)
		)
	end
end

local function assertCanActivate(instance: Instance, allowInactive: boolean?)
	local guiObject = getGuiObject(instance)

	local clickable, messages = isClickable(guiObject, allowInactive)
	if not clickable then
		error(
			string.format(
				"%s: %s was not clickable for the following reason(s):\n* %s",
				INPUT_VALIDATION_PREFIX,
				describeInstance(guiObject),
				table.concat(messages, "\n* ")
			)
		)
	end
end

local function assertVisibleWithinAncestors(instance: Instance)
	local guiObject = getGuiObject(instance)
	local anchor = getCenter(guiObject)

	local isClipped, ancestor, direction = isPointClippedByAncestor(guiObject, anchor)
	if isClipped then
		error(
			string.format(
				"%s: %s is outside bounds of ancestor %s (%s)\n\nclick at: (%s)\ntarget:   %s\nancestor: %s",
				INPUT_VALIDATION_PREFIX,
				instance.Name,
				(ancestor :: GuiBase2d).Name,
				direction :: string,
				tostring(anchor),
				describeGuiBase2d(guiObject),
				describeGuiBase2d(ancestor :: GuiBase2d)
			)
		)
	end
end

local function assertFirstInputTarget(instance: Instance)
	local guiObject = getGuiObject(instance)
	local anchor = getCenter(guiObject)

	-- Assert that the target is the _first_ target at the given location
	local baseGui = instance:FindFirstAncestorWhichIsA("BasePlayerGui")
	if not baseGui then
		error(
			string.format(
				"%s: %s is not a descendant of a BasePlayerGui (like CoreGui or LocalPlayer.PlayerGui)",
				INPUT_VALIDATION_PREFIX,
				describeGuiBase2d(guiObject)
			)
		)
	end

	-- FIXME: UISYS-2261 Each ScreenGui has a quadtree that's used to detect
	-- point intersections, but it's only generated once some input is received;
	-- calling `GetGuiObjectsAtPosition` should also force quadtree generation
	-- This issue is marked as resolved behind the flag InitUIQuadTreeRework,
	-- but enabling it doesn't seem to resolve the issue
	VirtualInputManager:SendMouseMoveEvent(anchor.X, anchor.Y, nil :: any)
	VirtualInputManager:WaitForInputEventsProcessed()
	local atClickLocation: { GuiObject } = (baseGui :: BasePlayerGui):GetGuiObjectsAtPosition(anchor.X, anchor.Y) :: any

	for _, descendant in atClickLocation do
		if descendant == instance then
			-- The first clickable instance in the list is our target; this
			-- is the happy path!
			break
		end

		local descendantIsClickable = isClickable(descendant :: GuiObject, true)
		if not descendantIsClickable then
			continue
		end
		-- There's a possibility that the obscuring element is not _actually_
		-- obscuring it because it's being clipped; check this before we throw
		local descendantIsClipped = isPointClippedByAncestor(descendant :: GuiBase2d, anchor)
		if descendantIsClipped then
			continue
		end

		error(
			string.format(
				"%s: element is obscured by another clickable GuiObject at the target click location\n\n click at: (%s)\n   target: %s\nobscuring: %s",
				INPUT_VALIDATION_PREFIX,
				tostring(anchor),
				describeGuiBase2d(instance :: GuiBase2d),
				describeGuiBase2d(descendant :: GuiBase2d)
			)
		)
	end
end

local function validateInputReceived(instance: GuiObject, simulateInput: () -> ()): boolean
	local connections, didReceiveInput = {}, false
	if instance:IsA("GuiButton") then
		-- The typical case is a button: we can listen to the `Activated` signal
		-- to match the way that most GuiButton behavior is implemented
		table.insert(
			connections,
			instance.Activated:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					didReceiveInput = true
				end
			end)
		)
	elseif instance:IsA("TextBox") and not instance:IsFocused() then
		-- If the instance is an unfocused TextBox and we're clicking on it,
		-- we're probably trying to simulate a user clicking to focus on it
		table.insert(
			connections,
			instance.Focused:Connect(function()
				didReceiveInput = true
			end)
		)
	else
		-- For any other
		local clickStarted = false
		table.insert(
			connections,
			instance.InputBegan:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					clickStarted = true
				end
			end)
		)
		table.insert(
			connections,
			instance.InputEnded:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					if clickStarted then
						didReceiveInput = true
					end
				end
			end)
		)
	end

	simulateInput()

	for _, connection in connections do
		connection:Disconnect()
	end
	return didReceiveInput
end

local function validateInput(guiObject: GuiObject, simulateInput: () -> ())
	-- Before we can try processing clicks, make sure we have a valid GuiObject
	-- that will receive them
	assertMounted(guiObject)

	-- Waiting for events will also allow a re-layout to complete, which should
	-- resolve any impending size and position changes
	VirtualInputManager:WaitForInputEventsProcessed()

	local didReceiveInput = validateInputReceived(guiObject, simulateInput)
	if not didReceiveInput then
		assertCanActivate(guiObject)
		assertVisibleWithinAncestors(guiObject)
		assertFirstInputTarget(guiObject)

		error(
			string.format(
				"%s: failed to click %s - reason unknown\n%s",
				INPUT_VALIDATION_PREFIX,
				guiObject.Name,
				describeGuiBase2d(guiObject)
			)
		)
	end
end

return {
	getGuiObject = getGuiObject,
	getCenter = getCenter,
	assertMounted = assertMounted,
	assertCanActivate = assertCanActivate,
	assertVisibleWithinAncestors = assertVisibleWithinAncestors,
	assertFirstInputTarget = assertFirstInputTarget,
	validateInput = validateInput,
}
