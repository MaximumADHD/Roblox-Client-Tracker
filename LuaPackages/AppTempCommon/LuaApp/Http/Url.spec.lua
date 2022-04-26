return function()

	local ContentProvider = game:GetService("ContentProvider")
	local Url = require(script.Parent.Url)

	it("The base url has not been changed for debugging", function()
		local baseUrl = ContentProvider.BaseUrl

		baseUrl = string.gsub(baseUrl, "http://", "https://")
		expect(baseUrl).to.equal(Url.BASE_URL_SECURE)
	end)

end
