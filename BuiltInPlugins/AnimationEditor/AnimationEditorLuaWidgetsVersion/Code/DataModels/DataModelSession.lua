-- singleton, information about the current session, all lost when the animation editor closes

local FastFlags = require(script.Parent.Parent.FastFlags)

local Session = {}

Session.Scroll = 0
Session.Zoom = 0
Session.ScrollZoomChangeEvent = nil
Session.ScrubberTime = 0
Session.ScrubberTimeChangeEvent = nil
Session.Selected = {DataItems= {}, Keyframes= {}, Clicked= {}}
Session.SelectedChangeEvent = nil
Session.DisplayPrecisionFormatString = "%u"
Session.DisplayPrecisionChangeEvent = nil
Session.ScrubberPrecisionFormatString = "%.1f"
Session.ResetAnimationBeginEvent = nil
Session.ResetAnimationEndEvent = nil
Session.IsResettingAnimation = false
if FastFlags:isIKModeFlagOn() then
	Session.InputLocked = false
end

function Session:setScrubberTime(newTime)
	Session.ScrubberTime = self:formatTimeValue(newTime)
	Session.ScrubberTimeChangeEvent:fire(Session.ScrubberTime)
end

function Session:getScrubberTime()
	return Session.ScrubberTime
end

function Session:formatTimeValue(newTime, clamp)
	clamp = clamp == nil and true or clamp
	if clamp then
		newTime = self.Paths.DataModelClip:keyframeTimeClamp(newTime)
	end
	return Session.Paths.HelperFunctionsMath:roundToDecimalPlace(newTime, 3)
end

function Session:getIncrementSnappedTime(time)
	local snapIncrement = self.Paths.DataModelPreferences:getValue(self.Paths.DataModelPreferences.Type.SnapIncrement)
	if snapIncrement > 0 and not self.Paths.HelperFunctionsMath:isCloseToZero(snapIncrement) then
		local prevSnapTime = snapIncrement*math.floor(time/snapIncrement)
		local nextSnapTime = math.min(prevSnapTime+snapIncrement, self.Paths.DataModelClip:getLength())
		return math.abs(prevSnapTime-time) < math.abs(nextSnapTime-time) and prevSnapTime or nextSnapTime
	end
	return time
end

function Session:getNumberPrecisionFormatString()
	return Session.DisplayPrecisionFormatString
end

function Session:getFormattedScrubberTime()
	return string.format(Session.ScrubberPrecisionFormatString, self.ScrubberTime)
end

local function constructFormatString(self, numDecimalPlacesRequired)
	return numDecimalPlacesRequired > 0 and "%.".. tostring(numDecimalPlacesRequired) .. "f" or "%u"
end

local function setScrubberPrecision(self, numDecimalPlacesRequired)
	self.ScrubberPrecisionFormatString = constructFormatString(self, numDecimalPlacesRequired)
end

function Session:setDisplayPrecision(numDecimalPlacesRequired)
	self.DisplayPrecisionFormatString = constructFormatString(self, numDecimalPlacesRequired)
	setScrubberPrecision(self, numDecimalPlacesRequired+1) -- adding 1 as scrubber should be higher precision
	self.DisplayPrecisionChangeEvent:fire(self.DisplayPrecisionFormatString)
end

function Session:getScroll()
	return self.Scroll
end

function Session:getZoom()
	return self.Zoom
end

local function initScrollZoomControl(self)
	local allowZoomControl = self.Paths.DataModelClip:getLength() > 1
	if allowZoomControl then
		local isFullyZoomedOut = Session.Scroll == 0 and Session.Zoom == 0
		if not isFullyZoomedOut then
			Session:setScrollAndZoom(0, 0)
		end
	else
		-- if the animation is very short, we want to be zoomed in to get the zoomed in notches layout
		local isFullyZoomedIn = Session.Scroll == 0 and Session.Zoom == 1
		if not isFullyZoomedIn then
			Session:setScrollAndZoom(0, 1)
		end
	end
	self.Paths.GUIScriptScrollZoomControl:turnOn(allowZoomControl)
end

