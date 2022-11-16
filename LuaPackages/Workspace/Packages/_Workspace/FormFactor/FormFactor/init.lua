local FormFactor = require(script.FormFactor)
local FormFactorReducer = require(script.FormFactorReducer)
local SetFormFactor = require(script.SetFormFactor)

return {
	FormFactorReducer = FormFactorReducer,
	Enums = {
		FormFactor = FormFactor,
	},
	Actions = {
		SetFormFactor = SetFormFactor,
	},
}
