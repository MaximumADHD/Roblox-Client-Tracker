local ShallowTable = {}

function ShallowTable.cloneFrozen<T>(record: T): T
	return table.freeze(table.clone(record :: any)) :: any
end

function ShallowTable.containsEqual<T, K>(left: T, right: T, keys: { K }): boolean
	local leftRecord = left :: any
	local rightRecord = right :: any
	for _, key in keys do
		if leftRecord[key] ~= rightRecord[key] then
			return false
		end
	end
	return true
end

function ShallowTable.optionalContainsEqual<T, K>(left: T?, right: T?, keys: { K }): boolean
	return left == right or (left ~= nil and right ~= nil and ShallowTable.containsEqual(left, right, keys))
end

function ShallowTable.equal<T>(left: T, right: T): boolean
	if left == right then
		return true
	end
	local leftRecord = left :: any
	local rightRecord = right :: any
	for key, value in leftRecord do
		if rightRecord[key] ~= value then
			return false
		end
	end
	for key, value in rightRecord do
		if leftRecord[key] ~= value then
			return false
		end
	end
	return true
end

return table.freeze(ShallowTable)
