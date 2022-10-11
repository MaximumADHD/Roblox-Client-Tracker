local UtilityRoot = script.Parent

local getModalShownEventData = require(UtilityRoot.getModalShownEventData)

return function()
	it("should return the correct data", function()
		local analyticId = "AnalyticId"
		local eventPrefix = "Prefix"
		local flowName = "FlowName"
		local viewName = "ViewName"

		local data = getModalShownEventData(analyticId, eventPrefix, flowName, viewName)

		expect(data.purchase_flow_uuid).to.equal(analyticId)
		expect(data.purchase_flow).to.equal(eventPrefix..flowName)
		expect(data.view_name).to.equal(viewName)
		expect(data.purchase_event_type).to.equal("ViewShown")
	end)
end
