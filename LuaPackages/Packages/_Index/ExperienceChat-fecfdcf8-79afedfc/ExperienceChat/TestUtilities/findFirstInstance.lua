-- used when you want to locate an instance that matches the given props

-- ex: findFirstInstance(game.Folder.TestRoot, { Name = "ObjectName", className = "ImageButton" })
-- finds the first Instance named "ObjectName" that is of class "ImageButton" along the game.Folder.TestRoot path

local function getProperty(instance, property)
	local state, result = pcall(function()
		return instance[property]
	end)

	return if state == true then result else nil
end

local function propertyMatch(object, propsToMatch)
	for propertyName, propertyValue in pairs(propsToMatch) do
		if getProperty(object, propertyName) ~= propertyValue then
			return false
		end
	end

	return true
end

local function findFirstInstance(rootInstance: Instance, propsToMatch: any): Instance?
	for _, object in ipairs(rootInstance:GetDescendants()) do
		if propertyMatch(object, propsToMatch) then
			return object
		end
	end

	return nil
end

return findFirstInstance
