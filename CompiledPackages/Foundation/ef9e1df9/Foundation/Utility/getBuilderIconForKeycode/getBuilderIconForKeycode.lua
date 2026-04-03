local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)

local getBuilderIconForKeycode = BuilderIcons.getBuilderIconForKeycode

return function(keycode: Enum.KeyCode): string?
	local success, icon = pcall(function()
		return getBuilderIconForKeycode(keycode)
	end)
	return if success then icon else nil
end
