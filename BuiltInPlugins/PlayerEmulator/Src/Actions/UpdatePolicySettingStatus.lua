local Action = require(script.Parent.Action)

return Action(script.Name, function(policySettingStatus)
	assert(type(policySettingStatus) == "table", "Expected policySettingStatus to be a table")

	return {
		policySettingStatus = policySettingStatus,
	}
end)