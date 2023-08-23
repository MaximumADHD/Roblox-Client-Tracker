local makeActionCreator = require(script.Parent.makeActionCreator)

return makeActionCreator(script.Name, "id", "equipIfPurchased", "isRobloxPurchase", "idempotencyKey", "purchaseAuthToken", "collectibleItemId", "collectibleItemInstanceId", "collectibleProductId", "expectedPrice")
