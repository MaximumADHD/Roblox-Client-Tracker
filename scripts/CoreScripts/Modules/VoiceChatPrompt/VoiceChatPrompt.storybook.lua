local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

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
