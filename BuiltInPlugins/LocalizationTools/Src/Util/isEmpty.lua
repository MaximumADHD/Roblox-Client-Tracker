local function isEmpty(object)
	assert(object ~= nil, "object must not be nil")
	return next(object) == nil
end

return isEmpty