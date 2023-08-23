--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/graphql/directives.ts

local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type ReadonlyArray<T> = Array<T>
type Record<T, U> = { [T]: U }

-- Provides the methods that allow QueryManager to handle the `skip` and
-- `include` directives within GraphQL.
local graphQLModule = require(rootWorkspace.GraphQL)
type SelectionNode = graphQLModule.SelectionNode
type VariableNode = graphQLModule.VariableNode
type BooleanValueNode = graphQLModule.BooleanValueNode
type DirectiveNode = graphQLModule.DirectiveNode
type DocumentNode = graphQLModule.DocumentNode
type ArgumentNode = graphQLModule.ArgumentNode
type ValueNode = graphQLModule.ValueNode
local visit = graphQLModule.visit
type ASTNode = graphQLModule.ASTNode

local invariant = require(srcWorkspace.jsutils.invariant).invariant

export type DirectiveInfo = { [string]: { [string]: any } }

-- ROBLOX deviation: pre-declaring getInclusionDirectives so shouldInclude has it in scope
local getInclusionDirectives

local function shouldInclude(ref: SelectionNode, variables: Record<string, any>?): boolean
	local directives = ref.directives
	-- ROBLOX deviation START: remove Boolean
	if not directives or #(directives :: Array<DirectiveNode>) == 0 then
		-- ROBLOX deviation END
		return true
	end
	return Array.every(getInclusionDirectives(directives :: Array<DirectiveNode>), function(ref)
		local directive, ifArgument = ref.directive, ref.ifArgument
		local evaledValue: boolean = false
		if ifArgument.value.kind == "Variable" then
			evaledValue = variables ~= nil and variables[ifArgument.value.name.value]
			invariant(
				evaledValue ~= nil,
				("Invalid variable referenced in @%s directive."):format(directive.name.value)
			)
		else
			evaledValue = ((ifArgument.value :: any) :: BooleanValueNode).value
		end
		if directive.name.value == "skip" then
			return not evaledValue
		else
			return evaledValue
		end
	end)
end
exports.shouldInclude = shouldInclude

local function getDirectiveNames(root: ASTNode)
	local names: Array<string> = {}

	visit(root, {
		Directive = function(_self, node: DirectiveNode)
			table.insert(names, node.name.value)
		end,
	})

	return names
end
exports.getDirectiveNames = getDirectiveNames

local function hasDirectives(names: Array<string>, root: ASTNode)
	return Array.some(getDirectiveNames(root), function(name: string)
		return Array.indexOf(names, name) > -1
	end)
end
exports.hasDirectives = hasDirectives

local function hasClientExports(document: DocumentNode)
	-- ROBLOX deviation START: remove Boolean
	return document ~= nil and hasDirectives({ "client" }, document) and hasDirectives({ "export" }, document)
	-- ROBLOX deviation END
end
exports.hasClientExports = hasClientExports

export type InclusionDirectives = Array<{ directive: DirectiveNode, ifArgument: ArgumentNode }>

local function isInclusionDirective(ref): boolean
	local value = ref.name.value
	return value == "skip" or value == "include"
end

function getInclusionDirectives(directives: ReadonlyArray<DirectiveNode>): InclusionDirectives
	local result: InclusionDirectives = {}

	-- ROBLOX deviation START: remove Boolean
	if directives and #directives > 0 then
		-- ROBLOX deviation END
		Array.forEach(directives, function(directive)
			if not isInclusionDirective(directive) then
				return
			end

			local directiveArguments = directive.arguments
			local directiveName = directive.name.value

			-- ROBLOX deviation START: optimize invariants
			if not (directiveArguments and #directiveArguments == 1) then
				invariant(false, ("Incorrect number of arguments for the @%s directive."):format(directiveName))
			end

			local ifArgument = directiveArguments[1]

			if not (ifArgument.name and ifArgument.name.value == "if") then
				invariant(false, ("Invalid argument for the @%s directive."):format(directiveName))
			end

			local ifValue: ValueNode = ifArgument.value

			-- means it has to be a variable value if this is a valid @skip or @include directive
			if not (ifValue and (ifValue.kind == "Variable" or ifValue.kind == "BooleanValue")) then
				invariant(
					false,
					("Argument for the @%s directive must be a variable or a boolean value."):format(directiveName)
				)
			end
			-- ROBLOX deviation END

			table.insert(result, { directive = directive, ifArgument = ifArgument })
		end)
	end
	return result
end
exports.getInclusionDirectives = getInclusionDirectives

return exports
