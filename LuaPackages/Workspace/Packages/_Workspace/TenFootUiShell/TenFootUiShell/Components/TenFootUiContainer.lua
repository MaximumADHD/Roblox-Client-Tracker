local CoreGui = game:GetService("CoreGui")

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local Constants = require(TenFootUiShell.Constants)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local RoactNavigation = require(Packages.RoactNavigation)
local AppCommonLib = require(Packages.AppCommonLib)

local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)
local createTenFootUiNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiNavigator)
local TenFootUiGlobalNav = require(Packages.TenFootUiGlobalNav)
local GlobalNavContainer = TenFootUiGlobalNav.GlobalNavContainer

local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local calculateTopBarAdorneeProps = SceneManagement.calculateAdorneeProps.calculateTopBarAdorneeProps
local calculateControllerBarAdorneeProps = SceneManagement.calculateAdorneeProps.calculateControllerBarAdorneeProps
local RnConstants = require(TenFootUiShell.ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiContext = TenFootUiCommon.TenFootUiContext
local FocusNavigationRegistryProvider = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).Provider
local FocusNavigableWrapper = require(script.Parent.FocusNavigableWrapper)
local useGlobalFocusHandler = require(TenFootUiShell.Hooks.useGlobalFocusHandler)
local useFocusRegistryEntry = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useFocusRegistryEntry
local useRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useRegisterFocusNavigableSurface
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local useRootFocusNavigationBindings = require(TenFootUiShell.Hooks.useRootFocusNavigationBindings)
local useProcessNavigationStateChange =
	require(TenFootUiShell.ReactNavigationExtend.Hooks.useProcessNavigationStateChange)
local RnBypassAdapter = require(TenFootUiShell.ReactNavigationExtend.RnBypassAdapter)
local ControllerBarContainer = require(Packages.TenFootUiControllerBar).ControllerBarContainer

type TenFootUiContext = TenFootUiCommon.TenFootUiContext
type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig
type FocusNavigationService = ReactFocusNavigation.FocusNavigationService
type Signal = AppCommonLib.Signal

local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui

local GetFFlagMoveFocusNavigationProvider = require(Packages.SharedFlags).GetFFlagMoveFocusNavigationProvider

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
	TODO (CLIXBOX-2718): This should be moved into a TenFootUiLayout component when we're ready
	to refactor.
]]
local function GlobalNavBarSurface(props: GlobalNavBarSurfaceProps)
	local onSelectDown = useFocusRegistryEntry(FocusNavigableSurfaceIdentifierEnum.RouterView)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local globalNavInstance, setGlobalNavInstance = React.useState(nil :: GuiObject?)
	local rootBindingsRef: React.Ref<Instance> = useRootFocusNavigationBindings(setGlobalNavInstance)

	React.useEffect(function()
		if globalNavInstance then
			registerFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.NavBar, globalNavInstance)
		end
	end, { registerFocusNavigationRoot, globalNavInstance } :: { any })

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

--[[
	TODO (CLIXBOX-2718): This should be moved into a TenFootUiLayout component when we're ready
	to refactor.
]]
local function ControllerBarSurface(props: GlobalNavBarSurfaceProps)
	return React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = props.adorneeSize,
		adorneeCFrame = props.adorneeCFrame,
		canvasSize = RnConstants.CONTROLLER_BAR_CANVAS_SIZE,
		alwaysOnTop = true,
		isVisible = true,
		name = "ControllerbarSurface",
		adorneeParent = props.adorneeParent,
		surfaceGuiParent = props.surfaceGuiParent,
		adorneeAnchored = true,
		surfaceGuiChildren = React.createElement(ControllerBarContainer),
	})
end

local function createAppContainer(routerConfig: TenFootUiRouterConfig, rnBypassActionSignal: Signal)
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

	local controllerBarDims: Vector3, controllerBarCframe: CFrame = calculateControllerBarAdorneeProps(
		RnConstants.CONTROLLER_BAR_HEIGHT_RATIO,
		RnConstants.DEFAULT_SCREEN_DISTANCE_TO_CAMERA - 1
	)

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
			}),
			React.createElement(RnBypassAdapter, {
				rnBypassActionSignal = rnBypassActionSignal,
			}),
			React.createElement(ControllerBarSurface, {
				adorneeSize = controllerBarDims,
				adorneeCFrame = controllerBarCframe,
				adorneeParent = workspaceContainer,
				surfaceGuiParent = surfaceGuiContainer,
			})
		)
	end
	return RoactNavigation.createAppContainer(TenFootUiRootNavigator)
end

type TenFootUiContainerProps = {
	dependencies: TenFootUiContext,
	rnBypassActionSignal: Signal,
}

--[[
	TODO (CLIXBOX-2718): This should be moved into the container when we refactor the
	providers into a parent component
]]
local function GlobalEffects(props)
	useGlobalFocusHandler()
	return React.createElement(React.Fragment, nil, props.children)
end

local function TenFootUiContainer(props: TenFootUiContainerProps): React.ReactElement
	React.useLayoutEffect(function()
		TenFootUiScene.initialize()
	end, {})

	local processNavigationStateChange = useProcessNavigationStateChange(props.dependencies.ApplyRoactNavigationHistory)

	local TenFootUiAppContainer = createAppContainer(props.dependencies.routerConfig, props.rnBypassActionSignal)
	local focusNav = React.useRef(FocusNavigationService.new(CoreGuiInterface))

	local container = React.createElement(
		TenFootUiContext.Provider,
		{ value = props.dependencies },
		React.createElement(
			FocusNavigationRegistryProvider,
			nil,
			React.createElement(
				GlobalEffects,
				nil,
				React.createElement(TenFootUiAppContainer, {
					detached = true,
					onNavigationStateChange = processNavigationStateChange,
				})
			)
		)
	)

	if GetFFlagMoveFocusNavigationProvider() then
		return container
	else
		return React.createElement(
			ReactFocusNavigation.FocusNavigationContext.Provider,
			{ value = focusNav.current },
			container
		)
	end
end

return TenFootUiContainer
