local API = require(script.Parent)
local Networking = require(script.Parent.Parent.Networking)

return function()
	describe("new()", function()
		it("should construct without arguments", function()
			local api = API.new()
			expect(api).to.be.ok()
		end)

		it("should construct with a Networking object", function()
			local networkingImpl = Networking.mock()
			local api = API.new({
				networking = networkingImpl,
			})
			expect(api).to.be.ok()
		end)
	end)

	describe("mock()", function()
		it("should construct without arguments", function()
			local api = API.mock()
			expect(api).to.be.ok()
		end)

		it("should construct with a map of responses", function()
			local api = API.mock({
				["www.fakeSite.com/testAPI"] = {
					Body = "{}",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				},
			})
			expect(api).to.be.ok()
		end)
	end)
end