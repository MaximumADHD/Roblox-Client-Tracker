local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local useNavigation = require(Packages.RoactUtils).Hooks.useNavigation
local useGlobalNavProps = require(Root.Components.GlobalNavContainer.useGlobalNavProps)
local useGlobalNavDisplayOptions = require(Root.Components.GlobalNavContainer.useGlobalNavDisplayOptions)
local getActiveChildNavigationOptionsRecursively =
	require(Root.Components.utils.getActiveChildNavigationOptionsRecursively)
local GlobalNav = require(Root.Components.GlobalNav)

local function GlobalNavContainer()
	local navigation = useNavigation()
	local displayOption = useGlobalNavDisplayOptions(navigation, getActiveChildNavigationOptionsRecursively)
	local globalNavProps = useGlobalNavProps(navigation, displayOption)

	return React.createElement(GlobalNav, globalNavProps)
end

return GlobalNavContainer
