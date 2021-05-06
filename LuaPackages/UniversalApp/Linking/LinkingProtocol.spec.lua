return function()
	local CorePackages = game:GetService("CorePackages")

	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local LinkingProtocol = require(CorePackages.UniversalApp.Linking.LinkingProtocol)
	local tutils = require(CorePackages.Packages.tutils)

	local testUrl = "roblox://navigation/game_details?gameId=123"

	describe("LinkingProtocol", function()
		beforeAll(function(context)
			context.LinkingProtocol = LinkingProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should process open URL requests", function(context)
			local didSucceed = false
			context.LinkingProtocol:openURL(testUrl):andThen(function(success)
				didSucceed = success
				expect(didSucceed).to.equal(true)
			end)

			context.subscriber:subscribe(LinkingProtocol.OPEN_URL_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(LinkingProtocol.OPEN_URL_RESPONSE_DESCRIPTOR, {
					success = true,
				})
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should process is URL registered requests", function(context)
			local didRegister = false
			context.LinkingProtocol:isURLRegistered(testUrl):andThen(function(isRegistered)
				didRegister = isRegistered
				expect(didRegister).to.equal(true)
			end)
			MessageBus.publish(LinkingProtocol.IS_URL_REGISTERED_RESPONSE_DESCRIPTOR, {
				isRegistered = true,
			})
			wait()
			expect(didRegister).to.equal(true)
		end)

		it("should handle Lua URLs", function(context)
			local updatedURL = nil
			context.LinkingProtocol:listenForLuaURLs(function(url)
				updatedURL = url
				expect(updatedURL).to.equal(testUrl)
				context.LinkingProtocol:stopListeningForLuaURLs()
			end)
	
			MessageBus.publish(LinkingProtocol.HANDLE_LUA_URL_DESCRIPTOR, {
				url = testUrl,
				matchedUrl = testUrl,
			})
			wait()
			expect(updatedURL).to.equal(testUrl)
		end)

		it("should return the last URL detected that Lua can handle", function(context)
			expect(context.LinkingProtocol:getLastLuaURL()).to.equal(nil)
			MessageBus.publish(context.LinkingProtocol.HANDLE_LUA_URL_DESCRIPTOR, {
				url = testUrl,
				matchedUrl = testUrl,
			})
			expect(context.LinkingProtocol:getLastLuaURL()).to.equal(testUrl)
		end)
	end)
end
