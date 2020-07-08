return function()
	local Plugin = script.Parent.Parent.Parent

	local Operation = require(Plugin.Src.Operations.RBXEventRequest)

	local NotificationService = game:GetService("NotificationService")

	local TEST_PARAMS = {
		Namespace = "TestNamespace",
		Detail = "{\"test\" : \"testing\"}",
		DetailType = "testType",
	}
	
	
	it("should send an event through notification service", function ()
		local k_response = nil
		local conn = nil
		
		expect(pcall(function ()
			conn = NotificationService.RobloxEventReceived:Connect(function (eventData)
				k_response = eventData
			end)
		end)).to.be.ok()
		
		expect(conn).to.be.ok()
		
		Operation(TEST_PARAMS)
		expect(k_response).to.never.equal(nil)

		conn:Disconnect()
		
		k_response = nil
	end)
end