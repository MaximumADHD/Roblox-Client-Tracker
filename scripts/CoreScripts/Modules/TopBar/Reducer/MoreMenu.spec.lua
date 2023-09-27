return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)
	local SetBackpackOpen = require(Actions.SetBackpackOpen)
	local SetEmotesOpen = require(Actions.SetEmotesOpen)
	local SetLeaderboardOpen = require(Actions.SetLeaderboardOpen)
	local SetEmotesEnabled = require(Actions.SetEmotesEnabled)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local MoreMenu = require(script.Parent.MoreMenu)

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = MoreMenu(nil, {})
		expect(defaultState).toMatchObject({
			open = false,
			backpackOpen = false,
			leaderboardOpen = false,
			emotesOpen = false,
		})
	end)

	describe("SetMoreMenuOpen", function()
		it("should change the value of open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetMoreMenuOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.open).toBe(true)
		end)

		it("should not change any other values", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetMoreMenuOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "open" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetBackpackOpen", function()
		it("should change the value of backpackOpen", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetBackpackOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.backpackOpen).toBe(true)
		end)

		it("should not change any other values except open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetBackpackOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "backpackOpen" and key ~= "open" then
					expect(value).toBe(oldState[key])
				end
			end
		end)

		it("should set open to false when changed", function()
			local oldState = MoreMenu(nil, {})
			oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
			local newState = MoreMenu(oldState, SetBackpackOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.open).toBe(false)
		end)
	end)

	describe("SetEmotesOpen", function()
		it("should change the value of emotesOpen", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.emotesOpen).toBe(true)
		end)

		it("should not change any other values except open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "emotesOpen" and key ~= "open" then
					expect(value).toBe(oldState[key])
				end
			end
		end)

		it("should set open to false when changed", function()
			local oldState = MoreMenu(nil, {})
			oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
			local newState = MoreMenu(oldState, SetEmotesOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.open).toBe(false)
		end)
	end)

	describe("SetEmotesEnabled", function()
		it("should change the value of emotesEnabled", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesEnabled(false))
			expect(oldState).never.toBe(newState)
			expect(newState.emotesEnabled).toBe(false)
		end)

		it("should not change any other values", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesEnabled(false))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "emotesEnabled" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetLeaderboardOpen", function()
		it("should change the value of open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.leaderboardOpen).toBe(true)
		end)

		it("should not change any other values except open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "leaderboardOpen" and key ~= "open" then
					expect(value).toBe(oldState[key])
				end
			end
		end)

		it("should set open to false when changed", function()
			local oldState = MoreMenu(nil, {})
			oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
			local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
			expect(oldState).never.toBe(newState)
			expect(newState.open).toBe(false)
		end)
	end)
end
