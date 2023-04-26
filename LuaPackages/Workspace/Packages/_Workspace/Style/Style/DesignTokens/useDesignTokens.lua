local Root = script:FindFirstAncestor("Style")
local Packages = Root.Parent
local ArgCheck = require(Packages.ArgCheck)
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local DesignTokenContext = require(script.Parent.DesignTokenContext)

type DesignTokens = DesignTokenContext.DesignTokens
type TokenSelector<T> = (designTokens: DesignTokens) -> T

local function useDesignTokens<T>(tokenSelector: TokenSelector<T>?): T
	local designTokens = React.useContext(DesignTokenContext)
	local selector: TokenSelector<T> = tokenSelector or Dash.identity

	ArgCheck.assert(designTokens, "Design Tokens not found, ensure AppStyleProvider has been configured correctly.")

	return selector(designTokens :: DesignTokens)
end

return useDesignTokens
