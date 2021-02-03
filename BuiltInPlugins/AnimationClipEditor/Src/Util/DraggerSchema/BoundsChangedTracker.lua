
--[[
	BoundsChangedTracker object
	All bounds changing handled through Animation Clip Editor's selection signal because
	there is no way of determining whether a part has changed through signals
]]

local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(draggerContext, handler)
	return setmetatable({
		_handler = handler,
		_draggerContext = draggerContext,
	}, BoundsChangedTracker)
end

function BoundsChangedTracker:install()
	-- Begin watching the items for changes:
end

function BoundsChangedTracker:uninstall()
	-- Stop watching the items for changes:
end

function BoundsChangedTracker:setSelection(selectionInfo)
	-- Set what items to watch for changes:
end

return BoundsChangedTracker
