local Plugin = script.Parent.Parent

local GetFFlagFaceControlsEditorUI = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUI)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local TestPaths = {}

local WAIT_TIMEOUT = 2

function TestPaths.waitForDescendant(instance, tree)
	local current = instance
	assert(current, "waitForDescendant: instance cannot be nil.")
	for _, item in ipairs(tree) do
		local child = current:WaitForChild(item, WAIT_TIMEOUT)
		assert(child, item .. " was not found under parent " .. current:GetFullName() .. ".")
		current = child
	end
	return current
end

function TestPaths.getEditorController(container)
	return TestPaths.waitForDescendant(container, {
		"AnimationClipEditor", "EditorController",
	})
end

function TestPaths.getDopeSheetController(container)
	local editorController = TestPaths.getEditorController(container)
	return TestPaths.waitForDescendant(editorController, {
		"TrackEditor", "DopeSheetController",
	})
end

function TestPaths.getDopeSheet(container)
	local controller = TestPaths.getDopeSheetController(container)
	return TestPaths.waitForDescendant(controller, {
		"DopeSheetContainer", "DopeSheet",
	})
end

function TestPaths.getTrack(container, trackName)
	local dopeSheet = TestPaths.getDopeSheet(container)
	return TestPaths.waitForDescendant(dopeSheet, {
		trackName, "KeyframeDisplayArea",
	})
end

function TestPaths.getTrackList(container)
	local base = TestPaths.getEditorController(container)
	if GetFFlagCurveEditor() then
		return TestPaths.waitForDescendant(base, {
			"TrackListAndControlContainer", "EventsAndTracks", "TrackListAndScrollBar", "TrackList", "Canvas",
		})
	else
		return TestPaths.waitForDescendant(base, {
			"TrackListAndControlContainer", "EventsAndTracks", "TrackList", "Canvas",
		})
	end
end

function TestPaths.getIKButton(container)
	local base = TestPaths.getTrackList(container)
	if GetFFlagFaceControlsEditorUI() then
		return TestPaths.waitForDescendant(base, {
			"SummaryTrack", "LeftButtonsListContainer", "IKController", "IKButton",
		})
	else
		return TestPaths.waitForDescendant(base, {
			"SummaryTrack", "IKController", "IKButton",
		})
	end
end

function TestPaths.getIKWindow(ikWindow)
	return TestPaths.waitForDescendant(ikWindow, {
		"Container",
	})
end

function TestPaths.getIKEnableButton(ikWindow)
	local base = TestPaths.getIKWindow(ikWindow)
	return TestPaths.waitForDescendant(base, {
		"BottomFrame", "EnableIKButton",
	})
end

function TestPaths.getIKTreeView(ikWindow)
	local base = TestPaths.getIKWindow(ikWindow)
	return TestPaths.waitForDescendant(base, {
		"TreeView", "TreeView",
	})
end

function TestPaths.getTreeViewJoint(ikWindow, nodeName)
	local base = TestPaths.getIKTreeView(ikWindow)
	return TestPaths.waitForDescendant(base, {
		"Contents", "ScrollingFrame", "Scroller", nodeName,
	})
end

function TestPaths.getTreeViewJointPin(ikWindow, nodeName)
	local base = TestPaths.getTreeViewJoint(ikWindow, nodeName)
	return TestPaths.waitForDescendant(base, {
		"Pin"
	})
end

function TestPaths.getEventsTitleTrack(container)
	local base = TestPaths.getEditorController(container)
	return TestPaths.waitForDescendant(base, {
		"TrackListAndControlContainer", "EventsAndTracks", "EventsTitle",
	})
end

function TestPaths.getEventsTrack(container)
	local controller = TestPaths.getDopeSheetController(container)
	return TestPaths.waitForDescendant(controller, {
		"Events", "Track", "KeyframeDisplayArea",
	})
end

function TestPaths.getEventsDialogContents(eventsDialog)
	return TestPaths.waitForDescendant(eventsDialog, {
		"FocusProvider", "Content", "Container",
	})
end

function TestPaths.getEventEntry(eventsDialog, eventName)
	local contents = TestPaths.getEventsDialogContents(eventsDialog)
	return TestPaths.waitForDescendant(contents, {
		"Event_" .. eventName,
	})
end

function TestPaths.getAddEventEntry(eventsDialog)
	local contents = TestPaths.getEventsDialogContents(eventsDialog)
	return TestPaths.waitForDescendant(contents, {
		"AddNew", "AddEventEntry",
	})
end

return TestPaths