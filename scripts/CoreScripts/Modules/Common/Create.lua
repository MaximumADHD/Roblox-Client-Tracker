local CorePackages = game:GetService("CorePackages")
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

-- FFlagLuaAppUnifiedCreateUtility cleanup TODO: Cleanup and replace usage
return function(className, defaultParent): any
	if Create.GetFFlagLuaAppUnifiedCreateUtility() then
		return Create(className)
	end

	return function(propertyList)
		local object = Instance.new(className)
		local parent = nil

		for index, value in next, propertyList do
			if type(index) == 'string' then
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
		elseif defaultParent then
			object.Parent = defaultParent
		end

		return object
	end
end
