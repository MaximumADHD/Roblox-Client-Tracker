local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	fields = {
		contentMetadata = {
			read = makeDefaultReadPolicy({}),
		},
	},
}
