local CoreUtility = {}
local WaitForChildOfClassTimeout = game:DefineFastInt("WaitForChildOfClassTimeout", 0)

if WaitForChildOfClassTimeout > 0 then
	function CoreUtility.waitForChildOfClass(parent, className)
		local child = parent:FindFirstChildOfClass(className)
		local timeoutTick = tick() + WaitForChildOfClassTimeout
		while not child and tick() < timeoutTick do
			task.wait()
			child = parent:FindFirstChildOfClass(className)
		end
		return child
	end
else
	function CoreUtility.waitForChildOfClass(parent: any, className)
		local child: any = parent:FindFirstChildOfClass(className)
		while not child or child.ClassName ~= className do
			child = parent.ChildAdded:Wait()
		end
		return child
	end
end

function CoreUtility.waitForChildWhichIsA(parent, className)
	local child = parent:FindFirstChildWhichIsA(className)
	while not child or not child:IsA(className) do
		child = parent.ChildAdded:Wait()
	end
	return child
end

return CoreUtility
