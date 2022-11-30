return function()
	local SetPlayabilityStatus = require(script.Parent.SetPlayabilityStatus)

	it("should assert if given a non-table for universeIds", function()
		SetPlayabilityStatus({})

		expect(function()
			SetPlayabilityStatus(0)
		end).to.throw()

		expect(function()
			SetPlayabilityStatus(nil)
		end).to.throw()

		expect(function()
			SetPlayabilityStatus("foo")
		end).to.throw()

		expect(function()
			SetPlayabilityStatus(false)
		end).to.throw()

		expect(function()
			SetPlayabilityStatus(function() end)
		end).to.throw()
	end)
end
