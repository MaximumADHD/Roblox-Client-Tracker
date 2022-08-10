local Plugin = script.Parent.Parent.Parent

local ChangeHistoryService = game:GetService("ChangeHistoryService") -- Remove with FFlagMaterialManagerFixApplyToClicked

local getFFlagMaterialManagerFixApplyToClicked = require(Plugin.Src.Flags.getFFlagMaterialManagerFixApplyToClicked)

return function(target: Instance, baseMaterial: Enum.Material, materialVariant: string?)
	if target and target:IsA("BasePart") then
		target.Material = baseMaterial
		target.MaterialVariant = materialVariant or ""
		if not getFFlagMaterialManagerFixApplyToClicked() then
			ChangeHistoryService:SetWaypoint("Applied Material to Clicked as Tool")
		end
	end
end
