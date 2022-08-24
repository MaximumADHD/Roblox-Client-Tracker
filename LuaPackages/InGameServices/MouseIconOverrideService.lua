--[[
	Prevents conflicts when multiple CoreScript subsystems are trying to override
	the mouse cursor at the same time. This uses a stack approach similar to how
	ContextActionService works. The most recent override takes precedence, and any
	previously set overrides will remain on the stack beneath it until removed.

	Example usage:
		local MOUSE_OVERRIDE_KEY = Symbol.named("PurchasePrompt")
		MouseIconOverrideService.push(MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		MouseIconOverrideService.pop(MOUSE_OVERRIDE_KEY)
]]

local UserInputService = game:GetService("UserInputService")

type CursorOverrideEntry = {string | Enum.OverrideMouseIconBehavior}
local cursorOverrideStack: {CursorOverrideEntry} = {}

local function update()
	local activeOverride = cursorOverrideStack[#cursorOverrideStack]
	if activeOverride then
		UserInputService.OverrideMouseIconBehavior = activeOverride[2] :: Enum.OverrideMouseIconBehavior
	else
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end

return {
	push = function(key: string, behavior: Enum.OverrideMouseIconBehavior)
		assert(type(key) == "userdata" or type(key) == "string", "key")
		assert(typeof(behavior) == "EnumItem", "behavior")
		assert(behavior.EnumType == Enum.OverrideMouseIconBehavior, "behavior.EnumType")

		for idx, entry in ipairs(cursorOverrideStack) do
			if entry[1] == key then
				table.remove(cursorOverrideStack, idx)
				break
			end
		end

		table.insert(cursorOverrideStack, {key, behavior} :: CursorOverrideEntry)
		update()
	end,
	pop = function(key)
		assert(type(key) == "userdata" or type(key) == "string", "key")

		local idx

		for testIdx, entry in ipairs(cursorOverrideStack) do
			if entry[1] == key then
				idx = testIdx
				break
			end
		end

		if idx then
			table.remove(cursorOverrideStack, idx)
		end

		update()
	end,
}
