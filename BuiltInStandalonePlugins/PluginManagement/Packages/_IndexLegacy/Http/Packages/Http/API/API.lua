return function(networkingImpl)
	return {
		Ownership = require(script.Ownership)(networkingImpl),
	}
end