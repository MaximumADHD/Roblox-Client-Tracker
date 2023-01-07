--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/05b8d0716ea513a7efc88cd173a2a15a8aba5bbc/src/validation/rules/OverlappingFieldsCanBeMergedRule.js

local root = script.Parent.Parent.Parent
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
type Map<T, V> = LuauPolyfill.Map<T, V>

local NULL = require(root.luaUtils.null)
local jsutils = root.jsutils
local language = root.language
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local inspect = require(jsutils.inspect).inspect
local Kind = require(language.kinds).Kind
local print_ = require(language.printer).print
local definition = require(root.type.definition)
local getNamedType = definition.getNamedType
local isNonNullType = definition.isNonNullType
local isLeafType = definition.isLeafType
local isObjectType = definition.isObjectType
local isListType = definition.isListType
local isInterfaceType = definition.isInterfaceType
local typeFromAST = require(root.utilities.typeFromAST).typeFromAST

local exports = {}

-- ROBLOX deviation: pre-declare functions and class
local findConflictsWithinSelectionSet
local collectConflictsBetweenFieldsAndFragment
local collectConflictsBetween
local collectConflictsWithin
local collectConflictsBetweenFragments
local getFieldsAndFragmentNames
local getReferencedFieldsAndFragmentNames
local findConflict
local sameArguments
local doTypesConflict
local subfieldConflicts
local PairSet: PairSet

local function reasonMessage(reason): string
	if Array.isArray(reason) then
		return table.concat(
			Array.map(reason, function(item)
				local responseName, subReason = item[1], item[2]
				return ('subfields "%s" conflict because '):format(responseName)
					.. reasonMessage(subReason)
			end),
			" and "
		)
	end
	return reason
end

-- /**
--  * Overlapping fields can be merged
--  *
--  * A selection set is only valid if all fields (including spreading any
--  * fragments) either correspond to distinct response names or can be merged
--  * without ambiguity.
--  */
exports.OverlappingFieldsCanBeMergedRule = function(context)
	-- // A memoization for when two fragments are compared "between" each other for
	-- // conflicts. Two fragments may be compared many times, so memoizing this can
	-- // dramatically improve the performance of this validator.
	local comparedFragmentPairs = PairSet.new()

	-- // A cache for the "field map" and list of fragment names found in any given
	-- // selection set. Selection sets may be asked for this information multiple
	-- // times, so this improves the performance of this validator.
	local cachedFieldsAndFragmentNames = {}

	return {
		SelectionSet = function(_self, selectionSet)
			local conflicts = findConflictsWithinSelectionSet(
				context,
				cachedFieldsAndFragmentNames,
				comparedFragmentPairs,
				context:getParentType(),
				selectionSet
			)
			for _, conflict in ipairs(conflicts) do
				local reasonInfo = conflict[1]
				local responseName = reasonInfo[1]
				local reason = reasonInfo[2]
				local fields1 = conflict[2]
				local fields2 = conflict[3]
				local reasonMsg = reasonMessage(reason)
				context:reportError(
					GraphQLError.new(
						(
							'Fields "%s" conflict because %s. Use different aliases on the fields to fetch both if this was intentional.'
						):format(responseName, reasonMsg),
						Array.concat(fields1, fields2)
					)
				)
			end
		end,
	}
end

