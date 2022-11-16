return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)
	describe("Virtual events appsflyer patterns", function()
		it("should generate proper event details page url", function()
			local url = UrlBuilder.virtualevents.appsflyer({
				eventId = "123456789"
			})

			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=roblox%3A%2F%2Fnavigation%2Fevent_details%3Feventid%3D123456789" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fevents%2F123456789")
		 end)
	end)
end