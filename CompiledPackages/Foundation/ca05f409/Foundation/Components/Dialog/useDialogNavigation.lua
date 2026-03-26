local Foundation = script:FindFirstAncestor("Foundation")

local DialogContext = require(script.Parent.DialogContext)
local createUseModalNavigation = require(Foundation.Utility.createUseModalNavigation)

return createUseModalNavigation(DialogContext)
