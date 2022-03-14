return function()

	local ContentProvider = game:GetService("ContentProvider")
	local Url = require(script.Parent.Url)

	local FFlagLuaAppBaseUrlUseHttps = game:DefineFastFlag("LuaAppBaseUrlUseHttps", false)

	it("The base url has not been changed for debugging", function()
		local baseUrl = ContentProvider.BaseUrl

		if FFlagLuaAppBaseUrlUseHttps then
			baseUrl = string.gsub(baseUrl, "http://", "https://")
			expect(baseUrl).to.equal(Url.BASE_URL_SECURE)
		else
			expect(baseUrl).to.equal(Url.BASE_URL)
		end

	end)

end
