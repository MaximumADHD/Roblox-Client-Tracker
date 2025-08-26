local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTopBarStyleUseDisplayUIScale = SharedFlags.FFlagTopBarStyleUseDisplayUIScale

return FFlagTopBarStyleUseDisplayUIScale and game:DefineFastFlag("TokenizeUnibarConstantsWithStyleProvider", false)
