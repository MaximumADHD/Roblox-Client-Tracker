local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	fields = {
		recommendations = {
			read = makeDefaultReadPolicy({}),
		},
	},
}
