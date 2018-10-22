local Plugin = script.Parent.Parent.Parent

local createSignal = require(Plugin.Core.Util.createSignal)

local ModalStatus = {}

function ModalStatus.new()
	return setmetatable({
		_signal = createSignal(),

		-- TODO CLIDEVSRVS-1689: remove me if we have a fix for the tooltip problems.
		-- Only the objct match the newest id and type will show tooltip
		_currentTooltipAssetId = 0,

		-- Type id
		-- 1 AssetIcon
		-- 2 AssetName
		-- 3 CreatorName
		-- 4 HighQualityBadge
		_currentTooltipTypeId = 0,

		_isDropdownShown = false,
	}, {
		__index = ModalStatus,
	})
end

function ModalStatus:subscribe(...)
	return self._signal:subscribe(...)
end

function ModalStatus:isShowingModal()
	return self._isDropdownShown
end

function ModalStatus:onTooltipTriggered(assetId, typeId)
	self._currentTooltipAssetId = assetId
	self._currentTooltipTypeId = typeId

	self._signal:fire()
end

function ModalStatus:onDropdownToggled(shown)
	self._isDropdownShown = shown

	self._signal:fire()
end

function ModalStatus:isCurrentTooltip(assetId, typeId)
	return self._currentTooltipAssetId == assetId and self._currentTooltipTypeId == typeId
end

function ModalStatus:canShowCurrentTooltip(assetId, typeId)
	return not self._isDropdownShown and self:isCurrentTooltip(assetId, typeId)
end

return ModalStatus
