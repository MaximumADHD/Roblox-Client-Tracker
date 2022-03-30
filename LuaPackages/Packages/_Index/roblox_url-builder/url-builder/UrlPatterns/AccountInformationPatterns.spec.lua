return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("GET /v1/metadata", function()
		it("should generate proper metadata url", function()
			local url = UrlBuilder.accountinformation.metadata()
			expect(url).to.equal("https://accountinformation.roblox.com/v1/metadata")
		end)
	end)

	describe("GET /v1/phone", function()
		it("should generate proper phone url", function()
			local url = UrlBuilder.accountinformation.phone()
			expect(url).to.equal("https://accountinformation.roblox.com/v1/phone")
		end)
	end)
end