-- /**
--  * Algorithm:
--  *
--  * Conflicts occur when two fields exist in a query which will produce the same
--  * response name, but represent differing values, thus creating a conflict.
--  * The algorithm below finds all conflicts via making a series of comparisons
--  * between fields. In order to compare as few fields as possible, this makes
--  * a series of comparisons "within" sets of fields and "between" sets of fields.
--  *
--  * Given any selection set, a collection produces both a set of fields by
--  * also including all inline fragments, as well as a list of fragments
--  * referenced by fragment spreads.
--  *
--  * A) Each selection set represented in the document first compares "within" its
--  * collected set of fields, finding any conflicts between every pair of
--  * overlapping fields.
--  * Note: This is the *only time* that a the fields "within" a set are compared
--  * to each other. After this only fields "between" sets are compared.
--  *
--  * B) Also, if any fragment is referenced in a selection set, then a
--  * comparison is made "between" the original set of fields and the
--  * referenced fragment.
--  *
--  * C) Also, if multiple fragments are referenced, then comparisons
--  * are made "between" each referenced fragment.
--  *
--  * D) When comparing "between" a set of fields and a referenced fragment, first
--  * a comparison is made between each field in the original set of fields and
--  * each field in the the referenced set of fields.
--  *
--  * E) Also, if any fragment is referenced in the referenced selection set,
--  * then a comparison is made "between" the original set of fields and the
--  * referenced fragment (recursively referring to step D).
--  *
--  * F) When comparing "between" two fragments, first a comparison is made between
--  * each field in the first referenced set of fields and each field in the the
--  * second referenced set of fields.
--  *
--  * G) Also, any fragments referenced by the first must be compared to the
--  * second, and any fragments referenced by the second must be compared to the
--  * first (recursively referring to step F).
--  *
--  * H) When comparing two fields, if both have selection sets, then a comparison
--  * is made "between" both selection sets, first comparing the set of fields in
--  * the first selection set with the set of fields in the second.
--  *
--  * I) Also, if any fragment is referenced in either selection set, then a
--  * comparison is made "between" the other set of fields and the
--  * referenced fragment.
--  *
--  * J) Also, if two fragments are referenced in both selection sets, then a
--  * comparison is made "between" the two fragments.
--  *
--  */

-- // Find all conflicts found "within" a selection set, including those found
-- // via spreading in fragments. Called when visiting each SelectionSet in the
-- // GraphQL Document.
function findConflictsWithinSelectionSet(
	context,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	parentType,
	selectionSet
)
	local conflicts = {}

	local fieldsAndFragment = getFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		parentType,
		selectionSet
	)
	local fieldMap, fragmentNames = fieldsAndFragment[1], fieldsAndFragment[2]

	-- // (A) Find find all conflicts "within" the fields of this selection set.
	-- // Note: this is the *only place* `collectConflictsWithin` is called.
	collectConflictsWithin(
		context,
		conflicts,
		cachedFieldsAndFragmentNames,
		comparedFragmentPairs,
		fieldMap
	)

	if #fragmentNames ~= 0 then
		-- // (B) Then collect conflicts between these fields and those represented by
		-- // each spread fragment name found.
		for i = 1, #fragmentNames do
			collectConflictsBetweenFieldsAndFragment(
				context,
				conflicts,
				cachedFieldsAndFragmentNames,
				comparedFragmentPairs,
				false,
				fieldMap,
				fragmentNames[i]
			)
			-- // (C) Then compare this fragment with all other fragments found in this
			-- // selection set to collect conflicts between fragments spread together.
			-- // This compares each item in the list of fragment names to every other
			-- // item in that same list (except for itself).
			for j = i + 1, #fragmentNames do
				collectConflictsBetweenFragments(
					context,
					conflicts,
					cachedFieldsAndFragmentNames,
					comparedFragmentPairs,
					false,
					fragmentNames[i],
					fragmentNames[j]
				)
			end
		end
	end
	return conflicts
end

-- // Collect all conflicts found between a set of fields and a fragment reference
-- // including via spreading in any nested fragments.
function collectConflictsBetweenFieldsAndFragment(
	context,
	conflicts,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	areMutuallyExclusive,
	fieldMap,
	fragmentName
)
	local fragment = context:getFragment(fragmentName)
	if not fragment then
		return
	end

	local fieldsAndFragment = getReferencedFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		fragment
	)
	local fieldMap2, fragmentNames2 = fieldsAndFragment[1], fieldsAndFragment[2]

	-- // Do not compare a fragment's fieldMap to itself.
	if fieldMap == fieldMap2 then
		return
	end

	-- // (D) First collect any conflicts between the provided collection of fields
	-- // and the collection of fields represented by the given fragment.
	collectConflictsBetween(
		context,
		conflicts,
		cachedFieldsAndFragmentNames,
		comparedFragmentPairs,
		areMutuallyExclusive,
		fieldMap,
		fieldMap2
	)

	-- // (E) Then collect any conflicts between the provided collection of fields
	-- // and any fragment names found in the given fragment.
	for i = 1, #fragmentNames2 do
		collectConflictsBetweenFieldsAndFragment(
			context,
			conflicts,
			cachedFieldsAndFragmentNames,
			comparedFragmentPairs,
			areMutuallyExclusive,
			fieldMap,
			fragmentNames2[i]
		)
	end
