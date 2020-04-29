return function()
	local validateMotor = require(script.Parent.validateMotor)
	local createSpy = require(script.Parent.createSpy)

	local createSingleMotor = require(script.Parent.createSingleMotor)


	local identityGoal = {
		step = function(self, state, dt)
			return state
		end,
	}

	-- test motion object that completes after step has been called numSteps times
	local function createStepper(numSteps)
		local self = {
			stepCount = 0,
		}

		self.step = function(_, state, dt)
			self.stepCount = self.stepCount + 1

			if self.stepCount >= numSteps then
				return {
					value = state.value,
					velocity = state.velocity,
					complete = true,
				}
			end

			return state
		end

		setmetatable(self, {
			__index = function(_, key)
				error(("%q is not a valid member of stepper"):format(key))
			end,
		})

		return self
	end

	it("should be a valid motor", function()
		local motor = createSingleMotor(0)
		validateMotor(motor)
		motor:destroy()
	end)

	it("should invoke subscribers with new values", function()
		local motor = createSingleMotor(8)
		motor:setGoal(identityGoal)

		local spy = createSpy()

		local disconnect = motor:onStep(spy.value)

		expect(spy.callCount).to.equal(0)

		motor:step(1)

		expect(spy.callCount).to.equal(1)
		spy:assertCalledWith(8)

		disconnect()

		motor:step(1)

		expect(spy.callCount).to.equal(1)

		motor:destroy()
	end)

	describe("onComplete should be called when", function()
		it("has completed its motion", function()
			local motor = createSingleMotor(0)
			motor:setGoal(createStepper(5))

			local spy = createSpy()

			motor:onComplete(spy.value)

			for _ = 1, 5 do
				motor:step(1)
			end

			expect(spy.callCount).to.equal(1)

			motor:destroy()
		end)

		it("has restarted its motion", function()
			local motor = createSingleMotor(0)
			motor:setGoal(createStepper(5))

			local spy = createSpy()

			motor:onComplete(spy.value)

			expect(spy.callCount).to.equal(0)

			for _ = 1, 5 do
				motor:step(1)
			end

			expect(spy.callCount).to.equal(1)

			motor:setGoal(createStepper(5))

			for _ = 1, 5 do
				motor:step(1)
			end

			expect(spy.callCount).to.equal(2)

			motor:destroy()
		end)
	end)

	describe("onComplete should not be called when", function()
		it("has not completed motion", function()
			local motor = createSingleMotor(0)
			motor:setGoal(createStepper(10))

			local spy = createSpy()

			motor:onComplete(spy.value)

			motor:step(1)

			expect(spy.callCount).to.equal(0)

			motor:destroy()
		end)

		it("does not call step", function()
			local motor = createSingleMotor(0)
			motor:setGoal(createStepper(0))

			local spy = createSpy()

			motor:onComplete(spy.value)

			expect(spy.callCount).to.equal(0)

			motor:destroy()
		end)
	end)
end