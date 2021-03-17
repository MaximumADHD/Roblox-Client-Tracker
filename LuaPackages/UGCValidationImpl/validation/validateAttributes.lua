-- ensures no descendant of instance has attributes
local function validateAttributes(instance)
	local attributesFailures = {}

	if next(instance:GetAttributes()) ~= nil then
		attributesFailures[#attributesFailures + 1] = instance:GetFullName()
	end
	for _, descendant in ipairs(instance:GetDescendants()) do
		if next(descendant:GetAttributes()) ~= nil then
			attributesFailures[#attributesFailures + 1] = descendant:GetFullName()
		end
	end

	if #attributesFailures > 0 then
		local reasons = {}
		reasons[#reasons + 1] = "The following instances contained attributes:"
		for _, name in pairs(attributesFailures) do
			reasons[#reasons + 1] = name
		end
		return false, reasons
	end

	return true
end

return validateAttributes
