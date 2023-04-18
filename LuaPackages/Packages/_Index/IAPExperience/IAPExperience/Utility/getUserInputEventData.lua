return function(purchaseFlowUuid: string, eventPrefix: string?, purchaseFlow: string, viewName: string, inputType: string)
	local purchaseFlowName = purchaseFlow
	if eventPrefix then
		purchaseFlowName = eventPrefix .. purchaseFlowName
	end
	return {
		purchase_flow_uuid = purchaseFlowUuid,
		purchase_flow = purchaseFlowName,
		view_name = viewName,
		purchase_event_type = "UserInput",
		input_type = inputType,
	}
end
