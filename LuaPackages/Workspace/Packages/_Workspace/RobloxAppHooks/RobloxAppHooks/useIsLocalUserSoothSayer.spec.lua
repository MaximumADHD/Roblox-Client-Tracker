local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Packages = RobloxAppHooks.Parent
local React = require(Packages.React)

local useIsLocalUserSoothSayer = require(script.Parent.useIsLocalUserSoothSayer)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local Rodux = require(Packages.Rodux)
local RoactRodux = require(Packages.RoactRodux)
local act = ReactRoblox.act

return function()
	describe("useIsLocalUserSoothSayer", function()
		it("SHOULD return local user id", function()
			local result
			local hookWrapper = function()
				result = useIsLocalUserSoothSayer()
			end
			local createElement = function()
				return React.createElement(RoactRodux.StoreProvider, {
					store = Rodux.Store.new(function(state, action)
						return {
							IsLocalUserSoothsayer = true,
						}
					end),
				}, { Component = React.createElement(hookWrapper, {}) })
			end
			local container = Instance.new("Frame")
			local root = ReactRoblox.createRoot(container)

			act(function()
				root:render(createElement())
			end)

			expect(result).toBe(true)
		end)
	end)
end
