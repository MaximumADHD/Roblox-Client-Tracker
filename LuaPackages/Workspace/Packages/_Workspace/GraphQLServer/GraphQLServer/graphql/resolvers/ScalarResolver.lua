local GraphQLJSONObject = require(script.Parent.Parent.utils.GraphQLJSONType).GraphQLJSONObject

local exports = {}

local resolvers = {
	JSONObject = GraphQLJSONObject,
}

exports.default = resolvers

return exports
