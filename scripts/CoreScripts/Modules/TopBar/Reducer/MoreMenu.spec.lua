return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)
	local SetBackpackOpen = require(Actions.SetBackpackOpen)
	local SetEmotesOpen = require(Actions.SetEmotesOpen)
	local SetLeaderboardOpen = require(Actions.SetLeaderboardOpen)
	local SetEmotesEnabled = require(Actions.SetEmotesEnabled)

	local MoreMenu = require(script.Parent.MoreMenu)

	local FFlagTopBarCloseContextMenuWhenHotkeysUsed = game:GetFastFlag(
		"TopBarCloseContextMenuWhenHotkeysUsed"
	)

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = MoreMenu(nil, {})
		expect(type(defaultState)).to.equal("table")
		expect(defaultState.open).to.equal(false)
		expect(defaultState.backpackOpen).to.equal(false)
		expect(defaultState.leaderboardOpen).to.equal(false)
		expect(defaultState.emotesOpen).to.equal(false)
	end)

	describe("SetMoreMenuOpen", function()
		it("should change the value of open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetMoreMenuOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.open).to.equal(true)
		end)

		it("should not change any other values", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetMoreMenuOpen(true))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "open" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetBackpackOpen", function()
		it("should change the value of backpackOpen", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetBackpackOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.backpackOpen).to.equal(true)
		end)

		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			it("should not change any other values except open", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetBackpackOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "backpackOpen" and key ~= "open" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)

			it("should set open to false when changed", function()
				local oldState = MoreMenu(nil, {})
				oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
				local newState = MoreMenu(oldState, SetBackpackOpen(true))
				expect(oldState).to.never.equal(newState)
				expect(newState.open).to.equal(false)
			end)
		else
			it("should not change any other values", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetBackpackOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "backpackOpen" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)
		end
	end)

	describe("SetEmotesOpen", function()
		it("should change the value of emotesOpen", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.emotesOpen).to.equal(true)
		end)

		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			it("should not change any other values except open", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetEmotesOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "emotesOpen" and key ~= "open" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)

			it("should set open to false when changed", function()
				local oldState = MoreMenu(nil, {})
				oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
				local newState = MoreMenu(oldState, SetEmotesOpen(true))
				expect(oldState).to.never.equal(newState)
				expect(newState.open).to.equal(false)
			end)
		else
			it("should not change any other values", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetEmotesOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "emotesOpen" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)
		end
	end)

	describe("SetEmotesEnabled", function()
		it("should change the value of emotesEnabled", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesEnabled(false))
			expect(oldState).to.never.equal(newState)
			expect(newState.emotesEnabled).to.equal(false)
		end)

		it("should not change any other values", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetEmotesEnabled(false))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "emotesEnabled" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetLeaderboardOpen", function()
		it("should change the value of open", function()
			local oldState = MoreMenu(nil, {})
			local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.leaderboardOpen).to.equal(true)
		end)

		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			it("should not change any other values except open", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "leaderboardOpen" and key ~= "open" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)

			it("should set open to false when changed", function()
				local oldState = MoreMenu(nil, {})
				oldState = MoreMenu(oldState, SetMoreMenuOpen(true))
				local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
				expect(oldState).to.never.equal(newState)
				expect(newState.open).to.equal(false)
			end)
		else
			it("should not change any other values", function()
				local oldState = MoreMenu(nil, {})
				local newState = MoreMenu(oldState, SetLeaderboardOpen(true))
				expect(countValues(newState)).to.equal(countValues(oldState))
				for key, value in pairs(newState) do
					if key ~= "leaderboardOpen" then
						expect(value).to.equal(oldState[key])
					end
				end
			end)
		end
	end)
end