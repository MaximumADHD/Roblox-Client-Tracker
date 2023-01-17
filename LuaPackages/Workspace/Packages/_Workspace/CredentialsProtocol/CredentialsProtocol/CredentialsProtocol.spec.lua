--!nonstrict
return function()
	local HttpService = game:GetService("HttpService")
	local Root = script.Parent
	local Packages = Root.Parent

	local Promise = require(Packages.Promise)
	local MessageBus = require(Packages.MessageBus).MessageBus
	local CredentialsProtocol = require(script.Parent.CredentialsProtocol)
	local timeout = 0.3
	local noopCalled = 0
	local noopFunction = function()
		noopCalled += 1
	end

	local getResponseParams = {
		response = {
			authenticatorData = "authenticator data",
			clientDataJSON = "client data JSON",
			signature = "signature",
		},
	}
	local getRequestParams = {
		keyType = "hardware",
		publicKey = {
			challenge = "challenge",
		},
	}
	local registerResponseParams = {
		response = {
			attestationObject = "attestation object",
			clientDataJSON = "client data JSON",
		},
	}
	local registerRequestParams = {
		keyType = "platform",
		publicKey = {
			rp = {
				name = "roblox.com",
				id = "rp id",
			},
			user = {
				name = "user name",
				displayName = "user display name",
				id = "user id",
			},
			challenge = "challenge",
		},
	}

	local getResponseParamsEncoded = HttpService:JSONEncode(getResponseParams)
	local getRequestParamsEncoded = HttpService:JSONEncode(getRequestParams)
	local registerResponseParamsEncoded = HttpService:JSONEncode(registerResponseParams)
	local registerRequestParamsEncoded = HttpService:JSONEncode(registerRequestParams)

	local awaitNativeResponse = nil
	local promiseRejected = false

	describe("CredentialsProtocol", function()
		beforeAll(function(context)
			context.CredentialsProtocol = CredentialsProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
			noopCalled = 0
			awaitNativeResponse = nil
			promiseRejected = false
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it(
			"should take authentication params and return an assertion object when calling get credentials",
			function(context)
				context.subscriber:subscribe(
					CredentialsProtocol.GET_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
					function(params)
						MessageBus.publish(
							CredentialsProtocol.GET_CREDENTIALS_RESPONSE_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
							getResponseParams
						)
					end
				)
				context.CredentialsProtocol
					:getCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, getRequestParamsEncoded, timeout)
					:andThen(function(result)
						awaitNativeResponse = result
					end)
					:await()
				expect(awaitNativeResponse).to.equal(getResponseParamsEncoded)
			end
		)

		it(
			"should wait for timeout and get rejected promise if get credentials request already in flight",
			function(context)
				context.subscriber:subscribe(
					CredentialsProtocol.GET_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
					noopFunction
				)
				context.CredentialsProtocol:getCredentials(
					CredentialsProtocol.CredentialsTypes.FIDO2,
					getRequestParamsEncoded,
					timeout
				)
				context.CredentialsProtocol
					:getCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, getRequestParamsEncoded, timeout)
					:andThen(function(result)
						awaitNativeResponse = result
					end, function()
						promiseRejected = true
					end)
					:await()
				expect(awaitNativeResponse).to.equal(nil)
				expect(promiseRejected).to.equal(true)

				Promise.delay(timeout):await()
				expect(noopCalled).to.equal(1)
			end
		)

		it("should be allowed to send get credentials request if timeout completes", function(context)
			context.subscriber:subscribe(
				CredentialsProtocol.GET_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
				noopFunction
			)
			context.CredentialsProtocol:getCredentials(
				CredentialsProtocol.CredentialsTypes.FIDO2,
				getRequestParamsEncoded,
				timeout
			)
			context.CredentialsProtocol
				:getCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, getRequestParamsEncoded, timeout)
				:andThen(function(result)
					awaitNativeResponse = result
				end, function()
					promiseRejected = true
				end)
				:await()
			expect(awaitNativeResponse).to.equal(nil)
			expect(promiseRejected).to.equal(true)

			Promise.delay(timeout):await()
			context.CredentialsProtocol
				:getCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, getRequestParamsEncoded, timeout)
				:andThen(function(result)
					promiseRejected = false
					awaitNativeResponse = result
				end, function()
					promiseRejected = true
				end)
				:await()
			expect(awaitNativeResponse).to.equal(nil)
			expect(promiseRejected).to.equal(false)
			expect(noopCalled).to.equal(2)
		end)

		it(
			"should take registration params and return an attestation object when calling register credentials",
			function(context)
				context.subscriber:subscribe(
					CredentialsProtocol.REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
					function(params)
						MessageBus.publish(
							CredentialsProtocol.REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
							registerResponseParams
						)
					end
				)
				context.CredentialsProtocol
					:registerCredentials(
						CredentialsProtocol.CredentialsTypes.FIDO2,
						registerRequestParamsEncoded,
						timeout
					)
					:andThen(function(result)
						awaitNativeResponse = result
					end)
					:await()
				expect(awaitNativeResponse).to.equal(registerResponseParamsEncoded)
			end
		)

		it("should get rejected promise if register credentials request already in flight", function(context)
			context.subscriber:subscribe(
				CredentialsProtocol.REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
				noopFunction
			)
			context.CredentialsProtocol:registerCredentials(
				CredentialsProtocol.CredentialsTypes.FIDO2,
				registerRequestParamsEncoded,
				timeout
			)
			context.CredentialsProtocol
				:registerCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, registerRequestParamsEncoded, timeout)
				:andThen(function(result)
					awaitNativeResponse = result
				end, function()
					promiseRejected = true
				end)
				:await()
			expect(awaitNativeResponse).to.equal(nil)
			expect(promiseRejected).to.equal(true)

			Promise.delay(timeout):await()
			expect(noopCalled).to.equal(1)
		end)

		it("should be allowed to send register credentials request if timeout completes", function(context)
			context.subscriber:subscribe(
				CredentialsProtocol.REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR[CredentialsProtocol.CredentialsTypes.FIDO2],
				noopFunction
			)
			context.CredentialsProtocol:registerCredentials(
				CredentialsProtocol.CredentialsTypes.FIDO2,
				registerRequestParamsEncoded,
				timeout
			)
			context.CredentialsProtocol
				:registerCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, registerRequestParamsEncoded, timeout)
				:andThen(function(result)
					awaitNativeResponse = result
				end, function()
					promiseRejected = true
				end)
				:await()
			expect(awaitNativeResponse).to.equal(nil)
			expect(promiseRejected).to.equal(true)

			Promise.delay(timeout):await()
			context.CredentialsProtocol
				:registerCredentials(CredentialsProtocol.CredentialsTypes.FIDO2, registerRequestParamsEncoded, timeout)
				:andThen(function(result)
					promiseRejected = false
					awaitNativeResponse = result
				end, function()
					promiseRejected = true
				end)
				:await()
			expect(awaitNativeResponse).to.equal(nil)
			expect(promiseRejected).to.equal(false)
			expect(noopCalled).to.equal(2)
		end)

		it("should return false if native platform does not supports credentials protocol", function(context)
			context.subscriber:subscribe(CredentialsProtocol.IS_AVAILABLE_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(CredentialsProtocol.IS_AVAILABLE_RESPONSE_DESCRIPTOR, {
					isAvailable = false,
				})
			end)
			context.CredentialsProtocol
				:isAvailable(CredentialsProtocol.CredentialsTypes.FIDO2, timeout)
				:andThen(function(result)
					awaitNativeResponse = result
				end)
				:await()
			expect(awaitNativeResponse).to.equal(false)
		end)

		it("should return true if native platform does supports credentials protocol", function(context)
			context.subscriber:subscribe(CredentialsProtocol.IS_AVAILABLE_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(CredentialsProtocol.IS_AVAILABLE_RESPONSE_DESCRIPTOR, {
					isAvailable = true,
				})
			end)
			context.CredentialsProtocol
				:isAvailable(CredentialsProtocol.CredentialsTypes.FIDO2, timeout)
				:andThen(function(result)
					awaitNativeResponse = result
				end)
				:await()
			expect(awaitNativeResponse).to.equal(true)
		end)
	end)
end
