return function()
	local SetGameIcons = require(script.Parent.SetGameIcons)

	it("should assert if given a non-table for thumbnailsTable", function()
		SetGameIcons({})

		expect(function()
			SetGameIcons("string")
		end).to.throw()

		expect(function()
			SetGameIcons(0)
		end).to.throw()

		expect(function()
			SetGameIcons(nil)
		end).to.throw()

		expect(function()
			SetGameIcons(false)
		end).to.throw()

		expect(function()
			SetGameIcons(function() end)
		end).to.throw()
	end)
end