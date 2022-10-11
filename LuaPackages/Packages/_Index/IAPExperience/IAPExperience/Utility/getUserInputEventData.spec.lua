local UtilityRoot = script.Parent

local getUserInputEventData = require(UtilityRoot.getUserInputEventData)

return function()
	it("should return the correct data", function()
		local analyticId = "AnalyticId"
		local eventPrefix = "Prefix"
		local flowName = "FlowName"
		local viewName = "ViewName"
		local inputType = "InputType"

		local data = getUserInputEventData(analyticId, eventPrefix, flowName, viewName, inputType)

		expect(data.purchase_flow_uuid).to.equal(analyticId)
		expect(data.purchase_flow).to.equal(eventPrefix..flowName)
		expect(data.view_name).to.equal(viewName)
		expect(data.purchase_event_type).to.equal("UserInput")
		expect(data.input_type).to.equal(inputType)
	end)
end
