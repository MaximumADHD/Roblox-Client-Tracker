local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local AppCommonLib = require(Packages.AppCommonLib)
local React = require(Packages.React)
local useNavigation = require(Packages.RoactUtils).Hooks.useNavigation

type Props = {
	rnBypassActionSignal: AppCommonLib.Signal,
}

--[[
    This would ideally just be a hook, however `TenFootUiRootNavigator` is a class component,
    so we instead render as a component.
]]
local function RnBypassAdapter(props: Props)
	local rnBypassActionSignal = props.rnBypassActionSignal
	local navigation = useNavigation()

	React.useEffect(function()
		-- Dispatch UniversalApp navigation actions in our navigation router
		local handler = rnBypassActionSignal:connect(function(action)
			navigation.dispatch(action)
		end)

		return function()
			handler:disconnect()
		end
	end, { navigation, rnBypassActionSignal })

	return nil
end

return RnBypassAdapter
