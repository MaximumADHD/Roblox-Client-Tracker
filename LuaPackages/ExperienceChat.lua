local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

if game:DefineFastFlag("UpgradeExpChatV1_3_0", false) then
	return require(CorePackages.Packages.ExperienceChatV1_3_0)
else
	return require(CorePackages.Packages.ExperienceChat)
end
