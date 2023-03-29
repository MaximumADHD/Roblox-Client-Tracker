local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Packages = RobloxAppHooks.Parent
local React = require(Packages.React)

local useLocalUserId = require(script.Parent.useLocalUserId)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local Rodux = require(Packages.Rodux)
local RoactRodux = require(Packages.RoactRodux)
local act = ReactRoblox.act

return function()
	describe("useLocalUserId", function()
		it("SHOULD return local user id", function()
			local result
			local hookWrapper = function()
				result = useLocalUserId()
			end
			local createElement = function()
				return React.createElement(RoactRodux.StoreProvider, {
					store = Rodux.Store.new(function(state, action)
						return {
							LocalUserId = "1234",
						}
					end),
				}, { Component = React.createElement(hookWrapper, {}) })
			end
			local container = Instance.new("Frame")
			local root = ReactRoblox.createRoot(container)

			act(function()
				root:render(createElement())
			end)

			expect(result).toBe("1234")
		end)
	end)
end