end

-- // Collect all conflicts found between two fragments, including via spreading in
-- // any nested fragments.
function collectConflictsBetweenFragments(
	context,
	conflicts,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	areMutuallyExclusive,
	fragmentName1,
	fragmentName2
)
	-- // No need to compare a fragment to itself.
	if fragmentName1 == fragmentName2 then
		return
	end

	-- // Memoize so two fragments are not compared for conflicts more than once.
	if comparedFragmentPairs:has(fragmentName1, fragmentName2, areMutuallyExclusive) then
		return
	end

	comparedFragmentPairs:add(fragmentName1, fragmentName2, areMutuallyExclusive)

	local fragment1 = context:getFragment(fragmentName1)
	local fragment2 = context:getFragment(fragmentName2)
	if not fragment1 or not fragment2 then
		return
	end

	local fieldAndFragment1 = getReferencedFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		fragment1
	)
	local fieldMap1, fragmentNames1 = fieldAndFragment1[1], fieldAndFragment1[2]

	local fieldAndFragment2 = getReferencedFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		fragment2
	)
	local fieldMap2, fragmentNames2 = fieldAndFragment2[1], fieldAndFragment2[2]

	-- // (F) First, collect all conflicts between these two collections of fields
	-- // (not including any nested fragments).
	collectConflictsBetween(
		context,
		conflicts,
		cachedFieldsAndFragmentNames,
		comparedFragmentPairs,
		areMutuallyExclusive,
		fieldMap1,
		fieldMap2
	)

	-- // (G) Then collect conflicts between the first fragment and any nested
	-- // fragments spread in the second fragment.
	for j = 1, #fragmentNames2 do
		collectConflictsBetweenFragments(
			context,
			conflicts,
			cachedFieldsAndFragmentNames,
			comparedFragmentPairs,
			areMutuallyExclusive,
			fragmentName1,
			fragmentNames2[j]
		)
	end

	-- // (G) Then collect conflicts between the second fragment and any nested
	-- // fragments spread in the first fragment.
	for i = 1, #fragmentNames1 do
		collectConflictsBetweenFragments(
			context,
			conflicts,
			cachedFieldsAndFragmentNames,
			comparedFragmentPairs,
			areMutuallyExclusive,
			fragmentNames1[i],
			fragmentName2
		)
	end
end

-- // Find all conflicts found between two selection sets, including those found
-- // via spreading in fragments. Called when determining if conflicts exist
-- // between the sub-fields of two overlapping fields.
local function findConflictsBetweenSubSelectionSets(
	context,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	areMutuallyExclusive,
	parentType1,
	selectionSet1,
	parentType2,
	selectionSet2
)
	local conflicts = {}

	local fieldAndFragment1 = getFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		parentType1,
		selectionSet1
	)
	local fieldMap1, fragmentNames1 = fieldAndFragment1[1], fieldAndFragment1[2]

	local fieldAndFragment2 = getFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		parentType2,
		selectionSet2
	)
	local fieldMap2, fragmentNames2 = fieldAndFragment2[1], fieldAndFragment2[2]

	-- // (H) First, collect all conflicts between these two collections of field.
	collectConflictsBetween(
		context,
		conflicts,
		cachedFieldsAndFragmentNames,
		comparedFragmentPairs,
		areMutuallyExclusive,
		fieldMap1,
		fieldMap2
	)

	-- // (I) Then collect conflicts between the first collection of fields and
	-- // those referenced by each fragment name associated with the second.
	if #fragmentNames2 ~= 0 then
		for j = 1, #fragmentNames2 do
			collectConflictsBetweenFieldsAndFragment(
				context,
				conflicts,
				cachedFieldsAndFragmentNames,
				comparedFragmentPairs,
				areMutuallyExclusive,
				fieldMap1,
				fragmentNames2[j]
			)
		end
	end

	-- // (I) Then collect conflicts between the second collection of fields and
	-- // those referenced by each fragment name associated with the first.
	if #fragmentNames1 ~= 0 then
		for i = 1, #fragmentNames1 do
			collectConflictsBetweenFieldsAndFragment(
				context,
				conflicts,
				cachedFieldsAndFragmentNames,
				comparedFragmentPairs,
				areMutuallyExclusive,
				fieldMap2,
				fragmentNames1[i]
			)
		end
	end

	-- // (J) Also collect conflicts between any fragment names by the first and
	-- // fragment names by the second. This compares each item in the first set of
	-- // names to each item in the second set of names.
	for i = 1, #fragmentNames1 do
		for j = 1, #fragmentNames2 do
			collectConflictsBetweenFragments(
				context,
				conflicts,
				cachedFieldsAndFragmentNames,
				comparedFragmentPairs,
				areMutuallyExclusive,
				fragmentNames1[i],
				fragmentNames2[j]
			)
		end
	end
	return conflicts
