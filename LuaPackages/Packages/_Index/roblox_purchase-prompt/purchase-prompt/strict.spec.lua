return function()
	local strict = require(script.Parent.strict)

	it("should produce a table that throws errors when indexing invalid keys", function()
		local object = strict({
			x = 1,
			y = 3,
		}, "object")

		expect(function()
			print(object.z)
		end).to.throw()
		expect(function()
			object.z = 1
		end).to.throw()

		expect(function()
			object.x = 2
		end).never.to.throw()
	end)

	it("should return the given name with the resulting table's tostring", function()
		local object = strict({
			x = 1,
			y = 3,
		}, "object")

		expect(tostring(object)).to.equal("object")
	end)
end