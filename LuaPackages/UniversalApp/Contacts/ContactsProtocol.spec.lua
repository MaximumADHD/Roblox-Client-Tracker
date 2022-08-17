--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local ContactsProtocol = require(CorePackages.UniversalApp.Contacts.ContactsProtocol)	

	local getFFlagLuaGetContactsAccess = require(script.Parent.Flags.getFFlagLuaGetContactsAccess)

	describe("ContactsProtocol", function()
		beforeAll(function(context)
			context.ContactsProtocol = ContactsProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should process get contacts requests", function(context)
			if not getFFlagLuaGetContactsAccess() then
				return
			end
            local firstName = ""
            local lastName = ""
            local phoneNumbers = ""
            context.ContactsProtocol:getContacts():andThen(function(result)
				firstName = result.firstName
                lastName = result.lastName
                phoneNumbers = result.phoneNumbers
			end)

			context.subscriber:subscribeProtocolMethodRequest(
				ContactsProtocol.GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						ContactsProtocol.GET_CONTACTS_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
						{
							firstName = "test",
                            lastName = "contact",
                            phoneNumbers = {"123654789"}
						},
						0,
						{}
					)
				end
			)
			wait()
			expect(firstName).to.equal("test")
			expect(lastName).to.equal("contact")
			expect(phoneNumbers[1]).to.equal("123654789")
		end)

		it("should process support correctly", function(context)
			if not getFFlagLuaGetContactsAccess() then
				return
			end
			local didSucceed = false
			context.ContactsProtocol:supportsContacts():andThen(function(supported)
				didSucceed = supported
			end)
            context.subscriber:subscribeProtocolMethodRequest(
				ContactsProtocol.SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
				function(params)
					MessageBus.publishProtocolMethodResponse(
						ContactsProtocol.SUPPORTS_CONTACTS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
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
