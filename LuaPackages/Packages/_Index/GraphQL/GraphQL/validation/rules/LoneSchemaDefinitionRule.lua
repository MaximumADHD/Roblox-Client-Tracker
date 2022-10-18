--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/LoneSchemaDefinitionRule.js

local srcWorkspace = script.Parent.Parent.Parent

local GraphQLError = require(srcWorkspace.error.GraphQLError).GraphQLError

local isNillishModule = require(srcWorkspace.luaUtils.isNillish)
local isNillish = isNillishModule.isNillish
local isNotNillish = isNillishModule.isNotNillish

local exports = {}

-- /**
--  * Lone Schema definition
--  *
--  * A GraphQL document is only valid if it contains only one schema definition.
--  */
exports.LoneSchemaDefinitionRule = function(context)
	local oldSchema = context:getSchema()
	local alreadyDefined = nil
	if oldSchema then
		alreadyDefined = oldSchema.astNode
		if isNillish(alreadyDefined) then
			alreadyDefined = oldSchema:getQueryType()
		end
		if isNillish(alreadyDefined) then
			alreadyDefined = oldSchema:getMutationType()
		end
		if isNillish(alreadyDefined) then
			alreadyDefined = oldSchema:getSubscriptionType()
		end
	end

	local schemaDefinitionsCount = 0
	return {
		SchemaDefinition = function(_self, node)
			if isNotNillish(alreadyDefined) then
				context:reportError(
					GraphQLError.new("Cannot define a new schema within a schema extension.", node)
				)
				return
			end

			if schemaDefinitionsCount > 0 then
				context:reportError(
					GraphQLError.new("Must provide only one schema definition.", node)
				)
			end
			schemaDefinitionsCount = schemaDefinitionsCount + 1
		end,
	}
end

return exports
