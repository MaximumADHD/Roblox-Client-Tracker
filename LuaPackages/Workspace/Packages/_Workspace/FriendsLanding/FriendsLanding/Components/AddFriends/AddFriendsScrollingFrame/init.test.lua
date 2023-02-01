local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local AddFriendsScrollingFrame = require(script.Parent)

local function makeMockDeps()
	local mockComponent = function(props)
		return Roact.createElement("Frame", {})
	end
	return {
		ScrollMovementDirection = {
			Forward = "forward",
			Backward = "backward",
		},
		RefreshScrollingFrame = mockComponent,
		LoadingBarWithTheme = mockComponent,
	}
end

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(AddFriendsScrollingFrame, {
			preloadDistance = 0,
			deps = makeMockDeps(),
		})
		cleanup()
	end)
end)
