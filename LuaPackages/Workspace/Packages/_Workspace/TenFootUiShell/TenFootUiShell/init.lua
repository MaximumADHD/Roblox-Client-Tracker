local TenFootUiContainer = require(script.Components.TenFootUiContainer)
local createTenFootUiStackNavigator = require(script.ReactNavigationExtend.createTenFootUiStackNavigator)
local createTenFootUiSwitchNavigator = require(script.ReactNavigationExtend.createTenFootUiSwitchNavigator)
local Constants = require(script.Constants)

return {
	["jest.config"] = script["jest.config"],
	TenFootUiContainer = TenFootUiContainer,
	createTenFootUiStackNavigator = createTenFootUiStackNavigator,
	createTenFootUiSwitchNavigator = createTenFootUiSwitchNavigator,
	Constants = Constants,
}
