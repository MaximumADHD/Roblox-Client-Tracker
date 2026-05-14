-- Scopes whose tag short-names get the scope re-prepended by `formatTokens`
-- (e.g. `bg-system-emphasis`). `attributeRules` uses this to strip the
-- redundant prefix off attribute names so they match the token path.
local KeepPrefix: { [string]: boolean } = {
	System = true,
}

return KeepPrefix
