local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Utils = require(GraphQLServer.Parent.GraphqlToolsUtils)
local collectSubFields = Utils.collectSubFields
local UserProfileNestedFields = require(GraphQLServer.graphql.enums.UserProfileNestedFields)

return function(options, collectSubFields_: any?)
	-- TODO tidy up by upgrading test runner to jest3 (so can use the Mock function)
	local collectSubFieldsImpl: any = if collectSubFields_ then collectSubFields_ else collectSubFields
	local userProfilesSubfields = collectSubFieldsImpl(
		options.schema,
		options.fragments,
		options.variableValues,
		options.returnType,
		options.fieldNodes
	)

	local fields = {}
	for _fieldKey, field in pairs(UserProfileNestedFields) do
		if userProfilesSubfields[field] then
			local subFields = collectSubFieldsImpl(
				options.schema,
				options.fragments,
				options.variableValues,
				options.returnType,
				userProfilesSubfields[field]
			)

			for _subFieldKey, ref in subFields do
				table.insert(fields, `{field}.{ref[1]}`)
			end
		end
	end

	return fields
end
