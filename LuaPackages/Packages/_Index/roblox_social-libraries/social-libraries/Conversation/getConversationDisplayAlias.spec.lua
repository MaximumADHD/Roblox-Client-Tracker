return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getConversationDisplayAlias = require(script.Parent.getConversationDisplayAlias)

	local makeState = function(byUserId)
		return {
			LocalUserId = "localUserId",
			ChatAppReducer = {
				Aliases = {
					byUserId = byUserId or {}
				}
			}
		}
	end

	describe("WHEN given a multiple group conversation", function()
		local mock1, mock2 = "mock1", "mock2"
		local conversation = {
			conversationType = "GroupConversation",
			participants = { "localUserId", mock1, mock2 },
		}

		it("SHOULD return nil", function()
			jestExpect(getConversationDisplayAlias(makeState(), conversation)).toBeNil()
			jestExpect(getConversationDisplayAlias(makeState({
				mock1 = "alias1",
			}), conversation)).toBeNil()
		end)
	end)

	describe("WHEN given a one-on-one conversation", function()
		local mock1 = "mock1"
		local conversation = {
			conversationType = "OneToOneConversation",
			participants = { "localUserId", mock1 },
		}

		it("SHOULD return nil when no alias is in state", function()
			jestExpect(getConversationDisplayAlias(makeState(), conversation)).toBeNil()
		end)

		it("SHOULD return (alias1) when alias is mapped in state", function()
			jestExpect(getConversationDisplayAlias(makeState({
				mock1 = "alias1",
			}), conversation)).toBe("(alias1)")
		end)
	end)

end
