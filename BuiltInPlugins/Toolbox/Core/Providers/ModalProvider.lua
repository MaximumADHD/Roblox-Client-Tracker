local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local ModalStatus = require(Plugin.Core.Util.ModalStatus)

local ModalProvider = Roact.PureComponent:extend("ModalProvider")

function ModalProvider:init(props)
	-- Must be created under PluginProvider
	local pluginGui = self.props.pluginGui

	self._context.modalTarget = pluginGui

	local modalStatus = ModalStatus.new()
	self._context.modalStatus = modalStatus

	-- TODO CLIDEVSRVS-1688: Improve this
	self._context.onTooltipTriggered = function(assetId, typeId)
		modalStatus:onTooltipTriggered(assetId, typeId)
	end

	self._context.onDropdownToggled = function(shown)
		modalStatus:onDropdownToggled(shown)
	end

	self._context.onSearchOptionsToggled = function(shown)
		modalStatus:onSearchOptionsToggled(shown)
	end

	self._context.onSearchOptionsMouse = function(inside)
		modalStatus:onSearchOptionsMouse(inside)
	end

	self._context.isShowingModal = function()
		return modalStatus:isShowingModal()
	end

	self._context.isShowingSearchOptions = function()
		return modalStatus:isShowingSearchOptions()
	end

	self._context.isMouseInSearchOptions = function()
		return modalStatus:isMouseInSearchOptions()
	end

	self._context.isAssetPreviewing = function()
		return modalStatus:isAssetPreviewing()
	end

	self._context.onAssetPreviewToggled = function(shown)
		return modalStatus:onAssetPreviewToggled(shown)
	end

	self._context.canHoverAsset = function()
		return modalStatus:canHoverAsset()
	end
end

function ModalProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function ModalProvider:didUpdate()
	if self.props.didUpdateCallBack then
		self.props.didUpdateCallBack()
	end
end

return ModalProvider
