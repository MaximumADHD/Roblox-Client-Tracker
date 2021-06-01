-- used when you want to locate an instance that matches the given props and turn it into a Rhodium element

-- ex: findFirstElement(game.Folder.TestRoot, { Name = "ObjectName", className = "ImageButton" })
-- ex 2: findFirstElement(game.Folder.TestRoot, "[.Name = ObjectName, className = ImageButton]")
--both find the first Instance named "ObjectName" that is of class "ImageButton" along the game.Folder.TestRoot path and returns the associated Element

local Packages = script:FindFirstAncestor("Packages")
local Rhodium = require(Packages.Dev.Rhodium)
local Element = Rhodium.Element
local findFirstInstance = require(script.Parent.findFirstInstance)

return function(object, propsToMatch)
	local instance = findFirstInstance(object, propsToMatch)

	if instance then
		return Element.new("game."..instance:GetFullName())
	else
		return nil
	end
end
