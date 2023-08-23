local CorePackages = game:GetService("CorePackages")
local CollectibleItemInstance = require(script.Parent.Parent.Models.CollectibleInstance)
local Action = require(CorePackages.Rodux).makeActionCreator
type CollectibleItemInstanceModel = CollectibleItemInstance.CollectibleItemInstanceModel

return Action(script.Name, function(collectibleItemId: string?, collectibleItemInstances: {[string]: CollectibleItemInstanceModel})
    return {
        collectibleItemId = collectibleItemId,
        collectibleItemInstances = collectibleItemInstances
    }
end)
