return {
	config = function(options)
		local NetworkStatus = require(script.NetworkStatus)(options)

		return {
			GET = require(script.GET)(options),
			POST = require(script.POST)(options),
			installReducer = NetworkStatus.installReducer,

			Enum = {
				NetworkStatus = NetworkStatus.Enum.Status,
			},
		}
	end,
}
