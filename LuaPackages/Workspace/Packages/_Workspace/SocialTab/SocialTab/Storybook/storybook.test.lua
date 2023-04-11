local SocialTab = script:FindFirstAncestor("SocialTab")
local _getFFlagDebugSocialTabCarouselEnabled = require(SocialTab.Flags.getFFlagDebugSocialTabCarouselEnabled)

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local TestUtils = devDependencies.TestUtils
local describe = JestGlobals.describe
local it = JestGlobals.it

local storybook = require(script.Parent)

describe("SocialTab.UserCarousel storybook", function()
	TestUtils.runStorybookAsSpec(storybook, describe, it)
end)
