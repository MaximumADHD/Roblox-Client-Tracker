--!nonstrict
local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect

return function()
	beforeAll(function(c)
		c.mapDispatchToProps = require(script.Parent.ShareInviteLinkMapDispatchToProps)
	end)

	it("SHOULD return a function", function(c)
		jestExpect(c.mapDispatchToProps).toEqual(jestExpect.any("function"))
	end)

	describe("WHEN called", function()
		it("SHOULD return a dictionary without throwing", function(context)
			jestExpect(context.mapDispatchToProps()).toEqual({
				fetchShareInviteLink = jestExpect.any("function"),
			})
		end)
	end)
end
