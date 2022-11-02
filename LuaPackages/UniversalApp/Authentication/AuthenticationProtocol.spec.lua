--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
	local AuthenticationProtocol = require(CorePackages.UniversalApp.Authentication.AuthenticationProtocol)

	describe("AuthenticationProtocol", function()
		beforeAll(function(context)
			context.AuthenticationProtocol = AuthenticationProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should process auth requests and return with no errMessageKey when statusCode is 0", function(context)
			local statusCode
			local messageKey
			context.subscriber:subscribe(AuthenticationProtocol.AUTH_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(
					AuthenticationProtocol.AUTH_RESPONSE_DESCRIPTORS[AuthenticationProtocol.AuthProviders.MSDK], {
						platform = "Win32",
						status = 0,
					})
			end)

			context.AuthenticationProtocol:requestAuth(
				AuthenticationProtocol.AuthProviders.MSDK, AuthenticationProtocol.AuthMethods.WECHAT):andThen(function(result)
					statusCode = result.statusCode
					messageKey = result.errMessageKey
				end):await()

			expect(statusCode).to.equal(0)
			expect(messageKey).to.equal("")
		end)

		it("should process auth requests and return with errMessageKey when statusCode is not 0", function(context)
			local statusCode
			local messageKey
			context.subscriber:subscribe(AuthenticationProtocol.AUTH_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(
					AuthenticationProtocol.AUTH_RESPONSE_DESCRIPTORS[AuthenticationProtocol.AuthProviders.MSDK], {
						platform = "Win32",
						status = 2001,
					})
			end)

			context.AuthenticationProtocol:requestAuth(
				AuthenticationProtocol.AuthProviders.MSDK, AuthenticationProtocol.AuthMethods.WECHAT):andThen(function(result)
					statusCode = result.statusCode
					messageKey = result.errMessageKey
				end):await()

			expect(statusCode).to.equal(2001)
			expect(messageKey).to.equal("Authentication.Login.Label.WeChatVersionNotSupported")
		end)

		it("should process auth requests and return with unknown errMessageKey when statusCode does not exit in errMessageList", function(context)
			local statusCode
			local messageKey
			context.subscriber:subscribe(AuthenticationProtocol.AUTH_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(
					AuthenticationProtocol.AUTH_RESPONSE_DESCRIPTORS[AuthenticationProtocol.AuthProviders.MSDK], {
						platform = "Win32",
						status = 1003,
					})
			end)

			context.AuthenticationProtocol:requestAuth(
				AuthenticationProtocol.AuthProviders.MSDK, AuthenticationProtocol.AuthMethods.QQ):andThen(function(result)
					statusCode = result.statusCode
					messageKey = result.errMessageKey
				end):await()

			expect(statusCode).to.equal(1003)
			expect(messageKey).to.equal("Authentication.Login.Response.TencentLoginFailurePleaseTryAgain")
		end)
	end)
end
