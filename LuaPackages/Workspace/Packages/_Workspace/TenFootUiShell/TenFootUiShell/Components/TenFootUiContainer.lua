local CoreGui = game:GetService("CoreGui")

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local RoactNavigation = require(Packages.RoactNavigation)

local useTenFootUiSceneManager = require(TenFootUiShell.Hooks.useTenFootUiSceneManager)
local createTenFootUiSwitchNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiSwitchNavigator)
local createTenFootUiStackNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiStackNavigator)
local TenFootUiGlobalNav = require(Packages.TenFootUiGlobalNav)
local GlobalNavContainer = TenFootUiGlobalNav.GlobalNavContainer

local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local calculateTopBarAdorneeProps = SceneManagement.calculateAdorneeProps.calculateTopBarAdorneeProps
local Constants = require(TenFootUiShell.ReactNavigationExtend.Views.Constants)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiContext = TenFootUiCommon.TenFootUiContext

type TenFootUiContext = TenFootUiCommon.TenFootUiContext

local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui

type ScreenWithButtonsProps = {
	navigation: any,
	buttons: { [string]: () -> () }?,
}

type ScreenProps = {
	navigation: any,
}

type Props = {
	store: any,
	updateRoute: () -> (),
	dependencies: TenFootUiContext,
}

local TenFootUiSurfaceGuiFolderName = "TenFootUiSurfaceGuiFolder"
local TenFootUiWorkspaceFolderName = "TenFootUiWorkspaceFolder"

local function ScreenWithButtons(props: ScreenWithButtonsProps)
	local buttons: { { React.ComponentType<any> } } = {
		React.createElement("UIListLayout", {
			key = "uilistlayout",
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, 8),
		}),
	}

	if props.buttons then
		for name, callback in props.buttons do
			local button = React.createElement(
				"TextButton",
				{
					key = name,
					BackgroundTransparency = 0.3,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					Font = Enum.Font.Gotham,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.new(0, 0, 0, 40),
					Text = name,
					TextSize = 18,
					TextColor3 = Color3.new(0, 0, 0),
					[React.Event.Activated] = function()
						callback()
					end,
				},
				React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
				}),
				React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				})
			)
			table.insert(buttons, button)
		end
	end

	return React.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, { buttons })
end

local function HomeScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Home"] = function()
				props.navigation.navigate({ routeName = "Home" })
			end,
		},
	})
end

local function GamesScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Games"] = function()
				props.navigation.navigate({ routeName = "ExpDetails" })
			end,
		},
	})
end

local function ExpDetailsScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["ExpDetails"] = function()
				props.navigation.navigate({ routeName = "Games" })
			end,
		},
	})
end

local function getOrCreateSurfaceGuiContainer(): Instance
	local surfaceGuiContainer: Instance = CoreGui:FindFirstChild(TenFootUiSurfaceGuiFolderName)
	if not surfaceGuiContainer then
		local folder = Instance.new("Folder")
		folder.Name = TenFootUiSurfaceGuiFolderName
		folder.Parent = CoreGui
		surfaceGuiContainer = folder
	end

	return surfaceGuiContainer
end

local function getOrCreateWorkSpaceContainer(): Instance
	local workspaceContainer: Instance = workspace:FindFirstChild(TenFootUiWorkspaceFolderName) :: Instance
	if not workspaceContainer then
		local folder = Instance.new("Folder")
		folder.Name = TenFootUiWorkspaceFolderName
		folder.Parent = workspace
		workspaceContainer = folder
	end
	return workspaceContainer
end

local function createAppContainer()
	local surfaceGuiContainer = getOrCreateSurfaceGuiContainer()
	local workspaceContainer = getOrCreateWorkSpaceContainer()

	local navigationConfig = {
		initialRouteName = "Home",
		surfaceGuiContainer = surfaceGuiContainer,
		worldContainer = workspaceContainer,
	}

	-- This is placeholder not production code.
	local placeHolderStackNavigator = createTenFootUiStackNavigator({
		{
			Games = {
				screen = GamesScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			ExpDetails = {
				screen = ExpDetailsScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
	}, {
		surfaceGuiContainer = surfaceGuiContainer,
		worldContainer = workspaceContainer,
	})

	local InnerNavigator = createTenFootUiSwitchNavigator({
		{
			Home = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			Games = placeHolderStackNavigator,
		},
		{
			AvatarExperienceRoot = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			Chat = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			SearchPage = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			PurchaseRobux = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			More = {
				screen = HomeScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		-- {
		-- 	Landing = {
		-- 		screen = LandingScreen,
		-- 		navigationOptions = {
		-- 			screenKind = "fullscreen"
		-- 		}
		-- 	},
		-- },
	}, navigationConfig)

	local topBarDims: Vector3, topBarCframe: CFrame =
		calculateTopBarAdorneeProps(Constants.TopbarHeightRatio, Constants.DefaultDistanceToCamera)

	local GlobalNavBar = React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = topBarDims,
		adorneeCFrame = topBarCframe,
		canvasSize = Constants.TopbarCanvasSize,
		alwaysOnTop = true,
		isVisible = true,
		name = "GlobalNavBar",
		adorneeParent = navigationConfig.worldContainer,
		surfaceGuiParent = navigationConfig.surfaceGuiContainer,
		children = React.createElement(GlobalNavContainer),
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

local function TenFootUiContainer(props: Props)
	useTenFootUiSceneManager()

	local TenFootUiAppContainer = createAppContainer()
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