end

-- // Collect all Conflicts "within" one collection of fields.
function collectConflictsWithin(
	context,
	conflicts,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	fieldMap
)
	-- // A field map is a keyed collection, where each key represents a response
	-- // name and the value at that key is a list of all fields which provide that
	-- // response name. For every response name, if there are multiple fields, they
	-- // must be compared to find a potential conflict.
	-- ROBLOX deviation: use Ordered Map object
	for _, entry in fieldMap do
		-- // This compares every field in the list to every other field in this list
		-- // (except to itself). If the list only has one item, nothing needs to
		-- // be compared.
		local responseName = entry[1]
		local fields = entry[2]

		if #fields > 1 then
			for i = 1, #fields do
				for j = i + 1, #fields do
					local conflict = findConflict(
						context,
						cachedFieldsAndFragmentNames,
						comparedFragmentPairs,
						false, -- // within one collection is never mutually exclusive
						responseName,
						fields[i],
						fields[j]
					)
					if conflict then
						table.insert(conflicts, conflict)
					end
				end
			end
		end
	end
end

-- // Collect all Conflicts between two collections of fields. This is similar to,
-- // but different from the `collectConflictsWithin` function above. This check
-- // assumes that `collectConflictsWithin` has already been called on each
-- // provided collection of fields. This is true because this validator traverses
-- // each individual selection set.
function collectConflictsBetween(
	context,
	conflicts,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	parentFieldsAreMutuallyExclusive,
	fieldMap1,
	fieldMap2
)
	-- // A field map is a keyed collection, where each key represents a response
	-- // name and the value at that key is a list of all fields which provide that
	-- // response name. For any response name which appears in both provided field
	-- // maps, each field from the first field map must be compared to every field
	-- // in the second field map to find potential conflicts.
	-- ROBLOX TODO: use Ordered Map object
	for _, responseName in ipairs(fieldMap1:keys()) do
		local fields2 = fieldMap2[responseName]
		if fields2 then
			local fields1 = fieldMap1[responseName]
			for i = 1, #fields1 do
				for j = 1, #fields2 do
					local conflict = findConflict(
						context,
						cachedFieldsAndFragmentNames,
						comparedFragmentPairs,
						parentFieldsAreMutuallyExclusive,
						responseName,
						fields1[i],
						fields2[j]
					)
					if conflict then
						table.insert(conflicts, conflict)
					end
				end
			end
		end
	end
end

