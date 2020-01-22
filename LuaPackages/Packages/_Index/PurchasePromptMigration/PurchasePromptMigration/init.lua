game:DefineFastFlag("EnablePurchasePromptV2", false)

if game:GetFastFlag("EnablePurchasePromptV2") then
	return require(script.Parent.PurchasePrompt)
else
	return require(script.Parent.PurchasePromptOld)
end