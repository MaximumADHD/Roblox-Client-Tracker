local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local TokensContext = require(Style.TokensContext)
local Tokens = require(Style.Tokens)
type Tokens = Tokens.Tokens
local React = require(Packages.React)

local function useTokens(): Tokens
	local style = React.useContext(TokensContext)
	return style
end

return useTokens
