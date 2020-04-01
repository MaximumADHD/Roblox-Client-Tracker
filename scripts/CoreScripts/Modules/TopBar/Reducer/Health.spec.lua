return function()
	local TopBar = script.Parent.Parent
	local Actions = TopBar.Actions
	local UpdateHealth = require(Actions.UpdateHealth)
	local SetIsDead = require(Actions.SetIsDead)
	local Health = require(script.Parent.Health)

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = Health(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(defaultState.isDead).to.equal(false)
		expect(defaultState.currentHealth).to.equal(100)
		expect(defaultState.maxHealth).to.equal(100)
	end)

	describe("UpdateHealth", function()
		it("should change the value of health and maxHealth", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, UpdateHealth(15, 30))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentHealth).to.equal(15)
			expect(newState.maxHealth).to.equal(30)
		end)

		it("should not change any other values", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, UpdateHealth(15, 30))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "currentHealth" and key ~= "maxHealth" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)

	describe("SetIsDead", function()
		it("should change the value of isDead", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, SetIsDead(true))
			expect(oldState).to.never.equal(newState)
			expect(newState.isDead).to.equal(true)
		end)

		it("should not change any other values", function()
			local oldState = Health(nil, {})
			local newState = Health(oldState, SetIsDead(true))
			expect(countValues(newState)).to.equal(countValues(oldState))
			for key, value in pairs(newState) do
				if key ~= "isDead" then
					expect(value).to.equal(oldState[key])
				end
			end
		end)
	end)
end