function Session:init(Paths)
	self.Paths = Paths
	self.ScrollZoomChangeEvent = Paths.UtilityScriptEvent:new()
	self.ScrubberTimeChangeEvent = Paths.UtilityScriptEvent:new()
	self.SelectedChangeEvent = Paths.UtilityScriptEvent:new()
	self.DisplayPrecisionChangeEvent = Paths.UtilityScriptEvent:new()

	self.ResetAnimationBeginEvent = Paths.UtilityScriptEvent:new()
	self.ResetAnimationEndEvent = Paths.UtilityScriptEvent:new()
	self.IsResettingAnimation = false

	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	self.Connections:add(Paths.DataModelClip.LengthChangedEvent:connect(function(len)
		if self.ScrubberTime > len then
			Session:setScrubberTime(len)
		end
		initScrollZoomControl(self)
	end))
end

function Session:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.ResetAnimationBeginEvent = nil
	self.ResetAnimationEndEvent = nil

	self.DisplayPrecisionChangeEvent = nil
	self.SelectedChangeEvent = nil
	self.ScrubberTimeChangeEvent = nil
	self.ScrollZoomChangeEvent = nil

	self.Scroll = 0
	self.Zoom = 0

	self.Selected = {DataItems={}, Keyframes={}, Clicked={}}

	self.Paths = nil
end

if FastFlags:isIKModeFlagOn() then
	function Session:lockInput(lock)
		self.InputLocked = lock
	end

	function Session:inputLocked()
		return self.InputLocked
	end

	function Session:selectOnlyOneDataItem()
		local dataItem = self:getSelectedDataItem()
		if dataItem then
			self:selectNone()
			self:selectDataItem(dataItem)
		end
	end
end

local function searchAndRemovePose(self, tab, time, dataItem, fireChangeEvent)
	local success = false
	if dataItem and tab[time] then
		if tab[time][dataItem.Item] then
			tab[time][dataItem.Item] = nil
			if self.Paths.HelperFunctionsTable:isNilOrEmpty(tab[time]) then
				tab[time] = nil
			end
			self:removeFromDataItems(dataItem, fireChangeEvent)
			return true
		end
	end
	return false
end

local function addPoseToKeyframe(self, tab, time, dataItem, fireChangeEvent)
	if not self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
		return
	end
	if dataItem then
		if tab[time] == nil then
			tab[time] = {}
		end
		if not tab[time][dataItem.Item] then
			tab[time][dataItem.Item] = dataItem
			self:addToDataItems(dataItem, fireChangeEvent)
		end
	end
end

local function changePrimarySelection(self, time, dataItem, isKeyframe)
	if FastFlags:isPartIncludeFixOn() and dataItem and not self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
		return
	end
	self.Selected.Keyframes = {}
	self.Selected.Clicked = {}
	self.Selected.DataItems = {}
	if dataItem then
		if isKeyframe and time ~= nil then
			self.Selected.Keyframes[time] = {[dataItem.Item] = dataItem}
		end
		self.Selected.DataItems = {[dataItem.Item] = dataItem}
	end
	self.SelectedChangeEvent:fire()
end

-- checks if only one key is selected, but this doesn't necessarily mean all
-- poses in key have been selected
function Session:isOnlyOneKeyframeSelected()
	return self.Paths.HelperFunctionsTable:containsOneKeyOnly(self.Selected.Keyframes)
end

function Session:areAnyKeyframesSelected()
	return not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Selected.Keyframes)
end

function Session:areMultipleDataItemsSelected()
	return self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Selected.DataItems)
end

function Session:areAnyDataItemsSelected()
	return not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Selected.DataItems)
end

function Session:areMultiplePosesSelected()
	local firstKey = self.Paths.HelperFunctionsTable:firstKey(self.Selected.Keyframes)
	if firstKey then
		return self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Selected.Keyframes) or self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Selected.Keyframes[firstKey])
	end
	return false
end

function Session:isAClickedPose(time, dataItem)
	if self.Selected.Clicked[time] and dataItem then
		return self.Paths.HelperFunctionsIteration:ifAny(self.Selected.Clicked[time], function(k, v)
			return v == dataItem
		end)
	end
end

function Session:removePoseFromSelectedKeyframes(time, dataItem, fireChangeEvent)
	fireChangeEvent = fireChangeEvent == nil and true or fireChangeEvent
	if searchAndRemovePose(self, self.Selected.Keyframes, time, dataItem, fireChangeEvent) then
		if fireChangeEvent then self.SelectedChangeEvent:fire() end
	end
end

local function updateValueInDataItems(self, key, newDataItemValue, fireChangeEvent)
	fireChangeEvent = fireChangeEvent == nil and true or fireChangeEvent
	self.Selected.DataItems[key] = newDataItemValue
	if fireChangeEvent then self.SelectedChangeEvent:fire() end
