--!strict
type Array<T> = { [number]: T }
type PredicateFunction = (any, number, Array<any>) -> boolean

return function(array: Array<any>, predicate: PredicateFunction): number
	for i = 1, #array do
		local element = array[i]
		if predicate(element, i, array) then
			return i
		end
	end
	return -1
end
