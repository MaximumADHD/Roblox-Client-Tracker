return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local UpdateHealth = require(Actions.UpdateHealth)
	local SetIsDead = require(Actions.SetIsDead)
	local Health = require(script.Parent.Health)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = Health(nil, {})

		expect(defaultState).toMatchObject({
			isDead = false,
			currentHealth = 100,
			maxHealth = 100,
		})
	end)

	describe("UpdateHealth", function()
		it("should change the value of health and maxHealth", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, UpdateHealth(15, 30))
			expect(oldState).never.toBe(newState)
			expect(newState.currentHealth).toBe(15)
			expect(newState.maxHealth).toBe(30)
		end)

		it("should not change any other values", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, UpdateHealth(15, 30))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "currentHealth" and key ~= "maxHealth" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)

	describe("SetIsDead", function()
		it("should change the value of isDead", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, SetIsDead(true))
			expect(oldState).never.toBe(newState)
			expect(newState.isDead).toBe(true)
		end)

		it("should not change any other values", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, SetIsDead(true))
			expect(countValues(newState)).toBe(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "isDead" then
					expect(value).toBe(oldState[key])
				end
			end
		end)
	end)
end
