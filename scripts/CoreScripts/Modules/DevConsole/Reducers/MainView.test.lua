local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local MainView = require(script.Parent.Parent.Reducers.MainView)
local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)
local SetTabList = require(script.Parent.Parent.Actions.SetTabList)

local FFlagDevConsoleTabReselectKeepsClientView = require(script.Parent.Flags.FFlagDevConsoleTabReselectKeepsClientView)

it("has the expected fields, and only the expected fields", function()
	local state = MainView(nil, {})

	local expectedKeys = {
		isDeveloperView = false,
		isClientView = true,
		tabList = {},
		currTab = nil,
	}

	for key in pairs(expectedKeys) do
		assert(state[key] ~= nil, string.format("Expected field %q", key))
	end

	for key in pairs(state) do
		assert(expectedKeys[key] ~= nil, string.format("Did not expect field %q", key))
	end
end)

describe("SetActiveTab on the already-active tab", function()
	local function stateAfterReselect(logTab, isClientView)
		local state = MainView(nil, SetTabList({ Log = logTab }, "Log", false))
		return MainView(state, SetActiveTab("Log", isClientView))
	end

	it("switches a client/server tab to the server view when asked", function()
		local state = stateAfterReselect({ layoutOrder = 1, hasClientServer = true }, false)

		expect(state.currTabIndex).toBe("Log")
		expect(state.isClientView).toBe(false)
	end)

	if FFlagDevConsoleTabReselectKeepsClientView then
		it("keeps the client view for a tab without a client/server split", function()
			local state = stateAfterReselect({ layoutOrder = 1 }, nil)

			expect(state.currTabIndex).toBe("Log")
			expect(state.isClientView).toBe(true)
		end)
	end

	if not FFlagDevConsoleTabReselectKeepsClientView then
		it("drops isClientView for a tab without a client/server split", function()
			local state = stateAfterReselect({ layoutOrder = 1 }, nil)

			expect(state.currTabIndex).toBe("Log")
			expect(state.isClientView).toBeNil()
		end)
	end
end)
