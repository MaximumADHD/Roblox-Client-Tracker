local Packages = script.Parent.Parent.Parent.Parent
local React = require(Packages.React)

local CursorContext = React.createContext({
	getCursor = function()
		return nil
	end,
	getCursorByType = function()
		return nil
	end,
})

return CursorContext
