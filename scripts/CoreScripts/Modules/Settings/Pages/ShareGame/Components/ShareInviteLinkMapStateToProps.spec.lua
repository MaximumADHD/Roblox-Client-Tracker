local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect

return function()
	local mapStateToProps = require(script.Parent.ShareInviteLinkMapStateToProps)

	describe("should properly map to props", function()
		local mockState = {
			ShareLinks = {
				Invites = {
					ShareInviteLink = "test"
				}
			}
		}

		it("SHOULD have the expected fields", function()
			local newProps = mapStateToProps(mockState)

			jestExpect(newProps).toEqual({ shareInviteLink = "test" })
		end)
	end)
end
