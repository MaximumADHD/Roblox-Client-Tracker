return function()
	local RateLimiter = require(script.Parent.RateLimiter)

	it("should rate limit messages", function()
		local limiter = RateLimiter.new({
			period = 60,
			threshold = 2,
			-- Process interval of 0 ensures that the limiter will always
			-- step its internal clock when we step it.
			processInterval = 0,
		})

		local testString = "This is a test message"
		expect(limiter:isRateLimited(testString)).to.equal(false)
		
		limiter:increment(testString, 0)
		expect(limiter:isRateLimited(testString)).to.equal(false)

		limiter:increment(testString, 30)
		expect(limiter:isRateLimited(testString)).to.equal(false)

		limiter:increment(testString, 60)
		expect(limiter:isRateLimited(testString)).to.equal(true)

		limiter:stepDecrementClock(90)
		-- 90 seconds in the limiter timeline, it has recorded three instances of the test string:
		-- The first at 0 seconds, the second at 30, and the third at 60. We _do not expect_ this
		-- to start to decrement counts until it's been 60 seconds since the last occurrence of the
		-- message, so it should still be rate limited.
		expect(limiter:isRateLimited(testString)).to.equal(true)

		-- We're now 130 seconds in (70 seconds after the last instance). It should be decremented
		-- and we should no longer be rate limited.
		limiter:stepDecrementClock(130)
		expect(limiter:isRateLimited(testString)).to.equal(false)

		-- Right now the limiter has 2 of 2 instances. The message isn't rate limited, but another
		-- occurrence will rate limit the message again.
		limiter:increment(testString, 130)
		expect(limiter:isRateLimited(testString)).to.equal(true)
	end)
end
