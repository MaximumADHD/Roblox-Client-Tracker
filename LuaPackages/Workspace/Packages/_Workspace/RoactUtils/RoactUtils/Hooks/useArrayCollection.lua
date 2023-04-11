--[[
	A hook for creating an ArrayCollection data structure managing the value in state.
	`findFirst` is the only non const function. All other interfaces will mutate the state.
]]
local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

type ArrayCollection<T> = {
	set: ({ T }) -> (),
	append: (T, ...T) -> (),
	extend: ({ T }) -> (),
	replaceAt: (index: number, value: T) -> (),
	removeAt: (index: number) -> T?,
	remove: (element: T) -> boolean,
	findFirst: (predicate: (T) -> boolean) -> { index: number, value: T }?,
	values: { T },
}

local function useArrayCollection<T>(initialValue: { T }?): ArrayCollection<T>
	local array: { T }, setArray = React.useState(initialValue or {})

	local collection = React.useMemo(function()
		local function extend(values: { T })
			if #values > 0 then
				setArray(Cryo.List.join(array, values))
			end
		end

		local function append(...: T)
			extend(table.pack(...))
		end

		local function replaceAt(index: number, value: T)
			if array[index] and array[index] ~= value then
				setArray(Cryo.List.replaceIndex(array, index, value))
			end
		end

		local function removeAt(index: number): T?
			if index > 0 and index <= #array then
				local nextArray = table.clone(array)
				local removed = table.remove(nextArray, index)
				setArray(nextArray)
				return removed
			end
			return nil
		end

		local function remove(value: T): boolean
			local index = table.find(array, value)
			if index then
				local nextArray = table.clone(array)
				table.remove(nextArray, index)
				setArray(nextArray)
				return true
			end
			return false
		end

		local function findFirst(predicate: (T) -> boolean): { index: number, value: T }?
			for i, value in array do
				if predicate(value) then
					return { index = i, value = value }
				end
			end
			return nil
		end

		return {
			set = setArray,
			append = append,
			extend = extend,
			remove = remove,
			removeAt = removeAt,
			replaceAt = replaceAt,
			findFirst = findFirst,
			values = array,
		}
	end, { array })

	return collection
end

return useArrayCollection
