local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local UIBloxCarouselAdaptor = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(UIBloxCarouselAdaptor, {
			createUserEntry = function()
				return Roact.createElement("Frame", {})
			end,
		})
		wait()

		cleanup()
	end)
end)
