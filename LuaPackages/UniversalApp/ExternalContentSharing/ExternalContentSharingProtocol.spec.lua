--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
	local ExternalContentSharingProtocol =
		require(CorePackages.UniversalApp.ExternalContentSharing.ExternalContentSharingProtocol)
	local tutils = require(CorePackages.Packages.tutils)

	describe("ExternalContentSharingProtocol", function()
		beforeAll(function(context)
			context.oldValue = game:SetFastFlagForTesting("EnableExternalContentSharingProtocolLua", true)
			context.ExternalContentSharingProtocol = ExternalContentSharingProtocol.new()
		end)

		afterAll(function(context)
			game:SetFastFlagForTesting("EnableExternalContentSharingProtocolLua", context.oldValue)
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should share external content with text", function(context)
			local didSucceed = false
			context.ExternalContentSharingProtocol:shareText({
				text = "testText",
				context = "testContext",
			})

			context.subscriber:subscribe(
				ExternalContentSharingProtocol.EXTERNAL_CONTENT_SHARING_SHARE_TEXT_DESCRIPTOR,
				function(params)
					jestExpect(params.text).toBe("testText")
					didSucceed = true
				end
			)
			wait()
			jestExpect(didSucceed).toBe(true)
		end)

		it("should share external content with url", function(context)
			local didSucceed = false
			context.ExternalContentSharingProtocol:shareUrl({
				url = "www.roblox.com",
				context = "testContext",
			})

			context.subscriber:subscribe(
				ExternalContentSharingProtocol.EXTERNAL_CONTENT_SHARING_SHARE_URL_DESCRIPTOR,
				function(params)
					jestExpect(params.url).toBe("www.roblox.com")
					didSucceed = true
				end
			)
			wait()
			jestExpect(didSucceed).toBe(true)
		end)
	end)
end
