local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

-- we need special case VR because the default OverrideMouseIconBehavior should be
-- Force hide in VR
return function(mouseVisible)
	if mouseVisible then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
	elseif VRService.VREnabled then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	else
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end