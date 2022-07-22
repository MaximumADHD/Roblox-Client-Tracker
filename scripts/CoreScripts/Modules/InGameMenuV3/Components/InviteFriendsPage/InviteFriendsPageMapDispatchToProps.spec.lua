local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect

return function()
	beforeAll(function(c)
		c.mapDispatchToProps = require(script.Parent.InviteFriendsPageMapDispatchToProps)
	end)

	it("SHOULD return a function", function(c)
		jestExpect(c.mapDispatchToProps).toEqual(jestExpect.any("function"))
	end)

	describe("WHEN called", function()
		describe("WHEN ShareInviteLinkContextMenuV3Enabled FFlag is enabled", function()
			beforeAll(function(context)
				game:SetFastFlagForTesting("ShareInviteLinkContextMenuV3Enabled", true)
			end)

			it("SHOULD return a dictionary without throwing", function(context)
				jestExpect(context.mapDispatchToProps()).toEqual({
					fetchShareInviteLink = jestExpect.any("function"),
					fetchServerType = jestExpect.any("function")
				})
			end)
		end)

		describe("WHEN ShareInviteLinkContextMenuV3Enabled FFlag is disabled", function()
			beforeAll(function(context)
				game:SetFastFlagForTesting("ShareInviteLinkContextMenuV3Enabled", false)
			end)
			
			it("SHOULD return a dictionary without throwing", function(context)
				jestExpect(context.mapDispatchToProps()).toEqual({})
			end)
		end)
	end)
end
