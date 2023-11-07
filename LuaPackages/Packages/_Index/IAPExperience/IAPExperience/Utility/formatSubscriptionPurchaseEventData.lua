return function(flowUuid: string, flowEventType: string, viewName: string, inputType: string?,
	subscriptionProviderId: string, subscriptionProductId: string, subscriptionName: string,
	subscriptionDescription: string, subscriptionPeriod: string, priceTier: number, displayPrice: string)

	-- Parse subscriptionId into prefix and product id
	local subscriptionId
	local subscriptionPrefix
	for k, v in string.gmatch(subscriptionProductId, "(%w+)-(%w+)") do
		subscriptionPrefix = string.upper(k)
		subscriptionId = v
	end

	-- Field names should match proto fields https://github.rbx.com/Roblox/proto-schemas/blob/master/production/eventstream/subscriptions/subscription_purchase.proto
	return {
		purchase_flow_uuid = flowUuid,
		purchase_flow_event_type = flowEventType,
		view_name = viewName,
		input_type = inputType,
		subscription_provider_id = subscriptionProviderId,
		subscription_product_type_prefix = subscriptionPrefix,
		subscription_id = subscriptionId,
		localized_subscription_name = subscriptionName,
		localized_subscription_description = subscriptionDescription,
		subscription_period = subscriptionPeriod,
		price_in_cents_usd = priceTier,
		display_price = displayPrice
	}
end
