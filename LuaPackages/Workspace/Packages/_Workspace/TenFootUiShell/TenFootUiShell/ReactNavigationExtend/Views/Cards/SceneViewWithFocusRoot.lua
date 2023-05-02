local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local FocusNavigableWrapper = require(TenFootUiShell.Components.FocusNavigableWrapper)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local useFocusRegistryEntry = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useFocusRegistryEntry
local useRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useDeRegisterFocusNavigableSurface
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local useRootFocusNavigationBindings = require(TenFootUiShell.Hooks.useRootFocusNavigationBindings)
local SceneView = RoactNavigation.SceneView
local Events = RoactNavigation.Events

--[[
		TODO: Remove in CLIXBOX-2955
]]
local function SceneViewWithFocusRoot(props: any)
	local ref = React.useRef(nil :: GuiObject?)
	local focusGuiObject = ReactFocusNavigation.useFocusGuiObject()
	local onSelectUp = useFocusRegistryEntry(FocusNavigableSurfaceIdentifierEnum.NavBar)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local deRegisterFocusNavigationRoot = useDeRegisterFocusNavigableSurface()
	local rootBindingsRef: React.Ref<Instance> = useRootFocusNavigationBindings(ref :: { current: Instance? })

	React.useEffect(function()
		local sub = nil
		-- using _childrenNavigation to check if this is a switchview with
		-- a stack navigator internally, in which case we don't want to register
		-- it. This is not ideal.
		if props.navigation and not props.navigation._childrenNavigation then
			-- note that this should really be `Events.DidFocus` but there
			-- appears to be an RN bug where it does not fire for nested
			-- stack navigators (it appears to fire 2 times, but stops after).
			sub = props.navigation.addListener(Events.WillFocus, function()
				if ref.current then
					registerFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.RouterView, ref.current)
					focusGuiObject(ref.current)
				end
			end)
		end
		return function()
			if sub then
				sub.remove()
				if ref.current then
					deRegisterFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.RouterView, ref.current)
				end
			end
		end
	end, { props.navigation, focusGuiObject, registerFocusNavigationRoot, deRegisterFocusNavigationRoot })

	return React.createElement(FocusNavigableWrapper, {
		ref = rootBindingsRef,
		onSelectUp = onSelectUp,
	}, React.createElement(SceneView, props))
end
return SceneViewWithFocusRoot
