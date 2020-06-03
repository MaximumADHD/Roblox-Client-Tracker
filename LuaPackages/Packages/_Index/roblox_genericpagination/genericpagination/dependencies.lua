local ROOT = script.Parent
local Packages = script:FindFirstAncestor("Packages")

return {
	t = require(Packages.t),
	LinkedList = require(ROOT.LinkedList),
	Promise = require(Packages.Promise),
}
