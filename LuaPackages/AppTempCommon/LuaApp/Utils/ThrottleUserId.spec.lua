return function()
	local ThrottleUserId = require(script.Parent.ThrottleUserId)

	describe("ThrottleUserId", function()
		it("should always reject zero%", function()
			local gating = ThrottleUserId(0, 10000)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(0, 10001)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(0, 10025)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(0, 10075)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(0, 10099)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(0, 10100)
			expect(gating).to.equal(false)
		end)

		it("should always accept 100%", function()
			local gating = ThrottleUserId(100, 10000)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(100, 10001)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(100, 10025)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(100, 10075)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(100, 10099)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(100, 10100)
			expect(gating).to.equal(true)
		end)

		it("should reject IDs over throttle percent", function()
			local gating = ThrottleUserId(25, 10050)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(50, 10075)
			expect(gating).to.equal(false)

			gating = ThrottleUserId(75, 10099)
			expect(gating).to.equal(false)
		end)

		it("should accept IDs under throttle percent", function()
			local gating = ThrottleUserId(1, 10100)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(10, 10109)
			expect(gating).to.equal(true)

			gating = ThrottleUserId(25, 10023)
			expect(gating).to.equal(true)
		end)
	end)
end
