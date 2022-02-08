return function(networkingImpl)
	return {
		v1 = require(script.v1)(networkingImpl),
	}
end