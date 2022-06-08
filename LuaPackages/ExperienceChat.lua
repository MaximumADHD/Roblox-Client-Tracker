local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

if game:DefineFastFlag("UpgradeExpChat_v1_2_4", false) then
	return require(CorePackages.Packages.ExperienceChat_v1_2_4)
else
	return require(CorePackages.Packages.ExperienceChat)
end
