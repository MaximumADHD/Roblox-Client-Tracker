local Foundation = script:FindFirstAncestor("Foundation")

local SheetContext = require(script.Parent.SheetContext)
local createUseModalNavigation = require(Foundation.Utility.createUseModalNavigation)

return createUseModalNavigation(SheetContext)
