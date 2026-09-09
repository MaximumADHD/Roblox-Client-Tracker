--!strict
local Framework = script:FindFirstAncestor("UI").Parent
-- Uses DeveloperFramework's own React dependency (always present), not Util.React, which is
-- empty for Roact-only plugins. This hook runs inside the LazyFoundationProvider injection,
-- which must work on every plugin regardless of how it wires up React. (See Stylizer.lua for
-- the full Util.React vs Framework.Parent.React explanation.)
local React = require(Framework.Parent.React)

local ThemeSwitcherState = require(Framework.Style.ThemeSwitcherState)

local function useStudioThemeName(): string
	local theme, setTheme = React.useState(ThemeSwitcherState.getThemeName)

	React.useEffect(function()
		local connection = ThemeSwitcherState.subscribe(function()
			setTheme(ThemeSwitcherState.getThemeName())
		end)

		return function()
			connection:Disconnect()
		end
	end, {})

	return theme
end

return useStudioThemeName
