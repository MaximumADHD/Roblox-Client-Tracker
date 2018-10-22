local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local getModal = require(Plugin.Core.Consumers.getModal)

local ModalConsumer = Roact.Component:extend("ModalConsumer")

-- TODO CLIDEVSRVS-1688: Improve this
local function getDataFromModalStatus(modalStatus)
	return {
		currentTooltipAssetId = modalStatus._currentTooltipAssetId,
		currentTooltipTypeId = modalStatus._currentTooltipTypeId,
		isDropdownShown = modalStatus._isDropdownShown,
	}
end

function ModalConsumer:init()
	local modalData = getModal(self)
	self.modalTarget = modalData.modalTarget
	self._modalStatus = modalData._modalStatus

	-- TODO CLIDEVSRVS-1688: Fix this
	-- Duplicating data between this and modal status
	self.state = getDataFromModalStatus(self._modalStatus)
end

function ModalConsumer:render()
	return self.props.render(self.modalTarget, self._modalStatus)
end

function ModalConsumer:didMount()
	self.disconnectModalListener = self._modalStatus:subscribe(function()
		self:setState(getDataFromModalStatus(self._modalStatus))
	end)
end

function ModalConsumer:willUnmount()
	self.disconnectModalListener()
end

return ModalConsumer
