local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FullBleed = require(script.Parent.FullBleed)

local function getElementType(node: React.ReactNode): any?
	if type(node) ~= "table" then
		return nil
	end
	return (node :: any).type
end

local function childrenHasFullBleed(children: React.ReactNode)
	local hasFullBleed = false
	React.Children.forEach(children, function(child)
		if getElementType(child) == FullBleed then
			hasFullBleed = true
		end
	end)
	return hasFullBleed
end

return childrenHasFullBleed
