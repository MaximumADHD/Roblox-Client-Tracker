local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Tokens = require(Style.Tokens)
local TokensContext = require(Style.TokensContext)
type Tokens = Tokens.Tokens
local React = require(Packages.React)

local function useTokens(): Tokens
	local style = React.useContext(TokensContext)
	return style
end

return useTokens
