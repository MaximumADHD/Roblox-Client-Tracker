local FFlagStudioFixGetClassIcon = settings():GetFFlag("StudioFixGetClassIcon")
local FFlagStudioMinorFixesForAssetPreview = settings():GetFFlag("StudioMinorFixesForAssetPreview")

local StudioService  = game:GetService("StudioService")

local function GetClassIcon(instance)
	if FFlagStudioFixGetClassIcon then
		local className = instance.ClassName
		if instance.IsA then
			if instance:IsA("JointInstance") and className == "ManualWeld" or className == "ManualGlue" then
				return StudioService:GetClassIcon("JointInstance")
			end
		end
		return StudioService:GetClassIcon(className)
	else
		if FFlagStudioMinorFixesForAssetPreview then
			if typeof(instance) ~= "Instance" then
				return StudioService:GetClassIcon("Model")
			end
		end

		local className = instance.ClassName
		if instance:IsA("JointInstance") and className == "ManualWeld" or className == "ManualGlue" then
			return StudioService:GetClassIcon("JointInstance")
		else
			return StudioService:GetClassIcon(className)
		end
	end
end

return GetClassIcon
