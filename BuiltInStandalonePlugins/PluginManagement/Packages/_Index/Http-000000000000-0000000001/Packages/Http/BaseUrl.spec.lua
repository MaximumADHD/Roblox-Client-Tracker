return function()

	local ContentProvider = game:GetService("ContentProvider")
	local Url = require(script.Parent.BaseUrl)

	it("has not changed the base url for debugging", function()
		local baseUrl = ContentProvider.BaseUrl
		expect(baseUrl).to.equal(Url.BASE_URL)
	end)

	describe("new()", function()
		it("should parse out the parts of the base url properly", function()
			local testUrl = Url.new("https://www.roblox.com/")

			expect(testUrl.PREFIX).to.equal("www")
			expect(testUrl.DOMAIN).to.equal("roblox.com/")
		end)

		it("should append a slash if the base url is missing it", function()
			local testUrl = Url.new("http://www.roblox.com")

			expect(testUrl.DOMAIN).to.equal("roblox.com/")
		end)

		it("should construct all of the baseUrls based on the current environment", function()
			local testUrl = Url.new("https://www.roblox.com")
			expect(testUrl.API_URL).to.equal("https://api.roblox.com/")
			expect(testUrl.ASSET_GAME_URL).to.equal("https://assetgame.roblox.com/")
			expect(testUrl.AUTH_URL).to.equal("https://auth.roblox.com/")
			expect(testUrl.CATALOG_URL).to.equal("https://catalog.roblox.com/")
			expect(testUrl.CHAT_URL).to.equal("https://chat.roblox.com/")
			expect(testUrl.DATA_URL).to.equal("https://data.roblox.com/")
			expect(testUrl.DEVELOP_URL).to.equal("https://develop.roblox.com/")
			expect(testUrl.GAME_URL).to.equal("https://games.roblox.com/")
			expect(testUrl.GROUP_URL).to.equal("https://groups.roblox.com/")
			expect(testUrl.ITEM_CONFIGURATION_URL).to.equal("https://itemconfiguration.roblox.com/")
			expect(testUrl.NOTIFICATION_URL).to.equal("https://notifications.roblox.com/")
			expect(testUrl.PUBLISH_URL).to.equal("https://publish.roblox.com/")
			expect(testUrl.REALTIME_URL).to.equal("https://realtime.roblox.com/")
			expect(testUrl.WEB_URL).to.equal("https://web.roblox.com/")
		end)

		it("should properly handle vanity sites and test environments", function()
			local testUrl = Url.new("https://www.sitetest1.robloxlabs.com")
			expect(testUrl.API_URL).to.equal("https://api.sitetest1.robloxlabs.com/")

			testUrl = Url.new("https://kyle.sitetest1.robloxlabs.com")
			expect(testUrl.API_URL).to.equal("https://api.sitetest1.robloxlabs.com/")
		end)
	end)

	describe("makeQueryString()", function()
		it("should construct a proper string of arguments for a url", function()
			local args = {
				test = "a",
				foo = "b"
			}

			local queryArgs = Url.makeQueryString(args)

			-- dictionary iteration is unpredicatable, so test the two expected outputs
			local testOrder1 = queryArgs:find("test=a&foo=b")
			local testOrder2 = queryArgs:find("foo=b&test=a")
			expect((testOrder1 ~= nil) or (testOrder2 ~= nil)).to.equal(true)
		end)

		it("should append the argument multiple times for arrays", function()
			local args = {
				foo = {1, 2, 3}
			}

			local queryArgs = Url.makeQueryString(args)

			local found1 = queryArgs:find("foo=1")
			local found2 = queryArgs:find("foo=2")
			local found3 = queryArgs:find("foo=3")
			expect(found1).to.never.equal(nil)
			expect(found2).to.never.equal(nil)
			expect(found3).to.never.equal(nil)
		end)
	end)
end