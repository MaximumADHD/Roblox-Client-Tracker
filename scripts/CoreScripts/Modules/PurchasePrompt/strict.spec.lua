return function()
	local strict = require(script.Parent.strict)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should produce a table that throws errors when indexing invalid keys", function()
		local object = strict({
			x = 1,
			y = 3,
		}, "object")

		expect(function()
			print(object.z)
		end).toThrow()
		expect(function()
			object.z = 1
		end).toThrow()

		expect(function()
			object.x = 2
		end).never.toThrow()
	end)

	it("should return the given name with the resulting table's tostring", function()
		local object = strict({
			x = 1,
			y = 3,
		}, "object")

		expect(tostring(object)).toBe("object")
	end)
end
