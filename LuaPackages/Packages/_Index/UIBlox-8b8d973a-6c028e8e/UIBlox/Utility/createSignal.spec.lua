return function()
	local createSignal = require(script.Parent.createSignal)

	it("should connect and fire signals without errors", function()
		local signal = createSignal()

		local testValue = "Some test value."
		local disconnect = signal:subscribe(function(newValues)
			expect(newValues).to.equal(testValue)
		end)

		signal:fire(testValue)
		disconnect()
	end)

end