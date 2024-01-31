--!strict

return function(value: any): boolean
	return if type(value) == "userdata" and value.rawValue then true else false
end
