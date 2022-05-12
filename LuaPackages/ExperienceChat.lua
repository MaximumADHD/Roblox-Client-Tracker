local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

local FFlagEnableExperienceChatV123 = game:DefineFastFlag("FFlagEnableExperienceChatV123", false)

initify(CorePackages.Packages)

if FFlagEnableExperienceChatV123 then
	return require(CorePackages.Packages.ExperienceChat_v123)
else
	return require(CorePackages.Packages.ExperienceChat)
end
