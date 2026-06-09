local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent

local Dash = require(Packages.Dash)
local Types = require(Root.Types)

local function mergeContexts(baseContext: Types.Context, newContext: Types.PartialContext): Types.Context
	return Dash.joinDeep(baseContext, newContext)
end
return mergeContexts
