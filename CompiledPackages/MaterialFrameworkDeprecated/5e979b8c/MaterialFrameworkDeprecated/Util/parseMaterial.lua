local main = script.Parent.Parent
local Types = require(main.Types)

return function(material: Types.Material): (Enum.Material, MaterialVariant?)
	local baseMaterial, materialVariant
	if typeof(material) == "EnumItem" then
		baseMaterial = material :: Enum.Material
	elseif typeof(material) == "Instance" and material:IsA("MaterialVariant") then
		materialVariant = material :: MaterialVariant
		baseMaterial = materialVariant.BaseMaterial
	end
	return baseMaterial, materialVariant
end
