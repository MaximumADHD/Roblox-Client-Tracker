local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local Components = SocialLibraries.Components
local ToastScreen = require(Components.ToastScreen)

local TestNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		["TestScreen"] = {
			screen = function(navProps)
				return Roact.createElement("TextButton", {
					Text = "Show Toast",
					[Roact.Event.Activated] = function()
						navProps.navigation.navigate("ToastScreen", {
							toastProps = {
								toastContent = {
									toastTitle = "Hello I am simple toast",
									toastSubtitle = "I will disappear in 5 sec",
									swipeUpDismiss = true,
									onAppeared = function()
										warn("onAppeared")
									end,
									onActivated = function()
										warn("onActivated")
									end,
									onDismissed = function()
										warn("onDismissed")
									end,
								},
								duration = 5,
							}
						})
					end,
					Size = UDim2.new(0, 100, 0, 40),
				})
			end,
		},
	},
	{
		["ToastScreen"] = {
			screen = ToastScreen,
			navigationOptions = {
				overlayEnabled = true,
				overlayTransparency = 1,
				absorbInput = false,
				renderUnderlyingPage = true,
			},
		},
	},
}, {
	mode = RoactNavigation.StackPresentationStyle.Overlay,
})

local ToastScreenStory = Roact.Component:extend("ToastScreenStory")

function ToastScreenStory:init()
	self.navigationAppContainer = RoactNavigation.createAppContainer(TestNavigator)
end

function ToastScreenStory:render()
	return Roact.createElement(self.navigationAppContainer)
end

return Roact.createElement(ToastScreenStory)
