local Root = script.Parent.Parent
local makeActionCreator = require(script.Parent.makeActionCreator)
return makeActionCreator(
	script.Name,
	"id",
	"idempotencyKey",
	"purchaseAuthToken",
	"collectibleItemId",
	"collectibleItemInstanceId",
	"collectibleProductId",
	"expectedPrice"
)
