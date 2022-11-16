-- used when you want to locate an instance that matches the given props and turn it into a Rhodium element

-- ex: findFirstElement(game.Folder.TestRoot, { Name = "ObjectName", className = "ImageButton" })
-- ex 2: findFirstElement(game.Folder.TestRoot, "[.Name = ObjectName, className = ImageButton]")
--both find the first Instance named "ObjectName" that is of class "ImageButton" along the game.Folder.TestRoot path and returns the associated Element

local Root = script.Parent
local Packages = Root.Parent

local Rhodium = require(Packages.Rhodium)
local Element = Rhodium.Element

local findFirstInstance = require(Packages.TestUtils).findFirstInstance

return function(object, propsToMatch)
	local instance = findFirstInstance(object, propsToMatch)

	if instance then
		return Element.new("game." .. instance:GetFullName())
	else
		return nil
	end
end
