local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect

local Headers = require(script.Parent.Headers).Headers

return function()
	describe("constructor", function()
		it("should accept a list of string pairs", function()
			local headers = Headers.new({
				{ "key1", "value1" },
				{ "key2", "value2" },
			})

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)

		it("should accept nil", function()
			local headers = Headers.new(nil)

			jestExpect(headers.headerList).toEqual({})
		end)

		it("should expect an object of key-value strings", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)
	end)

	describe("append", function()
		it("should not append values on immutable Headers", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers.guard = "immutable"
			jestExpect(function()
				headers:append("key3", "value3")
			end).toThrow("TypeError: tried to append header to immutable Headers object")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)

		it("should append headers", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers:append("key3", "value3")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
				key3 = "value3",
			})
		end)
	end)

	describe("delete", function()
		it("should not delete immutable", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers.guard = "immutable"

			jestExpect(function()
				headers:delete("key2")
			end).toThrow("TypeError: tried to delete key on immutable Headers object")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)

		it("should delete headers", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers:delete("key2")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
			})
		end)

		it("should return if key does not exist", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers:delete("key3")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)
	end)

	it("should get values", function()
		local headers = Headers.new({
			key1 = "value1",
			key2 = "value2",
		})

		jestExpect(headers:get("key1")).toEqual("value1")
		jestExpect(headers:get("key3")).toEqual(nil)
	end)

	describe("set", function()
		it("should not set values on immutable Headers", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			headers.guard = "immutable"
			jestExpect(function()
				headers:set("key2", "value3")
			end).toThrow("TypeError: tried to set key on immutable Headers object")

			jestExpect(headers.headerList).toEqual({
				key1 = "value1",
				key2 = "value2",
			})
		end)
	end)

	describe("iter", function()
		it("should iterate over key, value pairs", function()
			local headers = Headers.new({
				key1 = "value1",
				key2 = "value2",
			})

			local headerList = {}
			for key, value in headers do
				headerList[key] = value
			end

			jestExpect(headerList).toEqual(headers.headerList)
		end)
	end)
end
