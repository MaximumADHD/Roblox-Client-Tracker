local HttpService = game:GetService("HttpService")
local stringify = require(script.Parent.Parent.stringify)
local NULL = require(script.Parent.Parent.null)

local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

return function()
	describe("stringify", function()
		it("should stringify with no NULL", function()
			local data = {
				data = {
					a = 1,
					b = {
						c = "l",
					},
					d = { 1, 2, 3, 4, 5 },
				},
			}
			local encoded = stringify(data)

			jestExpect(encoded).toEqual('{"data":{"b":{"c":"l"},"d":[1,2,3,4,5],"a":1}}')

			local decoded = HttpService:JSONDecode(encoded)

			expect(decoded).toEqual(data)
		end)

		it("should stringify with one NULL", function()
			local data = {
				data = {
					a = NULL,
					b = {
						c = "l",
					},
					d = { 1, 2, 3, 4, 5 },
				},
			}
			local encoded = stringify(data)

			jestExpect(encoded).toEqual('{"data":{"b":{"c":"l"},"d":[1,2,3,4,5],"a":null}}')

			local decoded = HttpService:JSONDecode(encoded)

			expect(decoded).toEqual({
				data = {
					b = {
						c = "l",
					},
					d = { 1, 2, 3, 4, 5 },
				},
			})
		end)

		it("should stringify with multiple NULL", function()
			local data = {
				data = {
					a = NULL,
					b = {
						c = {
							d = NULL,
						},
						e = "a",
					},
					f = { 1, NULL, 3, NULL, NULL },
				},
			}
			local encoded = stringify(data)

			jestExpect(encoded).toEqual(
				'{"data":{"b":{"e":"a","c":{"d":null}},"f":[1,null,3,null,null],"a":null}}'
			)

			local decoded = HttpService:JSONDecode(encoded)

			expect(decoded).toEqual({
				data = {
					b = {
						c = {},
						e = "a",
					},
					f = { 1, nil, 3, nil, nil },
				},
			})
		end)
	end)
end
