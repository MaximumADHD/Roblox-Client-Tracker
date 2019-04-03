local Roact = require(game:GetService("CorePackages").Roact)

local themeKey = require(script.Parent.themeKey)

-- Put a ThemeProvider at the top of a tree and pass it a 'theme' prop. It
-- should just be an immutable table containing some values we want to use.
local ThemeProvider = Roact.Component:extend("ThemeProvider")

function ThemeProvider:init()
	-- These kinds of checks will be superseded by validateProps/PropTypes.
	if self.props.theme == nil then
		error("ThemeProvider requires a 'theme' prop.")
	end

	-- Be free, my child!
	self._context[themeKey] = self.props.theme
end

function ThemeProvider:render()
	-- Eventually this can just be 'return self.props[Roact.Children]'
	-- ...but for now, composite components can only have one child.
	return Roact.oneChild(self.props[Roact.Children])
end

return ThemeProvider
