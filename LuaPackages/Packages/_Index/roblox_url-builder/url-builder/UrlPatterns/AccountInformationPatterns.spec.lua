return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("GET /v1/metadata", function()
		it("should generate proper url", function()
			local url = UrlBuilder.accountinformation.metadata()
			expect(url).to.equal("https://accountinformation.roblox.com/v1/metadata")
		end)
	end)
end
