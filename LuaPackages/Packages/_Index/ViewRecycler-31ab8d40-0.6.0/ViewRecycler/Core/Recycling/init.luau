local createRecyclingScope = require(script.RecyclingScope)

return table.freeze({
	createScope = createRecyclingScope,
})
