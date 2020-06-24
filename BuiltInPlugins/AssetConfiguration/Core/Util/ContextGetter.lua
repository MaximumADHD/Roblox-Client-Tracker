local Plugin = script.Parent.Parent.Parent

local Keys = require(Plugin.Core.Util.Keys)
local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local ContextGetter = {}

function ContextGetter.getLocalization(component)
	return component._context[Keys.localization]
end

function ContextGetter.getModal(component)
	return {
		-- TODO: Simplify this!
		modalTarget = component._context.modalTarget,
		modalStatus = component._context.modalStatus,
		onTooltipTriggered = component._context.onTooltipTriggered,
		onDropdownToggled = component._context.onDropdownToggled,
		onSearchOptionsToggled = component._context.onSearchOptionsToggled,
		isShowingModal = component._context.isShowingModal,
		isAssetPreviewing = component._context.isAssetPreviewing,
		onAssetPreviewToggled = component._context.onAssetPreviewToggled,
		canHoverAsset = component._context.canHoverAsset,
		onSearchOptionsMouse = component._context.onSearchOptionsMouse,
	}
end

function ContextGetter.getNetwork(component)
	return component._context[Keys.networkInterface]
end

function ContextGetter.getPlugin(component)
	return component._context[Keys.plugin], component._context[Keys.pluginGui]
end

function ContextGetter.getSettings(component)
	return component._context[Keys.settings]
end

function ContextGetter.getTheme(component)
	return component._context[Keys.theme]
end

function ContextGetter.getCamera(component)
	return component._context[Keys.camera]
end

return wrapStrictTable(ContextGetter, "ContextGetter")
