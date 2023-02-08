local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local Object = require(Packages.LuauPolyfill).Object

local OmniFeedVars = require(script.OmniFeedVars)

local exports = {}
Object.assign(exports, OmniFeedVars)

return exports :: typeof(OmniFeedVars)
