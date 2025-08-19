local Packages = script.Parent.Parent.Parent.Parent

local Foundation = require(Packages.Foundation)

local withCursorMigration = Foundation.UNSTABLE.withCursorMigration

local function SelectionCursorConsumer(renderWithCursor)
	return withCursorMigration(renderWithCursor)
end

return SelectionCursorConsumer
