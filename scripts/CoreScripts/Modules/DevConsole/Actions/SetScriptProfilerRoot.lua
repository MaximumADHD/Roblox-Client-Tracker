--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(rootNode, rootNodeName)

    return {
        rootNode = rootNode,
        rootNodeName = rootNodeName,
    }
end)
