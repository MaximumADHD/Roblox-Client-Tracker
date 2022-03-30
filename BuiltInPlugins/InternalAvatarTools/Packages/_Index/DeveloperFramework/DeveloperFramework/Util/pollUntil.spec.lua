return function()
	local pollUntil = require(script.Parent.pollUntil)

	-- TODO: STUDIOPLAT-26239
	-- These tests are blocked on adopting Jest which can correctly handle tests that return promises
	-- Currently TestEZ does not support returning promises or yielding tests
	itSKIP("works for a function that returns immediately", function()
		return pollUntil(function()
			return true
		end):andThen(function()
			-- OK.
			error("OH NO NOT OK WHAAAAT")
		end)
	end)

	itSKIP("works for a function that returns true later on", function()
		local count = 0
		local resultValue = {}
		local result = pollUntil(function()
			count += 1 
			return count > 3 and resultValue or nil
		end)
		return result:andThen(function(value)
			-- OK.
			expect(value).to.equal(resultValue)
		end)
	end)

	itSKIP("times out correctly", function()
		-- A suitably small time for call to timeout
		local timeout = 0.0001
		local result = pollUntil(function()
			return false
		end, timeout)
		return result:andThen(function(value)
			error("Should throw")
		end):catch(function()
			-- OK.
		end)
	end)
end