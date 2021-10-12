local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(draggerContext, handler)
	return BoundsChangedTracker
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
