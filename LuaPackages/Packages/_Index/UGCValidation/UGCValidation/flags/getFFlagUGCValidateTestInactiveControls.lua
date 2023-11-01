--!strict

-- this flag is also defined in C++, this is because flags used in Lua have to be defined in Lua (gated commit checks this) the reason gated commit
-- checks is because an OTA release of Toolbox could result in an error getting the fast flag as a result of Toolbox Lua being ahead of the engine
game:DefineFastFlag("UGCValidateTestInactiveControls2", false)

return function()
	return game:GetFastFlag("UGCValidateTestInactiveControls2")
end
