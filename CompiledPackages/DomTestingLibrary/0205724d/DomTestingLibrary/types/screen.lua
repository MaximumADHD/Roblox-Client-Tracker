-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/types/screen.d.ts
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local prettyFormatModule = require(Packages.PrettyFormat)
type OptionsReceived = prettyFormatModule.OptionsReceived
local get_queries_for_elementModule = require(script.Parent["get-queries-for-element"])
type BoundFunctions<Q> = get_queries_for_elementModule.BoundFunctions<Q>
type Queries = get_queries_for_elementModule.Queries
-- local queries = require(script.Parent.queries)

-- ROBLOX comment: can't express typeof queries
export type Screen<Q> = BoundFunctions<Q> & {
	--[[*
   		* Convenience function for `pretty-dom` which also allows an array
   		* of elements
   	]]
	debug_: (element: (Array<Instance> | Instance)?, maxLength: number?, options: OptionsReceived?) -> (),
	--[[*
   		* Convenience function for `Testing Playground` which logs URL that
   		* can be opened in a browser
   	]]
	logTestingPlaygroundURL: (element: Instance?) -> (),
}
export type screen = Screen<any>

return exports
