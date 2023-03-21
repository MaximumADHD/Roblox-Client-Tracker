--!nonstrict
return function()
	local Root = script.Parent
	local Packages = Root.Parent

	local MessageBus = require(Packages.MessageBus).MessageBus
	local NativeUtilProtocol = require(script.Parent.NativeUtilProtocol)

	local getFFlagLuaNativeUtilProtocol = require(script.Parent.Flags.getFFlagLuaNativeUtilProtocol)
	local getFFlagLuaSwitchToSettingsApp = require(script.Parent.Flags.getFFlagLuaSwitchToSettingsApp)
	local getFFlagLuaNativeUtilEnableSMSHandling = require(Packages.SharedFlags).getFFlagLuaNativeUtilEnableSMSHandling
	local getFFlagLuaGetSMSOTP = require(script.Parent.Flags.getFFlagLuaGetSMSOTP)

	describe("NativeUtilProtocol", function()
		beforeAll(function(context)
			context.NativeUtilProtocol = NativeUtilProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should process send SMS requests sent true", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
				return
			end
			local sent = false
			context.NativeUtilProtocol
				:sendSMS({ address = "123456789", message = "testmessage" })
				:andThen(function(result)
					sent = result.sent
				end)

			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
						{
							sent = true,
						},
						0,
						{}
					)
				end
			)
			wait()
			expect(sent).to.equal(true)
		end)

		it("should process send SMS requests sent false", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
				return
			end
			local sent = true
			context.NativeUtilProtocol
				:sendSMS({ address = "123456789", message = "testmessage" })
				:andThen(function(result)
					sent = result.sent
				end)

			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
						{
							sent = false,
						},
						0,
						{}
					)
				end
			)
			wait()
			expect(sent).to.equal(false)
		end)

		it("should process send SMS requests invalid address", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
				return
			end
			expect(function()
				local _sent = false
				context.NativeUtilProtocol
					:sendSMS({ addy = "123456789", message = "testmessage" })
					:andThen(function(result)
						_sent = result.sent
					end)

				context.subscriber:subscribeProtocolMethodRequest(
					NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
					function(params)
						MessageBus.publishProtocolMethodResponse(
							NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
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

		it("should process send SMS requests invalid message", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
				return
			end
			expect(function()
				local _sent = false
				context.NativeUtilProtocol
					:sendSMS({ address = "123456789", msg = "testmessage" })
					:andThen(function(result)
						_sent = result.sent
					end)

				context.subscriber:subscribeProtocolMethodRequest(
					NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
					function(params)
						MessageBus.publishProtocolMethodResponse(
							NativeUtilProtocol.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
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

		it("should process support correctly", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaNativeUtilEnableSMSHandling() then
				return
			end
			local didSucceed = false
			context.NativeUtilProtocol:supportsSMS():andThen(function(supported)
				didSucceed = supported
			end)
			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						NativeUtilProtocol.SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
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

		it("should process switch to settings app request", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaSwitchToSettingsApp() then
				return
			end
			expect(function()
				local _sent = false
				context.NativeUtilProtocol:switchToSettingsApp():andThen(function() end)
				context.subscriber:subscribeProtocolMethodRequest(
					NativeUtilProtocol.SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR,
					function(params)
						MessageBus.publishProtocolMethodResponse(
							NativeUtilProtocol.SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR,
							{},
							0,
							{}
						)
					end
				)
			end).to.throw()
		end)

		it("should process switch to settings app support correctly", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaSwitchToSettingsApp() then
				return
			end
			local didSucceed = false
			context.NativeUtilProtocol:supportsSwitchToSettingsApp():andThen(function(supported)
				didSucceed = supported
			end)
			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						NativeUtilProtocol.SUPPORTS_SWITCH_TO_SETTINGS_APP_METHOD_RESPONSE_DESCRIPTOR,
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

		it("should process get sms otp request", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaGetSMSOTP() then
				return
			end

			local smsCode = ""
			context.NativeUtilProtocol:getSMSOTP():andThen(function(code)
				smsCode = code
			end)

			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(NativeUtilProtocol.GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR, {
						code = "123456",
					}, 0, {})
				end
			)
			wait()
			expect(smsCode).to.equal("123456")
		end)

		it("should process get sms otp support correctly", function(context)
			if not getFFlagLuaNativeUtilProtocol() or not getFFlagLuaGetSMSOTP() then
				return
			end
			local didSucceed = false
			context.NativeUtilProtocol:supportsGetSMSOTP():andThen(function(supported)
				didSucceed = supported
			end)
			context.subscriber:subscribeProtocolMethodRequest(
				NativeUtilProtocol.SUPPORTS_GET_SMS_OTP_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						NativeUtilProtocol.SUPPORTS_GET_SMS_OTP_METHOD_RESPONSE_DESCRIPTOR,
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
