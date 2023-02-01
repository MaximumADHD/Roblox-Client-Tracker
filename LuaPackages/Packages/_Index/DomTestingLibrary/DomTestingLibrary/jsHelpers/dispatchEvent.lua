-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local virtualInput = game:GetService("VirtualInputManager")

local function getRoot(child): Instance
	local parent = child.Parent :: Instance
	if parent == nil then
		return child
	end

	while parent.Parent ~= nil and (parent.Parent :: Instance).Parent ~= game do
		parent = parent.Parent
	end
	return parent
end

local function makeInteractable(fn: any)
	return function(element, data)
		local coreGui_ = element:FindFirstAncestorOfClass("CoreGui")
		local screenGui_ = element:FindFirstAncestorOfClass("ScreenGui")
		local coreGui = if coreGui_ then coreGui_ else game:GetService("CoreGui")
		local screenGui = (if screenGui_ then screenGui_ else Instance.new("ScreenGui")) :: ScreenGui
		local root
		local cleanupCore = false

		if not screenGui:FindFirstAncestorOfClass("CoreGui") and screenGui.Parent == nil then
			screenGui.Parent = coreGui
			cleanupCore = true
		end

		if not element:FindFirstAncestorOfClass("ScreenGui") then
			root = getRoot(element)
			root.Parent = screenGui
		end

		fn(element, data)

		if screenGui_ ~= screenGui then
			root.Parent = nil
			screenGui:Destroy()
		end

		if screenGui and cleanupCore then
			screenGui.Parent = nil
		end
	end
end

local function getCenter(element: Instance): (number, number)
	local position = (element :: any).AbsolutePosition
	local size = (element :: any).AbsoluteSize

	return position.X + size.X / 2, position.Y + size.Y / 2
end

local function click(element: Instance)
	local x, y = getCenter(element)
	local mouseButton = 0
	local layerCollector = nil
	local repeatCount = 1

	virtualInput:SendMouseButtonEvent(x, y, mouseButton, true, layerCollector, repeatCount)
	virtualInput:SendMouseButtonEvent(x, y, mouseButton, false, layerCollector, repeatCount)
	virtualInput:WaitForInputEventsProcessed()
end

local function keyDown(_element: Instance, data: { key: Enum.KeyCode })
	if not data or not data.key then
		error("No key set for event")
	end
	virtualInput:SendKeyEvent(true, data.key, false, nil)
	virtualInput:WaitForInputEventsProcessed()
end

local function keyUp(_element: Instance, data: { key: Enum.KeyCode })
	if not data or not data.key then
		error("No key set for event")
	end
	virtualInput:SendKeyEvent(false, data.key, false, nil)
	virtualInput:WaitForInputEventsProcessed()
end

local function change(element: Instance, data: { target: { [string]: any } })
	if element:IsA("TextBox") then
		if data and data.target then
			for k, v in pairs(data.target) do
				(element :: any)[k] = v
			end
		end
	else
		error(Error.new("The change event must be fired in a TextBox Instance"))
	end
end

local function resize(element: TextBox, data: { value: string })
	local value = if data and data.value then data.value else (element :: any).Size
	element.Size = value
end

local events = {
	click = makeInteractable(click),
	keyDown = makeInteractable(keyDown),
	keyUp = makeInteractable(keyUp),
	change = makeInteractable(change),
	resize = makeInteractable(resize),
}

local function dispatchEvent(element: Instance, eventName: string, data: { [string]: any }?)
	local eventFn = events[eventName]
	if not eventFn then
		error("Event not found")
	end
	eventFn(element, data)
end

return dispatchEvent
