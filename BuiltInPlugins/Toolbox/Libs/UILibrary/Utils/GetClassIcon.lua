local StudioService  = game:GetService("StudioService")

local function GetClassIcon(instance)
	local className = instance.ClassName
	if instance:IsA("JointInstance") and className == "ManualWeld" or className == "ManualGlue" then
		return StudioService:GetClassIcon("JointInstance")
	else
		return StudioService:GetClassIcon(className)
	end
end

return GetClassIcon
