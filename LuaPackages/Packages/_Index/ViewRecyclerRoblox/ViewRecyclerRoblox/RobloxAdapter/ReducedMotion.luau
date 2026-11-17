-- Whether the reader asked Roblox to reduce motion, read as each scroll
-- command runs. The engine property is read-only, so tests replace
-- `isEnabled`.
local GuiService = game:GetService("GuiService")

local ReducedMotion = {}

function ReducedMotion.isEnabled(): boolean
	return GuiService.ReducedMotionEnabled
end

return ReducedMotion
