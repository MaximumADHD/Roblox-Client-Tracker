local CorePackages = game:GetService("CorePackages")
local Traversal = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).Traversal
local FFlagAddTraversalHistory = Traversal.Flags.FFlagAddTraversalHistory

return FFlagAddTraversalHistory and game:DefineFastFlag("AddTraversalHistoryReactMenuButtons", false)
