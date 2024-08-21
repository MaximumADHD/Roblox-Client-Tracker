local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local useTokens = require(Foundation.Providers.Style.useTokens)

local getCursorKey = require(script.Parent.getCursorKey)
local CursorContext = require(script.Parent.CursorContext)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

type CursorConfig = {
	radius: UDim?,
	offset: number?,
	borderWidth: number?,
}

local function useCursor(cursor: (CursorType | CursorConfig)?): React.Ref<GuiObject>?
	local tokens = useTokens()

	local context = React.useContext(CursorContext)
	local refCache = context.refCache
	local setMountedCursors = context.setMountedCursors

	local key = React.useMemo(function()
		if typeof(cursor) == "table" then
			return getCursorKey(tokens, cursor.radius, cursor.offset, cursor.borderWidth)
		elseif cursor == nil then
			return getCursorKey(tokens)
		end
		return cursor
	end, { cursor })

	React.useEffect(function()
		setMountedCursors(function(mountedExisting)
			if mountedExisting[key] == nil then
				return Cryo.Dictionary.union(mountedExisting, {
					[key] = true,
				})
			end
			return mountedExisting
		end)
	end, { key })

	-- Note that we return the ref here even if it shouldn't exist yet.
	-- Thanks to the refCache, we know that the ref created here is the same
	-- one that will be ultimately assigned to the cursor component once the
	-- setState completes and the component does re-render.
	return refCache[key]
end

return useCursor
