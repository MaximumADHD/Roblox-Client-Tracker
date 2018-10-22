return function()
	local Plugin = script.Parent.Parent.Parent

	local isEmpty = require(Plugin.Src.Util.isEmpty)

	it("should return true when the table is empty", function()
		local emptyTable = {}

		expect(isEmpty(emptyTable)).to.equal(true)
	end)

	it("should return false when the table is not empty", function()
		local notEmptyTable = {
			Key = "value"
		}

		expect(isEmpty(notEmptyTable)).to.equal(false)
	end)
end