--!strict
local function union<T, U>(dictionary1: T, dictionary2: U): T & U
	local new: any = table.clone(dictionary1 :: any)

	for key, value in dictionary2 :: any do
		new[key] = value
	end

	return new
end

return union
