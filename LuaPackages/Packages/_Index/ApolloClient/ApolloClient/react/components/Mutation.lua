--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/components/Mutation.tsx
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

-- ROBLOX TODO: PropTypes not available
-- local PropTypes = require(rootWorkspace["prop-types"])

local coreModule = require(srcWorkspace.core)
type OperationVariables = coreModule.OperationVariables

local typesModule = require(script.Parent.types)
type MutationComponentOptions<TData, TVariables, TContext, TCache> = typesModule.MutationComponentOptions<
	TData,
	TVariables,
	TContext,
	TCache
>

local useMutation = require(script.Parent.Parent.hooks).useMutation

local function Mutation<TData, TVariables>(props: MutationComponentOptions<TData, TVariables, any, any>)
	local runMutation, result = table.unpack(useMutation(props.mutation, props), 1, 2)
	if Boolean.toJSBoolean(props.children) then
		return props.children(runMutation, result)
	else
		return nil
	end
end
exports.Mutation = Mutation

-- ROBLOX TODO: Proptypes not available
-- export type Mutation<TData, TVariables> = {
-- 	propTypes: undefined<MutationComponentOptions<TData, TVariables, any, any>>,
-- }
-- Mutation.propTypes = {
-- 	mutation = PropTypes.object.isRequired,
-- 	variables = PropTypes.object,
-- 	optimisticResponse = PropTypes:oneOfType({ PropTypes.object, PropTypes.func }),
-- 	refetchQueries = PropTypes:oneOfType({
-- 		PropTypes:arrayOf(PropTypes:oneOfType({ PropTypes.string, PropTypes.object })),
-- 		PropTypes.func,
-- 	}),
-- 	awaitRefetchQueries = PropTypes.bool,
-- 	update = PropTypes.func,
-- 	children = PropTypes.func.isRequired,
-- 	onCompleted = PropTypes.func,
-- 	onError = PropTypes.func,
-- 	fetchPolicy = PropTypes.string,
-- } :: any--[[ Mutation<any, any>["propTypes"] ]]
--  --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]]
return exports
