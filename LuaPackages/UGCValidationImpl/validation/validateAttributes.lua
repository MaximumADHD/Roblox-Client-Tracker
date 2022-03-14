-- ensures no descendant of instance has attributes
local function validateAttributes_DEPRECATED(instance)
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

local function validateAttributes(instance: Instance): (boolean, {string}?)
	local attributesFailures = {}

	if next(instance:GetAttributes()) :: any ~= nil then
		table.insert(attributesFailures, instance:GetFullName())
	end
	for _, descendant in ipairs(instance:GetDescendants()) do
		if next(descendant:GetAttributes()) :: any ~= nil then
			table.insert(attributesFailures, descendant:GetFullName())
		end
	end

	if #attributesFailures > 0 then
		local reasons = {}
		table.insert(reasons, "The following instances contained attributes:")
		for _, name in pairs(attributesFailures) do
			table.insert(reasons, name)
		end
		return false, reasons
	end

	return true
end

if game:GetFastFlag("UGCValidateLayeredClothing2") then
	return validateAttributes
else
	return validateAttributes_DEPRECATED :: any
end
