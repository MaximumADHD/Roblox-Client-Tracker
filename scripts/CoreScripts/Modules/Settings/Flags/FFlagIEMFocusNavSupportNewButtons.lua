local CorePackages = game:GetService("CorePackages")
local FFlagIEMFocusNavToButtons = require(CorePackages.Workspace.Packages.SharedFlags).FFlagIEMFocusNavToButtons
local FFlagIEMFocusNavSupportNewButtons = game:DefineFastFlag("IEMFocusNavSupportNewButtons2", false)

return FFlagIEMFocusNavToButtons and FFlagIEMFocusNavSupportNewButtons
