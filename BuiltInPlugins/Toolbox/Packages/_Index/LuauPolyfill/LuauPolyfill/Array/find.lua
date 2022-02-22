type Array<T> = { [number]: T }
type PredicateFunction = (any, number, Array<any>) -> boolean

return function(array: Array<any>, predicate: PredicateFunction): any | nil
	for i = 1, #array do
		local element = array[i]
		if predicate(element, i, array) then
			return element
		end
	end
	return nil
end
