local CorePackages = game:GetService("CorePackages")
local Traversal = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).Traversal
local FFlagAddTraversalHistory = Traversal.Flags.FFlagAddTraversalHistory

local FFlagMenuButtonsCheckVisibilityBeforeMount = require(script.Parent.FFlagMenuButtonsCheckVisibilityBeforeMount)

return FFlagMenuButtonsCheckVisibilityBeforeMount and FFlagAddTraversalHistory and game:DefineFastFlag("AddTraversalHistoryReactMenuButtons", false)
