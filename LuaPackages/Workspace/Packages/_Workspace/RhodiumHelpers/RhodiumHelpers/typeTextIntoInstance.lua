--This helper function takes an Instance and a Text string to simulate a user typing an input letter-by-letter.

local Root = script.Parent
local Packages = Root.Parent

local Rhodium = require(Packages.Rhodium)
local Element = Rhodium.Element

local typeTextIntoElement = require(script.Parent.typeTextIntoElement)

return function(instance, text)
	local element = Element.new(instance)
	typeTextIntoElement(element, text)
end
