local Roact = require(game:GetService("CorePackages").Roact)

local ThemeConsumer = require(script.Parent.ThemeConsumer)

-- We could always run out ThemeConsumer with createElement and pass props and
-- stuff, or we can just make a nifty little utility function instead.
-- This makes the render-props pattern have MUCH less fatigue I think.
local function withTheme(callback)
	return Roact.createElement(ThemeConsumer, { render = callback })
end

return withTheme