--!nonstrict
-- Moves the graphics quality controls to a SavedQualityLevel another writer set, such as Studio's Device Simulator.
-- isShowing() is true while the controls' own change handlers run for it, so they neither write it back nor report it.

local SavedQualityFollower = {}
SavedQualityFollower.__index = SavedQualityFollower

-- enabler: the Automatic (1) / Manual (2) selector. slider: the 1-10 quality slider.
function SavedQualityFollower.new(enabler, slider)
	return setmetatable({
		_enabler = enabler,
		_slider = slider,
		_isShowing = false,
		_showCount = 0,
	}, SavedQualityFollower)
end

function SavedQualityFollower:isShowing(): boolean
	return self._isShowing
end

function SavedQualityFollower:show(savedQuality: EnumItem)
	local isAutomatic = savedQuality == Enum.SavedQualitySetting.Automatic
	local enablerIndex = if isAutomatic then 1 else 2
	local changesEnabler = self._enabler:GetSelectedIndex() ~= enablerIndex
	local changesSlider = not isAutomatic and self._slider:GetValue() ~= savedQuality.Value
	-- The menu's own write lands here too; leaving the flag clear keeps its next change from being dropped.
	if not changesEnabler and not changesSlider then
		return
	end
	self._isShowing = true
	self._showCount += 1
	local showCount = self._showCount
	if changesEnabler then
		self._enabler:SetSelectionIndex(enablerIndex)
	end
	if changesSlider then
		self._slider:SetValue(savedQuality.Value)
	end
	-- The controls' change events can be deferred; this runs after them. Only the latest show() clears, since an earlier
	-- show()'s cleanup can run before a later show()'s deferred events.
	task.defer(function()
		if self._showCount == showCount then
			self._isShowing = false
		end
	end)
end

return SavedQualityFollower
