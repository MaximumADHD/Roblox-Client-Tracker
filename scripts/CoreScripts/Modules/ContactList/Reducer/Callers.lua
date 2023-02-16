local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

return Rodux.createReducer({
	{
		timestamp = DateTime.now():ToUniversalTime(),
		userId = 3447649029,
		username = "jovocados",
		state = "Outgoing",
	},
	{
		timestamp = DateTime.now():ToUniversalTime(),
		userId = 2591489824,
		username = "corgichu8",
		state = "Incoming",
	},
	{
		timestamp = DateTime.now():ToUniversalTime(),
		userId = 2591622000,
		username = "hamulgg",
		state = "Missed",
	},
}, {})
