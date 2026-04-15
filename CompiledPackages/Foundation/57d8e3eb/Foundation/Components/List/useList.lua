local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ListContext = require(script.Parent.ListContext)

local useList = function()
	return React.useContext(ListContext)
end

return useList
