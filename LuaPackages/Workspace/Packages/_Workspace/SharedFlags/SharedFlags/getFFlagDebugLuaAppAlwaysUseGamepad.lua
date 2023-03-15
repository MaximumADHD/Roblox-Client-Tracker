local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

game:DefineFastFlag("DebugLuaAppAlwaysUseGamepad", false)

-- Force gamepad input mode in tests by setting fast int below to 1
game:DefineFastInt("DebugLuaAppForceGamepad", 0)

return function()
	return (
		game:GetFastFlag("DebugLuaAppAlwaysUseGamepad")
		and RunService:IsStudio()
		and GuiService:IsTenFootInterface()
	) or game:GetFastInt("DebugLuaAppForceGamepad") > 0
end
