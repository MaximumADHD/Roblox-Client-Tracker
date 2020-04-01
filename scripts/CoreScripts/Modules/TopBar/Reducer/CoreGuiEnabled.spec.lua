return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local UpdateCoreGuiEnabled = require(Actions.UpdateCoreGuiEnabled)
	local CoreGuiEnabled = require(script.Parent.CoreGuiEnabled)

	it("everything should be enabled by default", function()
		local defaultState = CoreGuiEnabled(nil, {})
		expect(type(defaultState)).to.equal("table")

		expect(defaultState[Enum.CoreGuiType.PlayerList]).to.equal(true)
		expect(defaultState[Enum.CoreGuiType.Health]).to.equal(true)
		expect(defaultState[Enum.CoreGuiType.Backpack]).to.equal(true)
		expect(defaultState[Enum.CoreGuiType.Chat]).to.equal(true)
		expect(defaultState[Enum.CoreGuiType.EmotesMenu]).to.equal(true)
	end)

	describe("UpdateCoreGuiEnabled", function()
		it("should change the value of of the given coregui type", function()
			local oldState = CoreGuiEnabled(nil, {})
			local newState = CoreGuiEnabled(oldState, UpdateCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false))
			expect(oldState).to.never.equal(newState)
			expect(newState[Enum.CoreGuiType.PlayerList]).to.equal(false)
		end)

		it("should update all values when passed Enum.CoreGuiType.All", function()
			local oldState = CoreGuiEnabled(nil, {})
			local newState = CoreGuiEnabled(oldState, UpdateCoreGuiEnabled(Enum.CoreGuiType.All, false))

			expect(newState[Enum.CoreGuiType.PlayerList]).to.equal(false)
			expect(newState[Enum.CoreGuiType.Health]).to.equal(false)
			expect(newState[Enum.CoreGuiType.Backpack]).to.equal(false)
			expect(newState[Enum.CoreGuiType.Chat]).to.equal(false)
			expect(newState[Enum.CoreGuiType.EmotesMenu]).to.equal(false)
		end)
	end)
end