local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local function dummyDispatch() end

describe("TencentAuthInfoEventReceiver", function()
	it("SHOULD have to expected fields", function()
		local dispatchFields = mapDispatchToProps(dummyDispatch)
		expect(dispatchFields.setTencentAuthInfo).toBeDefined()
	end)
end)