-- // Determines if there is a conflict between two particular fields, including
-- // comparing their sub-fields.
function findConflict(
	context,
	cachedFieldsAndFragmentNames,
	comparedFragmentPairs,
	parentFieldsAreMutuallyExclusive: boolean,
	responseName: string,
	field1,
	field2
)
	local parentType1, node1, def1 = field1[1], field1[2], field1[3]
	local parentType2, node2, def2 = field2[1], field2[2], field2[3]

	-- // If it is known that two fields could not possibly apply at the same
	-- // time, due to the parent types, then it is safe to permit them to diverge
	-- // in aliased field or arguments used as they will not present any ambiguity
	-- // by differing.
	-- // It is known that two parent types could never overlap if they are
	-- // different Object types. Interface or Union types might overlap - if not
	-- // in the current state of the schema, then perhaps in some future version,
	-- // thus may not safely diverge.
	local areMutuallyExclusive = parentFieldsAreMutuallyExclusive
		or (parentType1 ~= parentType2 and isObjectType(parentType1) and isObjectType(parentType2))

	if not areMutuallyExclusive then
		-- // Two aliases must refer to the same field.
		local name1 = node1.name.value
		local name2 = node2.name.value
		if name1 ~= name2 then
			return {
				{ responseName, ('"%s" and "%s" are different fields'):format(name1, name2) },
				{ node1 },
				{ node2 },
			}
		end

		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		local args1 = node1.arguments or {}
		-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
		local args2 = node2.arguments or {}

		-- // Two field calls must have the same arguments.
		if not sameArguments(args1, args2) then
			return {
				{
					responseName,
					"they have differing arguments",
				},
				{ node1 },
				{ node2 },
			}
		end
	end

	-- // The return type for each field.
	local type1 = def1 and def1.type
	local type2 = def2 and def2.type

	if type1 and type2 and doTypesConflict(type1, type2) then
		return {
			{
				responseName,
				('they return conflicting types "%s" and "%s"'):format(
					inspect(type1),
					inspect(type2)
				),
			},
			{ node1 },
			{ node2 },
		}
	end

	-- // Collect and compare sub-fields. Use the same "visited fragment names" list
	-- // for both collections so fields in a fragment reference are never
	-- // compared to themselves.
	local selectionSet1 = node1.selectionSet
	local selectionSet2 = node2.selectionSet
	if selectionSet1 and selectionSet2 then
		local conflicts = findConflictsBetweenSubSelectionSets(
			context,
			cachedFieldsAndFragmentNames,
			comparedFragmentPairs,
			areMutuallyExclusive,
			getNamedType(type1),
			selectionSet1,
			getNamedType(type2),
			selectionSet2
		)
		return subfieldConflicts(conflicts, responseName, node1, node2)
	end

	-- ROBLOX deviation: explicitly return nil, upstream implicitly returns undefined
	return nil
end

-- ROBLOX deviation: pre-declare function definition
local sameValue
local _collectFieldsAndFragmentNames

function sameArguments(arguments1, arguments2)
	if #arguments1 ~= #arguments2 then
		return false
	end
	return Array.every(arguments1, function(argument1)
		local argument2 = Array.find(arguments2, function(argument)
			return argument.name.value == argument1.name.value
		end)
		if not argument2 then
			return false
		end
		return sameValue(argument1.value, argument2.value)
	end)
end

function sameValue(value1, value2): boolean
	return print_(value1) == print_(value2)
end

-- // Two types conflict if both types could not apply to a value simultaneously.
-- // Composite types are ignored as their individual field types will be compared
-- // later recursively. However List and Non-Null types must match.
function doTypesConflict(type1, type2): boolean
	if isListType(type1) then
		if isListType(type2) then
			return doTypesConflict(type1.ofType, type2.ofType)
		end
		return true
	end
	if isListType(type2) then
		return true
	end
	if isNonNullType(type1) then
		if isNonNullType(type2) then
			return doTypesConflict(type1.ofType, type2.ofType)
		end
		return true
	end
	if isNonNullType(type2) then
		return true
	end
	if isLeafType(type1) or isLeafType(type2) then
		return type1 ~= type2
	end
	return false
end

-- // Given a selection set, return the collection of fields (a mapping of response
-- // name to field nodes and definitions) as well as a list of fragment names
-- // referenced via fragment spreads.
function getFieldsAndFragmentNames(context, cachedFieldsAndFragmentNames, parentType, selectionSet)
	local cached = cachedFieldsAndFragmentNames[selectionSet]
	if not cached then
		-- ROBLOX deviation: use Ordered Map object
		local nodeAndDefs = Map.new()
		local fragmentNames = {}
		_collectFieldsAndFragmentNames(
			context,
			parentType,
			selectionSet,
			nodeAndDefs,
			fragmentNames
		)
		cached = { nodeAndDefs, Object.keys(fragmentNames) }
		cachedFieldsAndFragmentNames[selectionSet] = cached
	end

	return cached
end

