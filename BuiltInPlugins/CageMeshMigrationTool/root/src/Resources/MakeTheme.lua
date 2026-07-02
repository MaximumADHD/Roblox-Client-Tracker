local root = script:FindFirstAncestor("root")

local Framework = require(root.Packages.Framework)

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
-- local StyleKey = Style.StyleKey

local PluginTheme = {
	-- New Plugin Setup: Add theme values, i.e.
	-- [StyleKey.Something] = Color3.new(),
}

return function(createMock)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	return styleRoot:extend(PluginTheme)
end
