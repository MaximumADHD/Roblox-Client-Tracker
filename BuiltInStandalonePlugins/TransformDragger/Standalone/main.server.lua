if not settings():GetFFlag("StudioUseStandaloneTransformTool2") then
	return
end
	
local plugin, settings = plugin, settings

local toolbar = plugin:CreateToolbar("Transform")
local toolbarbutton = toolbar:CreateButton("Transform", "Precision Dragger", "")

toolbarbutton.Click:connect(function()
	plugin:Fire("buttonClicked", "")
end)

plugin:Bind("setActive", function(payloadString)
	toolbarbutton:SetActive(payloadString == "true")
end)
