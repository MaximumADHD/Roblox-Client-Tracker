-- used when you want to get the count the number of instances in an object
-- can also pass an instanceType to filter all instances not of that type

-- ex: countInstances(game.Folder.TestRoot, "GuiButton")
-- counts the number of "GuiButton" instances directly within the game.Folder.TestRoot instance

return function(object, instanceType)
	local numElements = 0

	for _, element in pairs(object:GetChildren()) do
		if not instanceType or element:IsA(instanceType) then
			numElements = numElements + 1
		end
	end

	return numElements
end
