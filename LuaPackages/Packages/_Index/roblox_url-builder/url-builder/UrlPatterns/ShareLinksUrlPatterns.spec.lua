--!strict
return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("appsflyer link", function()
		it("should generate proper url", function()
			local url = UrlBuilder.sharelinks.appsflyer("12345", "ExperienceInvite")
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D12345%26type%3DExperienceInvite" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D12345%26type%3DExperienceInvite")
		end)
	end)
end
