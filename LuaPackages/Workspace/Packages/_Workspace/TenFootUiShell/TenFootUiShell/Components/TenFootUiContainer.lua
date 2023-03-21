local CoreGui = game:GetService("CoreGui")

local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local createTenFootUiSwitchNavigator = require(TenFootUiShell.ReactNavigationExtend.createTenFootUiSwitchNavigator)

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
	}, { buttons })
end

local function MainScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Discover"] = function()
				props.navigation.navigate({ routeName = "Discover" })
			end,
		},
	})
end

local function DiscoverScreen(props: ScreenProps)
	return React.createElement(ScreenWithButtons, {
		buttons = {
			["Home"] = function()
				props.navigation.navigate({ routeName = "Home" })
			end,
		},
	})
end

local function TenFootUiContainer(props: Props)
	local surfaceGuiContainer: Instance = CoreGui:FindFirstChild(TenFootUiSurfaceGuiFolderName)
	if not surfaceGuiContainer then
		local folder = Instance.new("Folder")
		folder.Name = TenFootUiSurfaceGuiFolderName
		folder.Parent = CoreGui
		surfaceGuiContainer = folder
	end

	local workspaceContainer: Instance = workspace:FindFirstChild(TenFootUiWorkspaceFolderName)
	if not workspaceContainer then
		local folder = Instance.new("Folder")
		folder.Name = TenFootUiWorkspaceFolderName
		folder.Parent = workspace
		workspaceContainer = folder
	end

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

	local appContainer = RoactNavigation.createAppContainer(rootNavigator)

	return React.createElement(appContainer)
end

return TenFootUiContainer
