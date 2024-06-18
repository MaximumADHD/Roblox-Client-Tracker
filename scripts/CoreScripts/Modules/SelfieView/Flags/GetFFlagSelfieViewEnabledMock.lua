-- Overriding content/scripts/CoreScripts/Modules/SelfieView/Flags/GetFFlagSelfieViewEnabled.lua
-- Used specifically for Cross Experience Voice background DataModel to avoid dependency tree that GetFFlagSelfieViewEnabled brings

return function()
	return false
end
