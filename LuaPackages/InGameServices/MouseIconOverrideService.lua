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

local cursorOverrideStack = {}

local function update()
	local activeOverride = cursorOverrideStack[#cursorOverrideStack]
	if activeOverride then
		UserInputService.OverrideMouseIconBehavior = activeOverride[2]
	else
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end

return {
	push = function(key, behavior)
		assert(type(key) == "userdata" or type(key) == "string")
		assert(typeof(behavior) == "EnumItem")
		assert(behavior.EnumType == Enum.OverrideMouseIconBehavior)

		for idx, entry in ipairs(cursorOverrideStack) do
			if entry[1] == key then
				table.remove(cursorOverrideStack, idx)
				break
			end
		end

		table.insert(cursorOverrideStack, {key, behavior})
		update()
	end,
	pop = function(key)
		assert(type(key) == "userdata" or type(key) == "string")

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
