--!strict
local createRequestThunks = require(script.createRequestThunks)
local Enums = require(script.Enums)

return {
	config = createRequestThunks,
	Enums = Enums,
}
