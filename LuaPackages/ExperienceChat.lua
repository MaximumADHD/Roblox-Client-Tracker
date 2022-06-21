local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

if game:DefineFastFlag("UpgradeExpChatV1_4_1", false) then
	return require(CorePackages.Packages.ExperienceChatV1_4_1)
else
	return require(CorePackages.Packages.ExperienceChat)
end
