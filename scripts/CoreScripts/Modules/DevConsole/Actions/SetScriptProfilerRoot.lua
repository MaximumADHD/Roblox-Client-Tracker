--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(rootNode, rootFunc, rootNodeName)
	return {
		rootNode = rootNode,
		rootFunc = rootFunc,
		rootNodeName = rootNodeName,
	}
end)
