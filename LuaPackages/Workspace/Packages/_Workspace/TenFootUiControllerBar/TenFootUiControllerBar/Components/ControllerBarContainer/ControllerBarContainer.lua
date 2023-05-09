local root = script:FindFirstAncestor("TenFootUiControllerBar")
local Packages = root.Parent
local React = require(Packages.React)
local ControllerBar = require(root.Components.ControllerBar)
local useControllerBarProps = require(script.Parent.useControllerBarProps)

function ControllerBarContainer()
	local props = useControllerBarProps()
	return React.createElement(ControllerBar, props)
end

return ControllerBarContainer
