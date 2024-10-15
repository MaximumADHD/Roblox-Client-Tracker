local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Logger = require(Foundation.Utility.Logger)

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local CursorContext = React.createContext({
	refCache = {},
	setMountedCursors = function(set: ({ [string | CursorType]: boolean }) -> { [string | CursorType]: boolean })
		Logger:warning("No Cursor Provider found")
	end,
})

return CursorContext
