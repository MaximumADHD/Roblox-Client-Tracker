return function(instance, worldPivot)
	if instance:IsA("BasePart") then
		instance.PivotOffset = instance.CFrame:ToObjectSpace(worldPivot)
	elseif instance:IsA("Model") then
		if instance.PrimaryPart then
			instance.PrimaryPart.PivotOffset = instance.PrimaryPart.CFrame:ToObjectSpace(worldPivot)
		end
		instance.WorldPivot = worldPivot
	else
		error("Unexpected instance type: " .. instance.ClassName)
	end
end
