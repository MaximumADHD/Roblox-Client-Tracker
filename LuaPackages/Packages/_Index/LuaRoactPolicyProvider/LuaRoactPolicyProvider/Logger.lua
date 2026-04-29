local Packages = script.Parent.Parent
local Lumberyak = require(Packages.Lumberyak)

local FFlagRoactPolicyLoggerName = game:DefineFastFlag("RoactPolicyLoggerName", false)

local logger = if FFlagRoactPolicyLoggerName
	then Lumberyak.Logger.new(nil, "LuaRoactPolicyProvider")
	else Lumberyak.Logger.new()

return logger
