--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GetFFlagUpgradeExpChatV4_3_1 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUpgradeExpChatV4_3_1

if GetFFlagUpgradeExpChatV4_3_1() then
    return require(CorePackages.Packages.ExperienceChat_New)
else
    return require(CorePackages.Packages.ExperienceChat)
end
