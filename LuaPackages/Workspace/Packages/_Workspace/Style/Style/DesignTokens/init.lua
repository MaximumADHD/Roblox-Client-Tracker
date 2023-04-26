local DesignTokenContext = require(script.DesignTokenContext)
local DesignTokenProvider = require(script.DesignTokenProvider)
local useDesignTokens = require(script.useDesignTokens)

export type DesignTokenProviderProps = DesignTokenProvider.Props
export type DesignTokenMapper<FeatureTokens> = DesignTokenProvider.TokenMapper<FeatureTokens>
export type DesignTokens = DesignTokenContext.DesignTokens

return {
	DesignTokenContext = DesignTokenContext,
	DesignTokenProvider = DesignTokenProvider,
	useDesignTokens = useDesignTokens,
}
