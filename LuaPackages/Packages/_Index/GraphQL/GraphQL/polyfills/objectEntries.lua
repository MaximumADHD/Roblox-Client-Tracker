local graphql = script.Parent.Parent
local Packages = graphql.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)

return {
	objectEntries = LuauPolyfill.Object.entries,
}
