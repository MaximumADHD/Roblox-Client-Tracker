return function(counterPrefix: string, counterName: string, paymentPlatformStr: string, purchaseFlowStr: string?, robuxAmount: number?)
    local counters = {}

    if purchaseFlowStr ~= nil then
        table.insert(counters, counterPrefix..purchaseFlowStr..counterName..paymentPlatformStr)
    else
        table.insert(counters, counterPrefix..counterName..paymentPlatformStr)
    end

    if robuxAmount ~= nil then
        local robuxAmountStr = tostring(robuxAmount)
        if purchaseFlowStr ~= nil then
            table.insert(counters, counterPrefix..purchaseFlowStr..counterName..robuxAmountStr..paymentPlatformStr)
        else
            table.insert(counters, counterPrefix..counterName..robuxAmountStr..paymentPlatformStr)
        end
    end

    return counters
end
