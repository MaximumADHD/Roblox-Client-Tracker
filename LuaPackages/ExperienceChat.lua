--!nonstrict
local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)
local GetFFlagUpgradeExpChatV3_4_0 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUpgradeExpChatV3_4_0

initify(CorePackages.Packages)

if GetFFlagUpgradeExpChatV3_4_0() then
    return require(CorePackages.Packages.ExperienceChat_New)
else
    return require(CorePackages.Packages.ExperienceChat)
end
