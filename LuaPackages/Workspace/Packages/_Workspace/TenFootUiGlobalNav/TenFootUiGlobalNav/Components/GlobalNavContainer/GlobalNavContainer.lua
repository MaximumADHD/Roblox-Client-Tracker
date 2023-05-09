local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local useGlobalNavProps = require(Root.Components.GlobalNavContainer.useGlobalNavProps)
local GlobalNav = require(Root.Components.GlobalNav)

local function GlobalNavContainer()
	local globalNavProps = useGlobalNavProps()
	return React.createElement(GlobalNav, globalNavProps)
end

return GlobalNavContainer
