local CoreUtility = {}

function CoreUtility.waitForChildOfClass(parent, className)
	local child = parent:FindFirstChildOfClass(className)
	while not child or child.ClassName ~= className do
		child = parent.ChildAdded:Wait()
	end
	return child
end

function CoreUtility.waitForChildWhichIsA(parent, className)
	local child = parent:FindFirstChildWhichIsA(className)
	while not child or not child:IsA(className) do
		child = parent.ChildAdded:Wait()
	end
	return child
end

return CoreUtility