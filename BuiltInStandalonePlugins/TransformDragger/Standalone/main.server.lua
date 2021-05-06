local StudioService = game:GetService("StudioService")

local plugin, settings = plugin, settings

local toolbar = plugin:CreateToolbar("Transform")
local toolbarbutton = toolbar:CreateButton("Transform", "Precision Dragger", "")

toolbarbutton.Click:connect(function()
	plugin:Invoke("buttonClicked", "")
end)

plugin:OnInvoke("setActive", function(payloadString)
	toolbarbutton:SetActive(payloadString == "true")
end)

-- Transform tool does not respect physical constraints, it should be disabled
-- when the dragger mode is set to physical
toolbarbutton.Enabled = not StudioService.DraggerSolveConstraints
StudioService.PromptTransformPluginCheckEnable:Connect(function()
	if StudioService.DraggerSolveConstraints then
		plugin:Invoke("Disable")
	end
	toolbarbutton.Enabled = not StudioService.DraggerSolveConstraints
end)