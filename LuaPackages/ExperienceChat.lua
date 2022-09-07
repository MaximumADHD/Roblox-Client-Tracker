--!nonstrict
local CorePackages = game:GetService("CorePackages")

local GetFFlagUpgradeExpChatV2_0_0 = require(CorePackages.Flags.GetFFlagUpgradeExpChatV2_0_0)
local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

if GetFFlagUpgradeExpChatV2_0_0() then
	return require(CorePackages.Packages.ExperienceChatV2_0_0)
else
	return require(CorePackages.Packages.ExperienceChat)
end
