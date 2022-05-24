local buildApiSiteUrl = require(script.Parent.buildApiSiteUrl)
local Packages = script.Parent.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect

return function()
	it("should build a url with valid string", function()
		local url = buildApiSiteUrl("friends")

		expect(url).toEqual("https://friends.roblox.com/")
	end)

	it("should fail with no parameters passed", function()
		expect(function()
			buildApiSiteUrl()
		end).toThrow()
	end)

	it("should fail with numbers", function()
		expect(function()
			buildApiSiteUrl(534)
		end).toThrow()
	end)
end
