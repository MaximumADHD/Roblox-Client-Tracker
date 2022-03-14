return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("GET /v1/not-approved", function()
		it("should generate proper url", function()
			local url = UrlBuilder.usermoderation.moderationDetail()
			expect(url).to.equal("https://usermoderation.roblox.com/v1/not-approved")
		end)
	end)

	describe("POST /v1/not-approved/reactivate", function()
		it("should generate proper url", function()
			local url = UrlBuilder.usermoderation.reactivate()
			expect(url).to.equal("https://usermoderation.roblox.com/v1/not-approved/reactivate")
		end)
	end)
end
