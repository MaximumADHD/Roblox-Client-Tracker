local main = script.Parent.Parent
local Types = require(main.Types)

local parseMaterial = require(main.Util.parseMaterial)

-- Returns a string used to identify variants and base materials even when serialized to strings
-- MaterialVariants when serialized will have the form "MaterialVariant__BaseMaterial"
-- isMaterialVariantByIdentifier and applyToSelectionByIdentifier from MaterialPicker depend on this format
return function(materialOrPart: Types.Material | BasePart): string
	if typeof(materialOrPart) == "Instance" and materialOrPart:IsA("BasePart") then
		return if materialOrPart.MaterialVariant and materialOrPart.MaterialVariant ~= ""
			then materialOrPart.MaterialVariant .. "__" .. materialOrPart.Material.Name
			else materialOrPart.Material.Name
	else
		local baseMaterial, materialVariant = parseMaterial(materialOrPart)
		if materialVariant and materialVariant.Name ~= "" then
			return materialVariant.Name .. "__" .. baseMaterial.Name
		else
			return baseMaterial.Name
		end
	end
end
