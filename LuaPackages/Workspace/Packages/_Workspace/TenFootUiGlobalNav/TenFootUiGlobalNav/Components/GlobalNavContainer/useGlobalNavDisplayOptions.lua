local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = Root.Parent
local React = require(Packages.React)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local GlobalNavDisplayOption = TenFootUiCommon.TenFootUiRNTypes.GlobalNavDisplayOption

type GlobalNavDisplayOption = TenFootUiCommon.GlobalNavDisplayOption

local function useGlobalNavDisplayOptions(navigation, getActiveChildNavigationOptionsRecursively)
	local displayOption: GlobalNavDisplayOption, setDisplayOption =
		React.useState(GlobalNavDisplayOption.ShowAll :: GlobalNavDisplayOption)

	React.useEffect(function()
		local activeNavigationOptions = getActiveChildNavigationOptionsRecursively(navigation)
		if activeNavigationOptions and activeNavigationOptions.globalNavDisplayOption then
			setDisplayOption(activeNavigationOptions.globalNavDisplayOption)
		else
			setDisplayOption(GlobalNavDisplayOption.ShowAll)
		end
	end, { navigation, getActiveChildNavigationOptionsRecursively } :: { any })

	return displayOption
end

return useGlobalNavDisplayOptions
