return function()
	local runStorybookAsSpec = require(script.Parent.runStorybookAsSpec)
	local storybook = require(script.Parent['SocialLibraries.storybook'])

	describe("SocialTab storybook", function()
		runStorybookAsSpec(storybook, describe, it)
	end)
end
