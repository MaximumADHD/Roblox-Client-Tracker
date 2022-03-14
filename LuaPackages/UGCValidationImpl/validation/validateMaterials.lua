local root = script.Parent.Parent

local Constants = require(root.Constants)

-- ensures no descendant of instance has a material that does not exist in Constants.MATERIAL_WHITELIST
local function validateMaterials_DEPRECATED(instance)
	local materialFailures = {}
	for _, descendant in pairs(instance:GetDescendants()) do
		if descendant:IsA("BasePart") and not Constants.MATERIAL_WHITELIST[descendant.Material] then
			materialFailures[#materialFailures + 1] = descendant:GetFullName()
		end
	end
	if #materialFailures > 0 then
		local reasons = {}
		local acceptedMaterialNames = {}
		for material in pairs(Constants.MATERIAL_WHITELIST) do
			acceptedMaterialNames[#acceptedMaterialNames + 1] = material.Name
		end
		reasons[#reasons + 1] = "Invalid materials for"
		for _, name in pairs(materialFailures) do
			reasons[#reasons + 1] = name
		end
		reasons[#reasons + 1] = "Accepted materials are " .. table.concat(acceptedMaterialNames, ", ")
		return false, reasons
	end

	return true
end

local function validateMaterials(instance: Instance): (boolean, {string}?)
	local materialFailures = {}
	for _, descendant in pairs(instance:GetDescendants()) do
		if descendant:IsA("BasePart") and not Constants.MATERIAL_WHITELIST[descendant.Material] then
			table.insert(materialFailures, descendant:GetFullName())
		end
	end
	if #materialFailures > 0 then
		local reasons = {}
		local acceptedMaterialNames = {}
		for material in pairs(Constants.MATERIAL_WHITELIST) do
			table.insert(acceptedMaterialNames, material.Name)
		end
		table.insert(reasons, "Invalid materials for")
		for _, name in pairs(materialFailures) do
			table.insert(reasons, name)
		end
		table.insert(reasons, "Accepted materials are " .. table.concat(acceptedMaterialNames, ", "))
		return false, reasons
	end

	return true
end

if game:GetFastFlag("UGCValidateLayeredClothing2") then
	return validateMaterials
else
	return validateMaterials_DEPRECATED :: any
end
