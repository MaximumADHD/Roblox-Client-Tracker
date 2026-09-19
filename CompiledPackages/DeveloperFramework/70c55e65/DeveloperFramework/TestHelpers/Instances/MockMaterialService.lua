local Framework = script:FindFirstAncestor("TestHelpers").Parent
local Signal = require(Framework.Util.Signal)

local MockMaterialService = {}

MockMaterialService.__index = MockMaterialService

function MockMaterialService.new(instance)
	local materialVariants = {}

	for _, descendant in instance:getDescendants() do
		if descendant:IsA("MaterialVariant") then
			materialVariants[descendant.Name] = {}
			materialVariants[descendant.Name][descendant.BaseMaterial] = descendant
		end
	end

	local self = setmetatable({
		_materialOverrideChangedSignals = {},
		_materialOverrides = {},
		_materialVariants = {},
		OverrideStatusChanged = Signal.new(),
		_serviceInstance = instance,
		Use2022Materials = false,
	}, MockMaterialService)

	self._descendantAddedConnection = instance.DescendantAdded:Connect(function(descendant)
		if descendant:IsA("MaterialVariant") then
			if self._materialVariants[descendant.Name] then
				self._materialVariants[descendant.Name][descendant.BaseMaterial] = descendant
			else
				self._materialVariants[descendant.Name] = {}
				self._materialVariants[descendant.Name][descendant.BaseMaterial] = descendant
			end
		end
	end)

	self._descendantRemovingConnection = instance.DescendantRemoving:Connect(function(descendant)
		if descendant:IsA("MaterialVariant") then
			if self._materialVariants[descendant.Name] then
				self._materialVariants[descendant.Name][descendant.BaseMaterial] = nil
			end
		end
	end)

	return self
end

function MockMaterialService:Destroy()
	self._descendantAddedConnection:Disconnect()
	self._descendantRemovingConnection:Disconnect()
end

function MockMaterialService:GetMaterialOverrideChanged(material: Enum.Material)
	if not self._materialOverrideChangedSignals[material] then
		self._materialOverrideChangedSignals[material] = Signal.new()
	end

	return self._materialOverrideChangedSignals[material]
end

function MockMaterialService:GetMaterialVariant(material: Enum.Material, name: string): MaterialVariant?
	if self._materialVariants[name] then
		return self._materialVariants[name][material]
	end

	return nil
end

function MockMaterialService:GetOverrideStatus(_material: Enum.Material): Enum.PropertyStatus
	return Enum.PropertyStatus.Ok
end

function MockMaterialService:GetBaseMaterialOverride(material: Enum.Material): string
	return self._materialOverrides[material] or ""
end

function MockMaterialService:SetBaseMaterialOverride(material: Enum.Material, materialVariant: string)
	local prevMaterialVariant = self._materialOverrides[material]
	self._materialOverrides[material] = materialVariant

	if prevMaterialVariant ~= materialVariant then
		self._materialOverrides[material] = materialVariant

		if self._materialOverrideChangedSignals[material] then
			self._materialOverrideChangedSignals[material]:Fire()
		end
	end
end

return MockMaterialService
