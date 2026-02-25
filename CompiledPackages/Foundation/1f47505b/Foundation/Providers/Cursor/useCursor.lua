local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CursorContext = require(script.Parent.CursorContext)
local KeyUtilities = require(script.Parent.KeyUtilities)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function useCursor(cursor: Types.Cursor?): React.Ref<GuiObject>?
	local tokens = useTokens()

	local context = React.useContext(CursorContext)
	local refCache = context.refCache
	local setMountedCursors = context.setMountedCursors

	local key = React.useMemo(function()
		if typeof(cursor) == "table" then
			return KeyUtilities.encodeKey(tokens, cursor.radius, cursor.offset, cursor.borderWidth)
		elseif cursor == nil then
			return KeyUtilities.encodeKey(tokens)
		end
		return cursor
	end, { cursor, tokens } :: { unknown })

	React.useEffect(function()
		setMountedCursors(function(mountedExisting)
			if mountedExisting[key] == nil then
				return Dash.join(mountedExisting, {
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
