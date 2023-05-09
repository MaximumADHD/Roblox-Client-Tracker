local root = script:FindFirstAncestor("TenFootUiControllerBar")
local Packages = root.Parent
local UIBlox = require(Packages.UIBlox)
local React = require(Packages.React)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiEventNameEnum = TenFootUiCommon.TenFootUiEventNameEnum
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local Images = UIBlox.App.ImageSet.Images
local ControllerBar = require(root.Components.ControllerBar)
local LocalizationRoactContext = require(Packages.Localization).LocalizationRoactContext

type ContextItemIconLookup = {
	[Enum.KeyCode]: {
		[string]: string,
	},
}

-- Order should be Hold A > X > Y
local orderToDisplay = {
	Enum.KeyCode.ButtonA,
	Enum.KeyCode.ButtonX,
	Enum.KeyCode.ButtonY,
}

local contextItemIconLookup: ContextItemIconLookup = {
	[Enum.KeyCode.ButtonY] = {
		[TenFootUiEventNameEnum.Search] = Images["icons/controls/keys/xboxY"],
	},
}

function useControllerBarProps(): ControllerBar.Props
	local activeEventMap = ReactFocusNavigation.useActiveEventMap()
	local localizationContext: any = React.useContext(LocalizationRoactContext)
	local localized: { [string]: string } = {
		[TenFootUiEventNameEnum.Search] = localizationContext:Format("CommonUI.Features.Label.ControllerBar.Search"),
	}
	local currentItems: { [number]: ControllerBar.ContextBarItem } = {}
	for _, keyCode in orderToDisplay do
		local eventName = activeEventMap[keyCode]
		if eventName then
			local keyCodeLookUp = contextItemIconLookup[keyCode]
			local contextItemIcon = if keyCodeLookUp then keyCodeLookUp[eventName] else nil
			local contextItemText = localized[eventName]
			if contextItemIcon and contextItemText then
				table.insert(currentItems, { icon = contextItemIcon :: string, text = contextItemText :: string })
			end
		end
	end
	return { items = currentItems }
end

return useControllerBarProps
