local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Logger = require(Foundation.Utility.Logger)

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local Types = require(Foundation.Components.Types)

local CursorContext = React.createContext({
	refCache = {},
	setMountedCursors = function(_set: ({ [string | CursorType]: boolean }) -> { [string | CursorType]: boolean })
		Logger:warning("No Cursor Provider found")
	end,
	getCursor = function(_cursor: Types.Cursor?)
		Logger:warning("No Cursor Provider found")
	end,
})

return CursorContext