-- // Given a reference to a fragment, return the represented collection of fields
-- // as well as a list of nested fragment names referenced via fragment spreads.
function getReferencedFieldsAndFragmentNames(context, cachedFieldsAndFragmentNames, fragment)
	-- // Short-circuit building a type from the node if possible.
	local cached = cachedFieldsAndFragmentNames[fragment.selectionSet]
	if cached then
		return cached
	end

	local fragmentType = typeFromAST(context:getSchema(), fragment.typeCondition)
	return getFieldsAndFragmentNames(
		context,
		cachedFieldsAndFragmentNames,
		fragmentType,
		fragment.selectionSet
	)
end

function _collectFieldsAndFragmentNames(
	context,
	parentType,
	selectionSet,
	nodeAndDefs,
	fragmentNames
)
	for _, selection in ipairs(selectionSet.selections) do
		local selectionKind = selection.kind
		if selectionKind == Kind.FIELD then
			local fieldName = selection.name.value
			local fieldDef
			if isObjectType(parentType) or isInterfaceType(parentType) then
				-- ROBLOX deviation: use Map
				local fields = parentType:getFields()
				fieldDef = fields:get(fieldName)
			end
			local responseName = if selection.alias then selection.alias.value else fieldName
			if not nodeAndDefs[responseName] then
				nodeAndDefs[responseName] = {}
			end

			table.insert(
				nodeAndDefs[responseName],
				{ parentType or NULL, selection or NULL, fieldDef or NULL }
			)
		elseif selectionKind == Kind.FRAGMENT_SPREAD then
			fragmentNames[selection.name.value] = true
		elseif selectionKind == Kind.INLINE_FRAGMENT then
			local typeCondition = selection.typeCondition
			local inlineFragmentType = parentType
			if typeCondition then
				inlineFragmentType = typeFromAST(context:getSchema(), typeCondition)
			end
			_collectFieldsAndFragmentNames(
				context,
				inlineFragmentType,
				selection.selectionSet,
				nodeAndDefs,
				fragmentNames
			)
		end
	end
end

-- // Given a series of Conflicts which occurred between two sub-fields, generate
-- // a single Conflict.
function subfieldConflicts(conflicts, responseName: string, node1, node2)
	if #conflicts > 0 then
		return {
			{
				responseName,
				Array.map(conflicts, function(conflict)
					return conflict[1]
				end),
			},
			Array.reduce(conflicts, function(allFields, fields)
				local fields1 = fields[2]
				return Array.concat(allFields, fields1)
			end, { node1 }),
			Array.reduce(conflicts, function(allFields, fields)
				local fields2 = fields[3]
				return Array.concat(allFields, fields2)
			end, { node2 }),
		}
	end

	-- ROBLOX deviation: explicit return nil, upstream implicitly returns undefined
	return nil
end

-- /**
--  * A way to keep track of pairs of things when the ordering of the pair does
--  * not matter. We do this by maintaining a sort of double adjacency sets.
--  */
type PairSet = {
	_data: Map<string, Map<string, boolean>>,
	new: () -> PairSet,
	has: (self: PairSet, a: string, b: string, areMutuallyExclusive: boolean) -> boolean,
	add: (self: PairSet, a: string, b: string, areMutuallyExclusive: boolean) -> (),
	_pairSetAdd: (self: PairSet, a: string, b: string, areMutuallyExclusive: boolean) -> (),
}

PairSet = {} :: PairSet
local PairSetMetatable = { __index = PairSet }

function PairSet.new(): PairSet
	local self = (setmetatable({}, PairSetMetatable) :: any) :: PairSet
	self._data = {}
	return self
end

function PairSet:has(a: string, b: string, areMutuallyExclusive: boolean): boolean
	local first = self._data[a]
	local result = first and first[b]
	if result == nil then
		return false
	end
	-- // areMutuallyExclusive being false is a superset of being true,
	-- // hence if we want to know if this PairSet "has" these two with no
	-- // exclusivity, we have to ensure it was added as such.
	if areMutuallyExclusive == false then
		return result == false
	end
	return true
end

function PairSet:add(a: string, b: string, areMutuallyExclusive: boolean): ()
	self:_pairSetAdd(a, b, areMutuallyExclusive)
	self:_pairSetAdd(b, a, areMutuallyExclusive)
end

function PairSet:_pairSetAdd(a: string, b: string, areMutuallyExclusive: boolean): ()
	local map = self._data[a]

	if not map then
		map = {}
		self._data[a] = map
	end

	map[b] = areMutuallyExclusive
end

return exports
