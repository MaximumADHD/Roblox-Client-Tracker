return function(target: Instance, baseMaterial: Enum.Material, materialVariant: string?)
	if target and target:IsA("BasePart") then
		target.Material = baseMaterial
		target.MaterialVariant = materialVariant or ""
	end
end
