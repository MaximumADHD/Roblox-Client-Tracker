local Root = script:FindFirstAncestor("Style")
local Packages = Root.Parent
local ArgCheck = require(Packages.ArgCheck)
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local RobloxAppHooks = require(Packages.RobloxAppHooks)
local RobloxAppEnums = require(Packages.RobloxAppEnums)
local useUiModeInfo = RobloxAppHooks.useUiModeInfo
local UIBlox = require(Packages.UIBlox)
local StyleContext = UIBlox.Style.Context
local DesignTokenContext = require(script.Parent.DesignTokenContext)

type UiMode = RobloxAppEnums.UiMode
type UiModeInfo = RobloxAppHooks.UiModeInfo
type DesignTokens = DesignTokenContext.DesignTokens

export type TokenMapper<FeatureTokens = any> = (uiModeInfo: UiModeInfo, tokens: DesignTokens) -> FeatureTokens

export type Props = {
	uiModeInfo: UiModeInfo?,
	tokenMappers: {
		[string]: TokenMapper<any>,
	},
	children: any,
}

local function DesignTokenProvider(props: Props)
	local appStyles = React.useContext(StyleContext)
	local uiModeInfo = useUiModeInfo()
	uiModeInfo = props.uiModeInfo or uiModeInfo

	local tokenMappers = props.tokenMappers
	local mapperKeys = Cryo.Dictionary.keys(tokenMappers)
	local tokens = appStyles.style.Tokens

	ArgCheck.assert(tokens, "Design Tokens not found, ensure AppStyleProvider has been configured correctly.")

	if not tokens.LuaApps then
		tokens = Cryo.Dictionary.join(tokens, { LuaApps = {} })
	end

	tokens = Cryo.List.foldLeft(mapperKeys, function(mappedTokens, key)
		local luaAppTokens = table.clone(mappedTokens.LuaApps)
		local tokenMapper = tokenMappers[key]
		luaAppTokens[key] = tokenMapper(uiModeInfo, tokens)

		return Cryo.Dictionary.join(mappedTokens, { LuaApps = luaAppTokens })
	end, tokens)

	return React.createElement(DesignTokenContext.Provider, {
		value = tokens,
	}, props.children)
end

return DesignTokenProvider
