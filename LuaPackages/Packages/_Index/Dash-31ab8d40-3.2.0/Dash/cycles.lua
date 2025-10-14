local Dash = script.Parent
local Types = require(Dash.Types)
local includes = require(Dash.includes)
local keys = require(Dash.keys)

local sort = table.sort

export type Cycles = {
	-- A set of tables which were visited recursively
	visited: Types.Set<Types.Table>,
	-- A map from table to unique index in visit order
	refs: Types.Map<Types.Table, number>,
	-- The number to use for the next unique table visited
	nextRef: number,
	-- An array of keys which should not be visited
	omit: { any },
}

local function getDefaultCycles(): Cycles
	return {
		visited = {},
		refs = {},
		nextRef = 1,
		omit = {},
	}
end

-- TODO Luau: Improve type inference to a point that this definition does not produce so many type errors
-- TYPED: local function cycles(value: any, depth: number?, initialCycles: Cycles?): Cycles
--[=[
	Returns a Cycles object describing repeated table references found by recursively walking _input_.

	Works with cyclic structures. Keys are visited in a stable order to preserve reference numbering.
	If _depth_ is provided, traversal stops when it reaches -1; pass an existing _initialCycles_ to continue accumulation across calls.

	@param input Any value to inspect; only tables contribute cycles.
	@param depth Optional maximum recursion depth (decremented on each recursive step).
	@param initialCycles An existing Cycles object to update; if omitted a new one is created.
	@return A Cycles object for tables; `nil` for non-table inputs.
]=]
local function cycles(input: any, depth: number?, initialCycles: any): Cycles?
	if depth == -1 then
		return initialCycles
	end

	if typeof(input) == "table" then
		local childCycles = initialCycles or getDefaultCycles()

		if childCycles.visited[input] then
			-- We have already visited the table, so check if it has a reference
			if not childCycles.refs[input] then
				-- If not, create one as it is present at least twice
				childCycles.refs[input] = childCycles.nextRef
				childCycles.nextRef += 1
			end
			return nil
		else
			-- We haven't yet visited the table, so recurse
			childCycles.visited[input] = true
			-- Visit in order to preserve reference consistency
			local inputKeys = keys(input)
			sort(inputKeys, function(left, right)
				if typeof(left) == "number" and typeof(right) == "number" then
					return left < right
				else
					return tostring(left) < tostring(right)
				end
			end)
			for _, key in ipairs(inputKeys) do
				local value = input[key]
				if includes(childCycles.omit, key) then
					-- Don't visit omitted keys
					continue
				end
				-- TODO Luau: support type narrowring with "and"
				-- TYPED: cycles(key, depth and depth - 1 or nil, childCycles)
				-- TYPED: cycles(value, depth and depth - 1 or nil, childCycles)
				-- Recurse through both the keys and values of the table
				if depth then
					cycles(key, depth - 1, childCycles)
					cycles(value, depth - 1, childCycles)
				else
					cycles(key, nil, childCycles)
					cycles(value, nil, childCycles)
				end
			end
		end
		return childCycles
	else
		-- Non-tables do not have cycles
		return nil
	end
end

return cycles
