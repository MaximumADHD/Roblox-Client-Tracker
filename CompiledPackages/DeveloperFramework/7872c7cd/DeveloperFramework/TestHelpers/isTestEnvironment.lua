--!strict

local Framework = script:FindFirstAncestor("TestHelpers").Parent

return function()
	local flags = Framework:FindFirstChild("TestFlags")
	local isTestEnvironmentValue = if flags then flags:FindFirstChild("IsTestEnvironment") else nil
	return if isTestEnvironmentValue and isTestEnvironmentValue:IsA("BoolValue")
		then isTestEnvironmentValue.Value
		else false
end
