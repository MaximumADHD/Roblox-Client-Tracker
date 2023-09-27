return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local UpdateCoreGuiEnabled = require(Actions.UpdateCoreGuiEnabled)
	local CoreGuiEnabled = require(script.Parent.CoreGuiEnabled)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("everything should be enabled by default", function()
		local defaultState = CoreGuiEnabled(nil, {})
		expect(defaultState).toMatchObject({
			[Enum.CoreGuiType.PlayerList] = true,
			[Enum.CoreGuiType.Health] = true,
			[Enum.CoreGuiType.Backpack] = true,
			[Enum.CoreGuiType.Chat] = true,
			[Enum.CoreGuiType.EmotesMenu] = true,
		})
	end)

	describe("UpdateCoreGuiEnabled", function()
		it("should change the value of of the given coregui type", function()
			local oldState = CoreGuiEnabled(nil, {})
			local newState = CoreGuiEnabled(oldState, UpdateCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false))
			expect(oldState).never.toBe(newState)
			expect(newState[Enum.CoreGuiType.PlayerList]).toBe(false)
		end)

		it("should update all values when passed Enum.CoreGuiType.All", function()
			local oldState = CoreGuiEnabled(nil, {})
			local newState = CoreGuiEnabled(oldState, UpdateCoreGuiEnabled(Enum.CoreGuiType.All, false))

			expect(newState[Enum.CoreGuiType.PlayerList]).toBe(false)
			expect(newState[Enum.CoreGuiType.Health]).toBe(false)
			expect(newState[Enum.CoreGuiType.Backpack]).toBe(false)
			expect(newState[Enum.CoreGuiType.Chat]).toBe(false)
			expect(newState[Enum.CoreGuiType.EmotesMenu]).toBe(false)
		end)
	end)
end
