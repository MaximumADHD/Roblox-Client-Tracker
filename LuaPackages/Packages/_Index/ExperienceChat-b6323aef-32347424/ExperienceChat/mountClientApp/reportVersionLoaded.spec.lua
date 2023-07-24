local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local reportVersionLoaded = require(script.Parent.reportVersionLoaded)

return function()
	describe("WITH analytics", function()
		local analytics = {
			reportCounter = jest.fn(),
		}

		it("SHOULD report with a current version formatted without periods", function()
			reportVersionLoaded(analytics, "1.2.3")
			expect(analytics.reportCounter).toHaveBeenCalledWith("ExpChatV1_2_3Count")
		end)
	end)
end
