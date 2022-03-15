local MockMaterialService = {}

MockMaterialService.__index = MockMaterialService

function MockMaterialService.new()
	local self = Instance.new("Folder")

	setmetatable(self, {
		_partOverrides = {},
		_terrainOverrides = {},

	})

	return self
end

function MockMaterialService:ClearOverridePartMaterial(material : Enum.Material)
	self._partOverrides[material] = nil
end

function MockMaterialService:ClearOverrideTerrainMaterial(material : Enum.Material)
	self._terrainOverrides[material] = nil
end

function MockMaterialService:GetOverridePartMaterial(material : Enum.Material) : MaterialVariant
	return self._partOverrides[material]
end

function MockMaterialService:GetClearOverrideTerrainMaterial(material : Enum.Material) : MaterialVariant
	return self._terrainOverrides[material]
end

function MockMaterialService:SetOverridePartMaterial(materialVariant : MaterialVariant)
	self._partOverrides[materialVariant.BaseMaterial] = materialVariant
end

function MockMaterialService:SetOverrideTerrainMaterial(materialVariant : MaterialVariant)
	self._terrainOverrides[materialVariant.BaseMaterial] = materialVariant
end

return MockMaterialService
