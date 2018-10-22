-- singleton
local FastFlags = require(script.Parent.FastFlags)

local Globals = {}

Globals.Plugin = nil
Globals.PluginGUI = nil
Globals.CoreGUI = nil

if FastFlags:isIKModeFlagOn() then
	Globals.PhysicsService = nil
	Globals.TextService = nil
end

Globals.Selection = nil

return Globals