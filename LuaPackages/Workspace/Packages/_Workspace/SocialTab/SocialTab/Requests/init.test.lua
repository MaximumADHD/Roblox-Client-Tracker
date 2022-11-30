local SocialTab = script:FindFirstAncestor("SocialTab")

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Requests = require(script.Parent)

describe("Requests", function()
	it("SHOULD return a table with expected values", function(c)
		expect(Requests).toEqual({
			FetchChatSettings = expect.any("table"),
			GetUserV2FromUserId = expect.any("table"),
		})
	end)
end)
