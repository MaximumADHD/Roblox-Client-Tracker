--!strict

game:DefineFastFlag("UGCValidationShouldYield", false)

return function()
	return game:GetFastFlag("UGCValidationShouldYield")
end
