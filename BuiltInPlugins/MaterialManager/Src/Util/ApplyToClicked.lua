local ChangeHistoryService = game:GetService("ChangeHistoryService")

return function(target, baseMaterial: Enum.Material, materialVariant: string?)
	if target and target:IsA("BasePart") then
		target.Material = baseMaterial
		target.MaterialVariant = materialVariant or ""
		ChangeHistoryService:SetWaypoint("Applied Material to Clicked as Tool")
	end
end
