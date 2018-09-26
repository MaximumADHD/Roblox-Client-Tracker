return function(className, defaultParent)
	return function(propertyList)
		local object = Instance.new(className)
		local parent = nil

		for index, value in next, propertyList do
			if typeof(index) == 'string' then
				if index == 'Parent' then
					parent = value
				else
					object[index] = value
				end
			else
				local valueType = typeof(value)
				if valueType == 'function' then
					value(object)
				elseif valueType == 'Instance' then
					value.Parent = object
				end
			end
		end

		if parent then
			object.Parent = parent
		end

		if object.Parent == nil then
			object.Parent = defaultParent
		end

		return object
	end
end