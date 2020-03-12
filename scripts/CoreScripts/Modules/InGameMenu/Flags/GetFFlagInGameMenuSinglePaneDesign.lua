local ABTestService = game:GetService("ABTestService")

-- set this flag to force single pane when AB test is not enabled
game:DefineFastFlag("InGameMenuSinglePaneDesign", false)
game:DefineFastFlag("EnableSinglePaneABTest", false)

local InVariantForSinglePane = nil
return function()
	if game:GetFastFlag("EnableSinglePaneABTest") then
		if InVariantForSinglePane == nil then
			ABTestService:WaitUntilUserABTestsInitialized()
			local inGameMenuVariant = nil
			pcall(function() inGameMenuVariant = ABTestService:GetVariant("AllUsers.GameExperience.InGameMenu") end)
			InVariantForSinglePane = inGameMenuVariant == "Variation2"
		end
		return InVariantForSinglePane
	end

	return game:GetFastFlag("InGameMenuSinglePaneDesign")
end