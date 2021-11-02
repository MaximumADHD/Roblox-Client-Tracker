-- Centralized Place for Keys used throughout the widget
local KeyProvider = {}

function KeyProvider.getOptInLocationsKeyName()
	return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
	return "China"
end

function KeyProvider.getPublishPlaceAsKeyName()
	return "PublishPlaceAs"
end

function KeyProvider.getPluginKeyName()
	return "plugin"
end

function KeyProvider.getContextKeyName()
	return "context"
end

function KeyProvider.getLuobuStudioDevPublishKeyName()
	return "LuobuStudioDevPublish"
end

function KeyProvider.getTermsOfUseDialogKeyName()
	return "TermsOfUseDialog"
end

function KeyProvider.getSelectedKeyName()
	return "selected"
end

function KeyProvider.getCheckboxToggleKeyName()
	return "CheckboxToggle"
end

function KeyProvider.getButtonClickedKeyName()
	return "buttonClicked"
end

function KeyProvider.getCreateNewGameKeyName()
	return "CreateNewGame"
end

return KeyProvider
