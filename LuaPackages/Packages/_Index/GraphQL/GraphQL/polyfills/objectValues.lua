local graphql = script.Parent.Parent
local Packages = graphql.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)

return {
	objectValues = LuauPolyfill.Object.values,
}
