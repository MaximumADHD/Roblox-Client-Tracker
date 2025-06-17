local makeActionCreator = require(script.Parent.makeActionCreator)

local actionCreator = makeActionCreator(script.Name, "robuxProductId", "productId", "robuxPurchaseAmount", "robuxAmountBeforeBonus", "price", "itemProductId", "itemName", "universeId")

return actionCreator