end

function Session:addToDataItems(dataItem, fireChangeEvent)
	if FastFlags:isPartIncludeFixOn() and not self.Paths.DataModelRig:getPartInclude(dataItem.Name) then
		return
	end
	if not self.Selected.DataItems[dataItem.Item] then
		updateValueInDataItems(self, dataItem.Item, dataItem, fireChangeEvent)
	end
end

function Session:removeFromDataItems(dataItem, fireChangeEvent)
	if self.Selected.DataItems[dataItem.Item] then
		updateValueInDataItems(self, dataItem.Item, nil, fireChangeEvent)
	end
end

if FastFlags:isScaleKeysOn() then
	function Session:addPosesToSelectedKeyframes(time, dataItems, fireChangeEvent)
		fireChangeEvent = fireChangeEvent == nil and true or fireChangeEvent
		for _, dataItem in pairs(dataItems) do
			self:addPoseToSelectedKeyframes(time, dataItem, false)
		end
		if fireChangeEvent then self.SelectedChangeEvent:fire() end
	end
end

function Session:addPoseToSelectedKeyframes(time, dataItem, fireChangeEvent)
	fireChangeEvent = fireChangeEvent == nil and true or fireChangeEvent
	if self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Selected.Keyframes) then
		self.Selected.DataItems = {}
	end
	addPoseToKeyframe(self, self.Selected.Keyframes, time, dataItem, fireChangeEvent)
	if fireChangeEvent then self.SelectedChangeEvent:fire() end
end

function Session:removeClickedPoseFromSelectedKeyframes(time, dataItem, fireChangeEvent)
	searchAndRemovePose(self, self.Selected.Clicked, time, dataItem, fireChangeEvent)
	self:removePoseFromSelectedKeyframes(time, dataItem, fireChangeEvent)
end

function Session:addClickedPoseToSelectedKeyframes(time, dataItem, fireChangeEvent)
	addPoseToKeyframe(self, self.Selected.Clicked, time, dataItem, fireChangeEvent)
	self:addPoseToSelectedKeyframes(time, dataItem, fireChangeEvent)
end

function Session:areAnyPosesForDataItemSelected(dataItem)
	return self.Paths.HelperFunctionsIteration:ifAny(self.Selected.Keyframes, function(time, dataItems)
		return self.Selected.Keyframes[time][dataItem.Item] ~= nil
	end)
end

function Session:areAnyPosesForTimeSelected(time)
	return self.Selected.Keyframes[time] ~= nil
end

function Session:getSelectedPoseAtTime(time)
	local dataItems = self.Paths.DataModelSession:getSelectedKeyframes()[time]
	if dataItems then
		return self.Paths.HelperFunctionsTable:firstValue(dataItems)
	end
end

function Session:addAllPosesAtTimeToKeyframes(time, fireChangeEvent)
	local keyframe = self.Paths.DataModelClip:getKeyframe(time)
	for _, pose in pairs(keyframe.Poses) do
		self.Paths.DataModelSession:addClickedPoseToSelectedKeyframes(time, pose.Item, fireChangeEvent)
	end
end

function Session:removeAllPosesAtTimeFromKeyframes(time, fireChangeEvent)
	local keyframe = self.Paths.DataModelClip:getKeyframe(time)
	for _, pose in pairs(keyframe.Poses) do
		self.Paths.DataModelSession:removeClickedPoseFromSelectedKeyframes(time, pose.Item, fireChangeEvent)
	end
end

function Session:isCurrentlySelectedKeyframe(atTime, dataItem)
	return self.Selected.Keyframes[atTime] ~= nil and self.Selected.Keyframes[atTime][dataItem.Item] ~= nil
end

function Session:isCurrentlySelectedDataItem(dataItem)
	return self.Selected.DataItems[dataItem.Item] ~= nil
end

-- to prevent the user from accidentally deleting any parts in the studio explorer
-- rather than items in the animation editor itself
function Session:deselectItemsInStudioHierarchy()
	self.Paths.Globals.Selection:Set({})
end

function Session:selectKeyframe(atTime, dataItem)
	self:deselectItemsInStudioHierarchy()
	if not self:isCurrentlySelectedKeyframe(atTime, dataItem) then
		if atTime then
			self.Paths.DataModelSession:setScrubberTime(atTime)
		end
		changePrimarySelection(self, atTime, dataItem, true)
	end
