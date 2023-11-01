local Packages = script.Parent.Parent.Parent.Parent

local React = require(Packages.React)

local CursorContext = require(script.Parent.CursorContext)

local function withCursor(renderWithCursor)
	return React.createElement(CursorContext.Consumer, {
		render = renderWithCursor,
	})
end

return withCursor
