local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Tokens = require(Style.Tokens)
local TokensContext = require(Style.TokensContext)

type Tokens = Tokens.Tokens

--[[
	Render-prop helper that exposes Foundation Tokens to class components, which
	cannot call the `useTokens` hook. Prefer `useTokens` in function components.
	Class components are deprecated; migrate to function components when possible.
]]
local function withTokens_DEPRECATED(renderWithTokens: (tokens: Tokens) -> any)
	return React.createElement(TokensContext.Consumer, {
		render = renderWithTokens,
	})
end

return withTokens_DEPRECATED
