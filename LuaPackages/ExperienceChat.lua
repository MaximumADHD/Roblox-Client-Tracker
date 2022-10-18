--!nonstrict
local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)
local GetFFlagUpgradeExpChatV3_2_1 = require(script.Parent.Flags.GetFFlagUpgradeExpChatV3_2_1)

initify(CorePackages.Packages)

if GetFFlagUpgradeExpChatV3_2_1() then
    return require(CorePackages.Packages.ExperienceChat_New)
else
    return require(CorePackages.Packages.ExperienceChat)
end
