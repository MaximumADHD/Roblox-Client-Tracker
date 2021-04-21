local Plugin = script.Parent.Parent.Parent

local DraggerFramework = Plugin.Packages.DraggerFramework

local classifyPivot = require(DraggerFramework.Utility.classifyPivot)

return function(instance)
	if instance:IsA("BasePart") then
		return classifyPivot(instance.CFrame, instance.PivotOffset.Position, instance.Size)
	elseif instance:IsA("Model") then
		local cframe, size = instance:GetBoundingBox()
		local pivot = instance:GetPivot()
		local offset = pivot:ToObjectSpace(cframe).Position
		return classifyPivot(pivot, offset, size)
	else
		return "None"
	end
end