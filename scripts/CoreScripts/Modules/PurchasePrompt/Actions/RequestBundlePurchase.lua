local Root = script.Parent.Parent

local makeActionCreator = require(script.Parent.makeActionCreator)
local FFlagEnableUGC4ACollectiblePurchaseSupport = require(Root.Parent.Flags.FFlagEnableUGC4ACollectiblePurchaseSupport)

if FFlagEnableUGC4ACollectiblePurchaseSupport then
    return makeActionCreator(script.Name, "id", "idempotencyKey", "purchaseAuthToken", "collectibleItemId", "collectibleItemInstanceId", "collectibleProductId", "expectedPrice")
end

return makeActionCreator(script.Name, "id")
