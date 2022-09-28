--!nonstrict
local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)
local GetFFlagUpgradeExpChatV3_0_0 = require(script.Parent.Flags.GetFFlagUpgradeExpChatV3_0_0)

initify(CorePackages.Packages)

if GetFFlagUpgradeExpChatV3_0_0() then
    return require(CorePackages.Packages.ExperienceChat_New)
else
    return require(CorePackages.Packages.ExperienceChat)
end
