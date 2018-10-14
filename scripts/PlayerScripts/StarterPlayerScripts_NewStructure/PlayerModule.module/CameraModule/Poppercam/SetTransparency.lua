local lastSubject = nil
local lastTransparency = 0

return function(subject, transparency)
	if transparency == lastTransparency and subject == lastSubject then
		return
	end
	
	lastSubject = subject
	lastTransparency = transparency
	
	local descendants = subject:GetDescendants()
	for i = 1, #descendants do
		local obj = descendants[i]
		if obj:IsA'BasePart' then
			obj.LocalTransparencyModifier = transparency
		end
	end
end