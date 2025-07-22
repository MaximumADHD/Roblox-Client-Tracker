local Packages = script.Parent.Parent.Parent.Parent
local UIBlox = script.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local Foundation = require(Packages.Foundation)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local withCursorMigration = Foundation.UNSTABLE.withCursorMigration

local SelectionImageContext = require(script.Parent.SelectionImageContext)

local function SelectionCursorConsumer(renderWithCursor)
	if UIBloxConfig.useFoundationSelectionCursor then
		return withCursorMigration(renderWithCursor)
	else
		return Roact.createElement(SelectionImageContext.Consumer, {
			render = renderWithCursor,
		})
	end
end

return SelectionCursorConsumer
