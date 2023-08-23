--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/components/Query.tsx
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object

-- ROBLOX TODO: PropTypes not available
-- local PropTypes = require(rootWorkspace["prop-types"])

local coreModule = require(srcWorkspace.core)
type OperationVariables = coreModule.OperationVariables

local typesModule = require(script.Parent.types)
type QueryComponentOptions<TData, TVariables> = typesModule.QueryComponentOptions<TData, TVariables>

local useQuery = require(script.Parent.Parent.hooks).useQuery

local function Query<TData, TVariables>(props: QueryComponentOptions<TData, TVariables>)
	local children, query, options =
		props.children, props.query, Object.assign({}, props, { children = Object.None, query = Object.None })

	local result = useQuery(query, options)

	if Boolean.toJSBoolean(result) then
		return children(result)
	else
		return nil
	end
end

exports.Query = Query

-- ROBLOX TODO: Proptypes not available
-- export type Query<TData, TVariables> = {
-- 	propTypes: undefined<QueryComponentOptions<TData, TVariables>>,
-- }
-- Query.propTypes = {
-- 	client = PropTypes.object,
-- 	children = PropTypes.func.isRequired,
-- 	fetchPolicy = PropTypes.string,
-- 	notifyOnNetworkStatusChange = PropTypes.bool,
-- 	onCompleted = PropTypes.func,
-- 	onError = PropTypes.func,
-- 	pollInterval = PropTypes.number,
-- 	query = PropTypes.object.isRequired,
-- 	variables = PropTypes.object,
-- 	ssr = PropTypes.bool,
-- 	partialRefetch = PropTypes.bool,
-- 	returnPartialData = PropTypes.bool,
-- } :: any--[[ Query<any, any>["propTypes"] ]]

return exports
