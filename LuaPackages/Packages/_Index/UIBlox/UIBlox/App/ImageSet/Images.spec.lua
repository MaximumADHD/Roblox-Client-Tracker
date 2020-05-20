return function()
	local Images = require(script.Parent.Images)

	it("should throw on invalid key", function()
		expect(function()
			local _ = Images["never a real key"]
		end).to.throw()
	end)
end