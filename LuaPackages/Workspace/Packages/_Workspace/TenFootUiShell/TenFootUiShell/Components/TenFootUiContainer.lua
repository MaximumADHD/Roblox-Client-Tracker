local CoreGui = game:GetService("CoreGui")

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local Constants = require(TenFootUiShell.Constants)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local RoactNavigation = require(Packages.RoactNavigation)

local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)
local createTenFootUiNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiNavigator)
local TenFootUiGlobalNav = require(Packages.TenFootUiGlobalNav)
local GlobalNavContainer = TenFootUiGlobalNav.GlobalNavContainer

local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local calculateTopBarAdorneeProps = SceneManagement.calculateAdorneeProps.calculateTopBarAdorneeProps
local RnConstants = require(TenFootUiShell.ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiContext = TenFootUiCommon.TenFootUiContext
local FocusNavigationRegistryProvider = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).Provider
local FocusNavigableWrapper = require(script.Parent.FocusNavigableWrapper)
local useFocusRegistryEntry = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useFocusRegistryEntry
local useRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useRegisterFocusNavigableSurface
local useDeRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useDeRegisterFocusNavigableSurface
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local useRootFocusNavigationBindings = require(TenFootUiShell.Hooks.useRootFocusNavigationBindings)

type TenFootUiContext = TenFootUiCommon.TenFootUiContext
type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig

local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui

local function getOrCreateSurfaceGuiContainer(): Instance
	local surfaceGuiContainer: Instance = CoreGui:FindFirstChild(Constants.SURFACE_GUI_FOLDER_NAME)
	if not surfaceGuiContainer then
		local folder = Instance.new("Folder")
		folder.Name = Constants.SURFACE_GUI_FOLDER_NAME
		folder.Parent = CoreGui
		surfaceGuiContainer = folder
	end

	return surfaceGuiContainer
end

local function getOrCreateWorkSpaceContainer(): Instance
	local workspaceContainer: Instance = workspace:FindFirstChild(Constants.WORKSPACE_FOLDER_NAME) :: Instance
	if not workspaceContainer then
		local folder = Instance.new("Folder")
		folder.Name = Constants.WORKSPACE_FOLDER_NAME
		folder.Parent = workspace
		workspaceContainer = folder
	end
	return workspaceContainer
end

type GlobalNavBarSurfaceProps = {
	adorneeSize: Vector3,
	adorneeCFrame: CFrame,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
}

--[[
	TODO: This should be moved into a TenFootUiLayout component when we're ready
	to refactor.
]]
local function GlobalNavBarSurface(props: GlobalNavBarSurfaceProps)
	local onSelectDown = useFocusRegistryEntry(FocusNavigableSurfaceIdentifierEnum.RouterView)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local deRegisterFocusNavigationRoot = useDeRegisterFocusNavigableSurface()
	local ref = React.useRef(nil :: GuiObject?)
	local rootBindingsRef: React.Ref<Instance> = useRootFocusNavigationBindings(ref :: { current: Instance? })

	React.useEffect(function()
		if ref.current then
			registerFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.NavBar, ref.current)
		end
		return function()
			if ref.current then
				deRegisterFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.NavBar, ref.current)
			end
		end
	end, { registerFocusNavigationRoot, deRegisterFocusNavigationRoot })

	return React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = props.adorneeSize,
		adorneeCFrame = props.adorneeCFrame,
		adorneeAnchored = true,
		canvasSize = RnConstants.TOP_BAR_CANVAS_SIZE,
		alwaysOnTop = true,
		isVisible = true,
		name = "GlobalNavBar",
		adorneeParent = props.adorneeParent,
		surfaceGuiParent = props.surfaceGuiParent,
		surfaceGuiChildren = React.createElement(FocusNavigableWrapper, {
			ref = rootBindingsRef,
			onSelectDown = onSelectDown,
		}, React.createElement(GlobalNavContainer)),
	})
end

local function createAppContainer(routerConfig: TenFootUiRouterConfig)
	local surfaceGuiContainer = getOrCreateSurfaceGuiContainer()
	local workspaceContainer = getOrCreateWorkSpaceContainer()

	local navigatorConfig = {
		initialRouteName = "Home",
		surfaceGuiContainer = surfaceGuiContainer,
		worldContainer = workspaceContainer,
	}

	local InnerNavigator = createTenFootUiNavigator(routerConfig, navigatorConfig)

	local topBarDims: Vector3, topBarCframe: CFrame =
		calculateTopBarAdorneeProps(RnConstants.TOP_BAR_HEIGHT_RATIO, RnConstants.DEFAULT_SCREEN_DISTANCE_TO_CAMERA)

	local TenFootUiRootNavigator = React.Component:extend("TenFootUiRootNavigator")
	TenFootUiRootNavigator.router = InnerNavigator.router

	function TenFootUiRootNavigator:render()
		return React.createElement(
			React.Fragment,
			nil,
			React.createElement(GlobalNavBarSurface, {
				adorneeSize = topBarDims,
				adorneeCFrame = topBarCframe,
				adorneeParent = workspaceContainer,
				surfaceGuiParent = surfaceGuiContainer,
			}),
			React.createElement(InnerNavigator, {
				navigation = self.props.navigation,
			})
		)
	end
	return RoactNavigation.createAppContainer(TenFootUiRootNavigator)
end

type TenFootUiContainerProps = {
	dependencies: TenFootUiContext,
}

local function TenFootUiContainer(props: TenFootUiContainerProps)
	React.useLayoutEffect(function()
		TenFootUiScene.initialize()
	end, {})

	local TenFootUiAppContainer = createAppContainer(props.dependencies.routerConfig)
	local focusNav = React.useRef(FocusNavigationService.new(CoreGuiInterface))

	return React.createElement(
		ReactFocusNavigation.FocusNavigationContext.Provider,
		{ value = focusNav.current },
		React.createElement(
			TenFootUiContext.Provider,
			{ value = props.dependencies },
			React.createElement(
				FocusNavigationRegistryProvider,
				nil,
				React.createElement(TenFootUiAppContainer, { detached = true })
			)
		)
	)
end

return TenFootUiContainer
