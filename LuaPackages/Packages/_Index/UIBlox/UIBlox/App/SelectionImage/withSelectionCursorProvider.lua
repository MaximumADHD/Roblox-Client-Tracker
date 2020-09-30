local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)

local SelectionImageContext = require(script.Parent.SelectionImageContext)

local function SelectionCursorConsumer(renderWithCursor)
	return Roact.createElement(SelectionImageContext.Consumer, {
		render = renderWithCursor,
	})
end

return SelectionCursorConsumer