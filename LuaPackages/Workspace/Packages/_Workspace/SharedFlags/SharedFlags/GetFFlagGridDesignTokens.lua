local GetFFlagUIBloxEnableRoDSDesignTokenSupport =
	require(script.Parent.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport)
local GetFFlagTenFootUiDesignTokens = require(script.Parent.GetFFlagTenFootUiDesignTokens)

game:DefineFastFlag("GridDesignTokens2", false)

return function()
	return GetFFlagUIBloxEnableRoDSDesignTokenSupport()
		and GetFFlagTenFootUiDesignTokens()
		and game:GetFastFlag("GridDesignTokens2")
end
