local Roact = require(game:GetService("CorePackages").Roact)

local themeKey = require(script.Parent.themeKey)

-- To use our theme, we make a component that gets our stuff out of context.
local ThemeConsumer = Roact.Component:extend("ThemeConsumer")

function ThemeConsumer:init()
	local theme = self._context[themeKey]

	-- In this case, we could also fall back to a default theme if we wanted.
	-- I like being explicit. Errors for everyone!
	if theme == nil then
		error("ThemeConsumer must be below a ThemeProvider.")
	end

	self.theme = theme

	-- To make peace with the Roact paradigm, put our theme values into state.
	self.state = {
		themeValues = theme.values,
	}
end

function ThemeConsumer:render()
	-- We accept a function called `render` that gets access to the theme.
	-- This is way cooler than higher-order components.
	return self.props.render(self.state.themeValues)
end

function ThemeConsumer:didMount()
	-- Anything listening to the theme will re-render automatically when the
	-- theme updates, hooray!
	self.disconnectThemeListener = self.theme.signal:subscribe(function(newValues)
		self:setState({
			themeValues = newValues,
		})
	end)
end

function ThemeConsumer:willUnmount()
	self.disconnectThemeListener()
end

return ThemeConsumer
