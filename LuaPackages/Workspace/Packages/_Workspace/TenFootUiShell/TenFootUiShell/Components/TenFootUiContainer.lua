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
		calculateTopBarAdorneeProps(RnConstants.TopbarHeightRatio, RnConstants.DefaultDistanceToCamera)

	local GlobalNavBar = React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = topBarDims,
		adorneeCFrame = topBarCframe,
		canvasSize = RnConstants.TopbarCanvasSize,
		alwaysOnTop = true,
		isVisible = true,
		name = "GlobalNavBar",
		adorneeParent = navigatorConfig.worldContainer,
		surfaceGuiParent = navigatorConfig.surfaceGuiContainer,
		surfaceGuiChildren = React.createElement(GlobalNavContainer),
	})

	local TenFootUiRootNavigator = React.Component:extend("TenFootUiRootNavigator")
	TenFootUiRootNavigator.router = InnerNavigator.router

	function TenFootUiRootNavigator:render()
		return React.createElement(React.Fragment, nil, {
			GlobalNavBar = GlobalNavBar,
			InnerNavigator = React.createElement(InnerNavigator, {
				navigation = self.props.navigation,
			}),
		})
	end
	return RoactNavigation.createAppContainer(TenFootUiRootNavigator)
end

type Props = {
	dependencies: TenFootUiContext,
}

local function TenFootUiContainer(props: Props)
	React.useLayoutEffect(function()
		TenFootUiScene.initialize()
	end, {})

	local TenFootUiAppContainer = createAppContainer(props.dependencies.routerConfig)
	local focusNav = React.useRef(FocusNavigationService.new(CoreGuiInterface))

	return React.createElement(
		ReactFocusNavigation.FocusNavigationContext.Provider,
		{ value = focusNav.current },
		React.createElement(TenFootUiContext.Provider, { value = props.dependencies }, {
			TenFootUiAppContainer = React.createElement(TenFootUiAppContainer, { detached = true }),
		})
	)
end

return TenFootUiContainer
