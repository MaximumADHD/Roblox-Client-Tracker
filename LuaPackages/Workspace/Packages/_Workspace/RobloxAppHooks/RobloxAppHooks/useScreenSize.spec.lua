local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Packages = RobloxAppHooks.Parent
local React = require(Packages.React)

local useScreenSize = require(script.Parent.useScreenSize)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local Rodux = require(Packages.Rodux)
local RoactRodux = require(Packages.RoactRodux)
local act = ReactRoblox.act

return function()
	describe("useScreenSize", function()
		it("SHOULD return local user id", function()
			local result
			local hookWrapper = function()
				result = useScreenSize()
			end
			local createElement = function()
				return React.createElement(RoactRodux.StoreProvider, {
					store = Rodux.Store.new(function(state, action)
						return {
							ScreenSize = Vector2.new(1, 2),
						}
					end),
				}, { Component = React.createElement(hookWrapper, {}) })
			end
			local container = Instance.new("Frame")
			local root = ReactRoblox.createRoot(container)

			act(function()
				root:render(createElement())
			end)

			expect(result).toBe(Vector2.new(1, 2))
		end)
	end)
end
