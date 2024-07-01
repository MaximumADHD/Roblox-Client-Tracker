--!strict
-- https://programming-idioms.org/idiom/19/reverse-a-list/1314/lua
type Array<T> = { [number]: any }
function reverse(t: Array<any>): Array<any>
	local n = #t
	local i = 1
	while i < n do
		t[i], t[n] = t[n], t[i]
		i = i + 1
		n = n - 1
	end
	return t
end

return reverse
