local CoreGui = game:GetService("CoreGui")

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local RoactNavigation = require(Packages.RoactNavigation)

local useTenFootUiSceneManager = require(TenFootUiShell.Utils.useTenFootUiSceneManager)
local createTenFootUiSwitchNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiSwitchNavigator)

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
		BackgroundTransparency = 0.8,
	}, { buttons })
end

local function MainScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Discover"] = function()
				props.navigation.navigate("Discover")
			end,
		},
	})
end

local function DiscoverScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Home"] = function()
				props.navigation.navigate("Home")
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
	local workspaceContainer: Instance = workspace:FindFirstChild(TenFootUiWorkspaceFolderName)
	if not workspaceContainer then
		local folder = Instance.new("Folder")
		folder.Name = TenFootUiWorkspaceFolderName
		folder.Parent = workspace
		workspaceContainer = folder
	end
	return workspaceContainer
end

local function TenFootUiContainer(props: Props)
	useTenFootUiSceneManager()

	local surfaceGuiContainer = getOrCreateSurfaceGuiContainer()
	local workspaceContainer = getOrCreateWorkSpaceContainer()

	-- This is placeholder not production code.
	local rootNavigator = createTenFootUiSwitchNavigator({
		{
			Home = {
				screen = MainScreen,
				navigationOptions = {
					screenKind = "Default",
				},
			},
		},
		{
			Discover = {
				screen = DiscoverScreen,
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
	}, {
		initialRouteName = "Home",
		surfaceGuiContainer = surfaceGuiContainer,
		worldContainer = workspaceContainer,
	})

	local focusNav = React.useRef(FocusNavigationService.new(CoreGuiInterface))

	local appContainer = RoactNavigation.createAppContainer(rootNavigator)

	return React.createElement(ReactFocusNavigation.FocusNavigationContext.Provider, {
		value = focusNav.current,
	}, React.createElement(appContainer))
end

return TenFootUiContainer
