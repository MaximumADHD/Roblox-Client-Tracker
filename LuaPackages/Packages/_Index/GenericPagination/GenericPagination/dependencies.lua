local ROOT = script.Parent
local Packages = ROOT.Parent

return {
	t = require(Packages.t),
	LinkedList = require(ROOT.LinkedList),
	Promise = require(Packages.Promise),
}
