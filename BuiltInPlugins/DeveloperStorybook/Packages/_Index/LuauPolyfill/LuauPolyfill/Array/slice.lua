--!nocheck
-- CLI-37948: nocheck for now because narrowing fails

type Array<T> = { [number]: T }

-- Implements Javascript's `Array.prototype.slice` as defined below, but with 1-indexing
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
return function(t: Array<any>, start_idx: number?, end_idx: number?): Array<any>
	if typeof(t) ~= "table" then
		error(string.format("Array.slice called on %s", typeof(t)))
	end
	local length = #t

	if start_idx == nil then
		start_idx = 1
	end
	if end_idx == nil or end_idx > length + 1 then
		end_idx = length + 1
	end

	if start_idx > length + 1 then
		return {}
	end

	local slice = {}

	if start_idx < 1 then
		start_idx = math.max(length - math.abs(start_idx), 1)
	end
	if end_idx < 1 then
		end_idx = math.max(length - math.abs(end_idx), 1)
	end

	local idx = start_idx
	local i = 1
	while idx < end_idx do
		slice[i] = t[idx]
		idx = idx + 1
		i = i + 1
	end

	return slice
end
