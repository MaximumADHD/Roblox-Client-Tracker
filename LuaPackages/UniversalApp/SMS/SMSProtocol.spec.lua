--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local MessageBus = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
	local SMSProtocol = require(CorePackages.UniversalApp.SMS.SMSProtocol)

	local getFFlagLuaSMSProtocol = require(script.Parent.Flags.getFFlagLuaSMSProtocol)

	describe("SMSProtocol", function()
        local smsProtocol, subscriber
		beforeAll(function()
			smsProtocol = SMSProtocol.new()
		end)

		beforeEach(function()
			subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function()
			subscriber:unsubscribeFromAllMessages()
		end)

		it("should process send SMS requests sent true", function()
			if not getFFlagLuaSMSProtocol() then
				return
			end
			local sent = false
			smsProtocol:sendSMS({ address = "123456789", message = "testmessage" }):andThen(function(result)
				sent = result.sent
			end)

			subscriber:subscribeProtocolMethodRequest(
				SMSProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(SMSProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR, {
						sent = true,
					}, 0, {})
				end
			)
			wait()
			expect(sent).to.equal(true)
		end)

		it("should process send SMS requests sent false", function()
			if not getFFlagLuaSMSProtocol() then
				return
			end
			local sent = true
			smsProtocol:sendSMS({ address = "123456789", message = "testmessage" }):andThen(function(result)
				sent = result.sent
			end)

			subscriber:subscribeProtocolMethodRequest(
				SMSProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(SMSProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR, {
						sent = false,
					}, 0, {})
				end
			)
			wait()
			expect(sent).to.equal(false)
		end)

		it("should process send SMS requests invalid address", function()
			if not getFFlagLuaSMSProtocol() then
				return
			end

			expect(function()
                local sent = false
				smsProtocol:sendSMS({ addy = "123456789", message = "testmessage" }):andThen(function(result)
					sent = result.sent
				end)

				subscriber:subscribeProtocolMethodRequest(
					SMSProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
					function(params)
						MessageBus.publishProtocolMethodResponse(
							SMSProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
							{
								sent = false,
							},
							0,
							{}
						)
					end
				)
			end).to.throw()
		end)

		it("should process send SMS requests invalid message", function()
			if not getFFlagLuaSMSProtocol() then
				return
			end

			expect(function()
                local sent = false
				smsProtocol:sendSMS({ address = "123456789", msg = "testmessage" }):andThen(function(result)
					sent = result.sent
				end)

				subscriber:subscribeProtocolMethodRequest(
					SMSProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
					function(params)
						MessageBus.publishProtocolMethodResponse(
							SMSProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
							{
								sent = false,
							},
							0,
							{}
						)
					end
				)
			end).to.throw()
		end)

		it("should process support correctly", function()
			if not getFFlagLuaSMSProtocol() then
				return
			end
			local didSucceed = false
			smsProtocol:supportsSMS():andThen(function(supported)
				didSucceed = supported
			end)
			subscriber:subscribeProtocolMethodRequest(
				SMSProtocol.SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						SMSProtocol.SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
						{
							support = true,
						},
						0,
						{}
					)
				end
			)
			wait()
			expect(didSucceed).to.equal(true)
		end)
	end)
end