end

function Session:selectDataItem(dataItem)
	self:deselectItemsInStudioHierarchy()
	if not self:isCurrentlySelectedDataItem(dataItem) then
		changePrimarySelection(self, nil, dataItem, false)
	end
end

function Session:toggleSelectedDataItem(dataItem)
	self:deselectItemsInStudioHierarchy()
	if self:isCurrentlySelectedDataItem(dataItem) then
		self:selectNone()
	else
		self:selectDataItem(dataItem)
	end
end

function Session:resetDataItemIfSelected(dataItem)
	if self:isCurrentlySelectedDataItem(dataItem) then
		self:selectNone()
	end
end

function Session:selectNone()
	changePrimarySelection(self)
end

-- if the specified key frame is not currently selected, it will select it, else it unselects it
function Session:selectOrToggleKeyframe(atTime, dataItem)
	self:deselectItemsInStudioHierarchy()
	if not self:isCurrentlySelectedKeyframe(atTime, dataItem) then
		self:selectKeyframe(atTime, dataItem)
	else
		self:selectNone()
	end
end

local function getDataItemName(self)
	local dataItem = self:getSelectedDataItem()
	return nil ~= dataItem and dataItem:getName() or nil
end

function Session:hasValidSelectedKeyframe()
	local dataItem, time = self:getSelectedKeyframe()
	if dataItem and time then
		return self.Paths.DataModelKeyframes:doesPoseExist(dataItem:getName(), time)
	end
	return false
end

function Session:getSelectedKeyframePose()
	local dataItem, time = self:getSelectedKeyframe()
	if dataItem and time then
		return self.Paths.DataModelKeyframes:getPoseFromPartName(dataItem:getName(), time)
	end
end

