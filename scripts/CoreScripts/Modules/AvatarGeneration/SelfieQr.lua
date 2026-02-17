local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SelfieQr = require(CorePackages.Workspace.Packages.SelfieQr)
local SelfieQRFactory = SelfieQr.SelfieQRFactory.createFactory()

SelfieQRFactory.mountCoreUI(RobloxGui)

return SelfieQRFactory
