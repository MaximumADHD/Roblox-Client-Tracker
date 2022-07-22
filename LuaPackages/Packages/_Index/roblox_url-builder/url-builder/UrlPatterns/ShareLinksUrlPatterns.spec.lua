--!strict
return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("appsflyer link", function()
		it("should generate proper url", function()
			local url = UrlBuilder.sharelinks.appsflyer("12345", "EXPERIENCE_INVITE")
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D12345%26type%3DEXPERIENCE_INVITE")
		end)
	end)
end
