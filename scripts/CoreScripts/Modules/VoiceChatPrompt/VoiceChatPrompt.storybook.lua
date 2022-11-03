local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local UIBlox = require(CorePackages.UIBlox)
UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))

Roact.setGlobalConfig({
	elementTracing = true,
	propValidation = true,
})

return {
	roact = Roact,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(story, storyProps)
		end
	end,
}
