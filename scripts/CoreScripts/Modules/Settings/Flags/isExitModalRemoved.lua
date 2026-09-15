local CorePackages = game:GetService("CorePackages")

local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch

return game:DefineFastFlag("RemoveExitModal", false) or isPioneerLaunch()
