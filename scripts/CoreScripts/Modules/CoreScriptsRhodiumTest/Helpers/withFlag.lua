--[[
	Used for running a test with a flag enabled.

	With Lua fast flags, we can make use of game:SetFastFlagForTesting() to flip
	a flag during runtime. This allows us to test different combinations of
	flags without having to use a blanket "all on" setting like before.

	Usage:

		describe("Foo", function()
			it("should do something", function()
				withFlag("NewBehavior", function()
					-- write your tests here
				end)
			end)
		end)
]]
local function withFlag(flagName, callback)
	local oldValue = game:SetFastFlagForTesting(flagName, true)
	local success, message = pcall(callback)

	game:SetFastFlagForTesting(flagName, oldValue)

	assert(success, tostring(message))
end

return withFlag
