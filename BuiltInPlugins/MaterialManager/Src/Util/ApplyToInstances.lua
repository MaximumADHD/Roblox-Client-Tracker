local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local ApplyToBasePart = require(Plugin.Src.Util.ApplyToBasePart)

return function(instances: _Types.Array<Instance>, baseMaterial: Enum.Material, materialVariant: string?)
	for _, instance in ipairs(instances) do
		ApplyToBasePart(instance, baseMaterial, materialVariant)

		if instance:IsA("Model") then
			local descendants = instance:GetDescendants()
			for _, descendant in ipairs(descendants) do
				if descendant:IsA("BasePart") then
					descendant.Material = baseMaterial
					descendant.MaterialVariant = materialVariant or ""
				end
			end
		end
	end
end
