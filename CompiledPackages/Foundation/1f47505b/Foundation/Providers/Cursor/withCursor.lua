local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CursorContext = require(script.Parent.CursorContext)

local function withCursor(renderWithCursor)
	return React.createElement(CursorContext.Consumer, {
		render = renderWithCursor,
	})
end

return withCursor
