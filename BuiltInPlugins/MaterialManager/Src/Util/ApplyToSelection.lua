-- Remove with MaterialManagerUtilTests

local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

return function(baseMaterial: Enum.Material, materialVariant: string?)
	if Selection then
		local instances = Selection:Get()
		ChangeHistoryService:SetWaypoint("Applied Material to Selection")

		for _, instance in ipairs(instances) do
			if instance:IsA("BasePart") then
				instance.Material = baseMaterial
				instance.MaterialVariant = materialVariant or ""
			end

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
end
