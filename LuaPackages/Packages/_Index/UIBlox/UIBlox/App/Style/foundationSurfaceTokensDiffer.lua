local StyleTypes = require(script.Parent.StyleTypes)
type RbxDesignFoundationsV4Tokens = StyleTypes.RbxDesignFoundationsV4Tokens

-- True if any Color.Surface Surface_0/100/200/300 Color3 differs (static getFoundationTokens vs useTokens).
return function(staticTokens: RbxDesignFoundationsV4Tokens?, contextTokens: RbxDesignFoundationsV4Tokens?): boolean
	if staticTokens == nil or contextTokens == nil then
		return false
	end

	return staticTokens.Color.Surface.Surface_0.Color3 ~= contextTokens.Color.Surface.Surface_0.Color3
		or staticTokens.Color.Surface.Surface_100.Color3 ~= contextTokens.Color.Surface.Surface_100.Color3
		or staticTokens.Color.Surface.Surface_200.Color3 ~= contextTokens.Color.Surface.Surface_200.Color3
		or staticTokens.Color.Surface.Surface_300.Color3 ~= contextTokens.Color.Surface.Surface_300.Color3
end
