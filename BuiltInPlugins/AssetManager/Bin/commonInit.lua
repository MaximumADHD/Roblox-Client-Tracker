--[[
	Performs common initialisation for plugin at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true

	local Plugin = script.Parent.Parent
	local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = game:GetFastFlag("EnableAssetManagerStylizer")
end
