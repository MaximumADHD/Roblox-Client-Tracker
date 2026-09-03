local applyToBasePart = require(script.Parent.applyToBasePart)

return function(instances: { Instance }, baseMaterial: Enum.Material, materialVariant: string?)
	for _, instance in instances do
		applyToBasePart(instance, baseMaterial, materialVariant)

		if instance:IsA("Model") then
			for _, descendant in instance:GetDescendants() do
				if descendant:IsA("BasePart") then
					descendant.Material = baseMaterial
					descendant.MaterialVariant = materialVariant or ""
				end
			end
		end
	end
end