function Session:getAllSelectedPoses()
	local Poses = {}
	for time, dataItems in pairs(self.Selected.Keyframes) do
		for _, dataItem in pairs(dataItems) do
			Poses[#Poses + 1] = self.Paths.DataModelKeyframes:getPoseFromPartName(dataItem.Name, time)
		end
	end
	return Poses
end

function Session:getSelectedKeyframe()
	local time = self.Paths.HelperFunctionsTable:firstKey(self.Selected.Keyframes)
	if time then
		local dataItem = self.Paths.HelperFunctionsTable:firstValue(self.Selected.Keyframes[time])
		if dataItem then
			return dataItem, time
		end
	end
end

function Session:getSelectedKeyframes()
	return self.Selected.Keyframes
end

function Session:getSelectedDataItems()
	return self.Selected.DataItems
end

function Session:getSelectedDataItem()
	return self.Paths.HelperFunctionsTable:firstValue(self.Selected.DataItems)
end

function Session:getSelectedKeyframeTime()
	local dataItem, time = self:getSelectedKeyframe()
	return time
end

function Session:setScrollAndZoom(scroll, zoom)
	self.Scroll = scroll
	self.Zoom = zoom
	self.ScrollZoomChangeEvent:fire(self.Scroll, self.Zoom)

	self.Paths.GUIScriptScrollZoomControl:setScrollAndZoom(self.Scroll, self.Zoom)
end

function Session:isFullyZoomed()
	return self.Paths.HelperFunctionsMath:isCloseToOne(self.Zoom)
end

function Session:getFPS()
	return 30
end

local function initScrollAndZoom(self)
	initScrollZoomControl(self)

	self.Paths.GUIScriptScrollZoomControl:setScrollAndZoom(Session.Scroll, Session.Zoom)

	self.onScrollZoomChange = function(scroll, zoom)
		self.Scroll = scroll
		self.Zoom = zoom
		self.ScrollZoomChangeEvent:fire(self.Scroll, self.Zoom)
	end
	self.Paths.GUIScriptScrollZoomControl.ScrollZoomChangeEvent:connect(self.onScrollZoomChange)

	self.onStartScrollZoom = function()
		self.SavedScroll = self.Scroll
		self.SavedZoom = self.Zoom
	end
	self.Paths.GUIScriptScrollZoomControl.StartScrollZoomEvent:connect(self.onStartScrollZoom)

	self.onEndScrollZoom = function()
		if self.SavedScroll ~= self.scroll or self.SavedZoom ~= self.Zoom then
			self.Paths.ActionScrollZoom:execute(self.Paths, self.SavedScroll, self.Scroll, self.SavedZoom, self.Zoom)
		end
		self.SavedScroll = nil
		self.SavedZoom = nil
	end
	self.Paths.GUIScriptScrollZoomControl.EndScrollZoomEvent:connect(self.onEndScrollZoom)
end

local function isDragging(self)
	return nil ~= self.SavedScrubberTime
end

local function initScrubberTime(self)
	self.onScrubberTimeChange = function(time)
		if isDragging(self) then
			self:setScrubberTime(time)
		else
			self.Paths.ActionPause:execute(self.Paths)
			self.Paths.ActionMoveScrubber:execute(self.Paths, time)
		end
	end
	self.Paths.GUIScriptScrubberDisplayArea.TimeChangeEvent:connect(self.onScrubberTimeChange)
	self.Paths.GUIScriptMediaControls.TimeChangeEvent:connect(self.onScrubberTimeChange)

	self.onStartScrubberDrag = function()
		self.Paths.ActionPause:execute(self.Paths)
		self.SavedScrubberTime = self.ScrubberTime
	end
	self.Paths.GUIScriptScrubberDisplayArea.StartScrubberDragEvent:connect(self.onStartScrubberDrag)

	self.onEndSrubberDrag = function()
		if self.SavedScrubberTime ~= self.ScrubberTime then
			self.Paths.ActionMoveScrubber:execute(self.Paths, self.ScrubberTime, self.SavedScrubberTime)
		end
		self.SavedScrubberTime = nil
	end
	self.Paths.GUIScriptScrubberDisplayArea.EndScrubberDragEvent:connect(self.onEndSrubberDrag)
end

function Session:initPostGUICreate()
	initScrollAndZoom(self)
	initScrubberTime(self)
end

function Session:terminatePreGUIDestroy()
	self.Paths.GUIScriptScrubberDisplayArea.EndScrubberDragEvent:disconnect(self.onEndSrubberDrag)
	self.Paths.GUIScriptScrubberDisplayArea.StartScrubberDragEvent:disconnect(self.onStartScrubberDrag)
	self.Paths.GUIScriptMediaControls.TimeChangeEvent:disconnect(self.onScrubberTimeChange)
	self.Paths.GUIScriptScrubberDisplayArea.TimeChangeEvent:disconnect(self.onScrubberTimeChange)

	self.Paths.GUIScriptScrollZoomControl.ScrollZoomChangeEvent:disconnect(self.onScrollZoomChange)
	self.Paths.GUIScriptScrollZoomControl.StartScrollZoomEvent:disconnect(self.onStartScrollZoom)
	self.Paths.GUIScriptScrollZoomControl.EndScrollZoomEvent:disconnect(self.onEndScrollZoom)
end

local function beginResetAnimation(self)
	self.IsResettingAnimation = true
	self.ResetAnimationBeginEvent:fire()
end

local function endResetAnimation(self)
	self.IsResettingAnimation = false
	self.ResetAnimationEndEvent:fire()
end

function Session:IsAnimationCurrentlyBeingReset()
	return self.IsResettingAnimation
end

function Session:resetAnimation()
	beginResetAnimation(self)

	self.Paths.UtilityScriptCopyPaste:resetCopyPoses()
	self.Paths.DataModelKeyframes:resetKeyframes()

	local savedLength = self.Paths.Globals.Plugin:GetSetting("AnimEditor_AnimLength")
	self.Paths.DataModelClip:setLength(savedLength ~= nil and savedLength or 2)

	self:setScrubberTime(0)
	self.Paths.DataModelClip:setLooping(false)
	self.Paths.DataModelClip:setPriority("Core")

	if FastFlags:isIKModeFlagOn() and FastFlags:clearIKOnNew() then
		if self.Paths.DataModelIKManipulator:isIKModeEnabled() then
			self.Paths.DataModelIKManipulator:setIsIKModeActive(false)
		end
		self.Paths.DataModelRig:unpinAll()
	end

	self:selectNone()
	self.Paths.DataModelRig:setPartIncludeAll(true)
	self.Paths.UtilityScriptUndoRedo:reset()

	endResetAnimation(self)

	if FastFlags:isUseAnimationNameAsTitleOn() then
		self:setSessionTitle()
	end
end

if FastFlags:isUseAnimationNameAsTitleOn() then
	function Session:setSessionTitle(name)
		if name == nil then
			self.Paths.Globals.PluginGUI.Title = "Untitled Animation"
		else
			self.Paths.Globals.PluginGUI.Title = name
		end
	end
end

return Session
