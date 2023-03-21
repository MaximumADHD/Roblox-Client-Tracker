local mergeLists = require(script.Parent.utils.mergeLists)

return {
	fields = {
		profileInsights = {
			merge = function(_self, existing, incoming)
				return mergeLists(existing, incoming)
			end,
		},
	},
}
