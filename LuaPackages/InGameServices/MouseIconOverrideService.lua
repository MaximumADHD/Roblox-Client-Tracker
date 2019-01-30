--[[
	Prevents conflicts when multiple CoreScript subsystems are trying to override
	the mouse cursor at the same time. This uses a stack approach similar to how
	ContextActionService works. The most recent override takes precedence, and any
	previously set overrides will remain on the stack beneath it until removed.

	Example usage:
		MouseIconOverrideService.push("PurchasePrompt", Enum.OverrideMouseIconBehavior.ForceShow)
		MouseIconOverrideService.pop("PurchasePrompt")
]]

local UserInputService = game:GetService("UserInputService")

local FFlagUseCursorOverrideManager = settings():GetFFlag("UseCursorOverrideManager")

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
	push = function(name, behavior)
		if not FFlagUseCursorOverrideManager then
			UserInputService.OverrideMouseIconBehavior = behavior
			return
		end

		assert(type(name) == "string")
		assert(typeof(behavior) == "EnumItem")
		assert(behavior.EnumType == Enum.OverrideMouseIconBehavior)

		for _, entry in ipairs(cursorOverrideStack) do
			if entry[1] == name then
				error("Already a cursor override named " .. name, 2)
			end
		end

		table.insert(cursorOverrideStack, {name, behavior})
		update()
	end,
	pop = function(name)
		if not FFlagUseCursorOverrideManager then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			return
		end

		assert(type(name) == "string")

		local idx

		for testIdx, entry in ipairs(cursorOverrideStack) do
			if entry[1] == name then
				idx = testIdx
				break
			end
		end

		assert(idx, "No cursor override named " .. name)

		table.remove(cursorOverrideStack, idx)
		update()
	end,
}
