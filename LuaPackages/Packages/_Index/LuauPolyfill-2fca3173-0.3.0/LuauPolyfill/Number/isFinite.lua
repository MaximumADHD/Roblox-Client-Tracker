--!strict
return function(value)
	return typeof(value) == "number" and value == value and value ~= math.huge and value ~= -math.huge
end
