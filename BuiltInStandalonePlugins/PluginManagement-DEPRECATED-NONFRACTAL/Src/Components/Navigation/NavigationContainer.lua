--[[
    Contains everything needed to use RoactNavigation in our app.
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local RoactNavigation = require(Plugin.Packages.RoactNavigation)

local NavigatableView = require(Plugin.Src.Components.Navigation.NavigatableView)
local ManagementMainView = require(Plugin.Src.Components.ManagementMainView)
local PluginDetails = require(Plugin.Src.Components.PluginDetails.PluginDetailsView)
local Constants = require(Plugin.Src.Util.Constants)

local function wrapAppPageForRN(pageConstructor)
	return function(props)
		return RoactNavigation.withNavigation(
			function(navigation, focused)
				return Roact.createElement(NavigatableView, {
					navigation = navigation,
				}, pageConstructor(navigation, focused) )
			end
		)
	end
end

-- A list of views we can route to. Add any new navigatable pages here.
local navigationRoutes = {
    [Constants.APP_PAGE.Main] = wrapAppPageForRN(
        function(navigation, focused)
            return Roact.createElement(ManagementMainView, {
                navigation = navigation,
            })
        end
    ),
    [Constants.APP_PAGE.Detail] = wrapAppPageForRN(
        function(navigation, focused)
            local assetId = navigation.getParam("assetId")
            return Roact.createElement(PluginDetails, {
                assetId = assetId,
                navigation = navigation,
                Size = UDim2.new(1, 0, 1, 0),
            })
        end
    ),
}

local rootNavigator = RoactNavigation.createStackNavigator({
    routes = navigationRoutes,
    initialRouteName = Constants.APP_PAGE.Main,
})

return RoactNavigation.createAppContainer(rootNavigator)