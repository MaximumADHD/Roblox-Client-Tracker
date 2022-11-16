local Root = script.Parent
local Packages = Root.Parent

local Rhodium = require(Packages.Rhodium)
local Element = Rhodium.Element

return function(instance)
	local element = Element.new(instance)
	element:click()
	wait(0)
end
