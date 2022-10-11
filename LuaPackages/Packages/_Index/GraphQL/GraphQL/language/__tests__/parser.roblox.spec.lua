--!nocheck
-- ROBLOX deviation: no upstream tests

return function()
	local languageWorkspace = script.Parent.Parent

	local Kind = require(languageWorkspace.kinds).Kind
	local parser = require(languageWorkspace.parser)
	local parseValue = parser.parseValue
	local toJSONDeep = require(script.Parent.toJSONDeep).toJSONDeep

	describe("Parser - Roblox", function()
		describe("parseValue", function()
			it("parses Int value", function()
				local result = parseValue("123")

				expect(toJSONDeep(result)).toEqual({
					kind = Kind.INT,
					loc = { start = 1, _end = 4 },
					value = "123",
				})
			end)

			it("parses String value", function()
				local result = parseValue('"abc"')

				expect(toJSONDeep(result)).toEqual({
					kind = Kind.STRING,
					loc = { start = 1, _end = 6 },
					value = "abc",
					block = false,
				})
			end)

			it("parses empty list", function()
				local result = parseValue("[]")

				expect(toJSONDeep(result)).toEqual({
					kind = Kind.LIST,
					loc = { start = 1, _end = 3 },
					values = {},
				})
			end)
		end)
	end)
end
