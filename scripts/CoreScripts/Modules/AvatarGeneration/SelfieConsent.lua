local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SelfieConsent = require(CorePackages.Workspace.Packages.SelfieConsent)
local SelfieConsentDialog = SelfieConsent.SelfieConsentDialog.createDialog()

SelfieConsentDialog.mountCoreUI(RobloxGui)

return SelfieConsentDialog
