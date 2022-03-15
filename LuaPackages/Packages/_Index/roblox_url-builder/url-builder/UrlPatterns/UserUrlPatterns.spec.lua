return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	local USER_ID = "123"

	describe("User URL Patterns", function()
		it("should generate proper profile url without sourceType", function()
			local url = UrlBuilder.user.profile({
				userId = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/users/123/profile")
		end)

		it("should generate proper profile url with empty sourceType", function()
			local url = UrlBuilder.user.profile({
				userId = USER_ID,
				sourceType = "",
			})
			expect(url).to.equal("https://www.roblox.com/users/123/profile")
		end)

		it("should generate proper profile url with non-empty sourceType", function()
			local url = UrlBuilder.user.profile({
				userId = USER_ID,
				sourceType = "anytype",
			})
			expect(url).to.equal("https://www.roblox.com/users/123/profile?friendshipSourceType=anytype")
		end)

		it("should generate proper group url", function()
			local url = UrlBuilder.user.group({
				groupId = "456",
				groupName = "MY_GROUP",
			})
			expect(url).to.equal("https://www.roblox.com/groups/456/MY_GROUP#!/about")
		end)

		it("should generate proper friends url", function()
			local url = UrlBuilder.user.friends({
				userId = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/users/123/friends")
		end)

		it("should generate proper inventory url", function()
			local url = UrlBuilder.user.inventory({
				userId = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/users/123/inventory")
		end)

		it("should generate proper search url", function()
			local url = UrlBuilder.user.search({
				keyword = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/search/users?keyword=123")
		end)

		it("should generate proper profileWithFriendshipSourceType url", function()
			local url = UrlBuilder.user.profileWithFriendshipSourceType({
				userId = USER_ID,
				sourceType = "HOME",
			})
			expect(url).to.equal("https://www.roblox.com/users/123/profile?friendshipSourceType=HOME")
		end)

		it("should generate proper followers url", function()
			local url = UrlBuilder.user.followers({
				userId = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/users/123/friends#!/followers")
		end)

		it("should generate proper following url", function()
			local url = UrlBuilder.user.following({
				userId = USER_ID,
			})
			expect(url).to.equal("https://www.roblox.com/users/123/friends#!/following")
		end)

		it("should generate proper report url", function()
			local url = UrlBuilder.user.report({
				userId = USER_ID,
				conversationId = "789",
			})
			local redirecturl = UrlBuilder.fromString("www:home")()
			print("redirecturl", redirecturl)

			expect(url).to.equal(
				"https://www.roblox.com/abusereport/embedded/chat?id=123&actionName=chat&conversationId=789&redirecturl=https%3A%2F%2Fwww.roblox.com%2Fhome"
			)
		end)

		it("should generate proper appsflyer url", function()
			local url = UrlBuilder.user.appsflyer({
				userId = USER_ID,
				sourceType = "ProfileShare",
			})
			local mobileUrl = "roblox%3A%2F%2Fnavigation%2Fprofile%3FuserId%3D123%26friendshipSourceType%3DProfileShare"
			local webUrl = "https%3A%2F%2Fwww.roblox.com%2Fusers%2F123%2Fprofile%3FfriendshipSourceType%3DProfileShare"
			expect(url).to.equal(
				"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=" .. mobileUrl .. "&af_web_dp=" .. webUrl
			)
		end)
	end)
end
