local GetFFlagTenFootUiDesignTokens = require(script.Parent.GetFFlagTenFootUiDesignTokens)

game:DefineFastFlag("GridDesignTokens", false)

return function()
	return GetFFlagTenFootUiDesignTokens() and game:GetFastFlag("GridDesignTokens")
end
