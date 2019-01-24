return {
	createTopBarStackNavigator = require(script.createTopBarStackNavigator),
	createBottomTabNavigator = require(script.createBottomTabNavigator),

	EventsAdapter = require(script.views.NavigationEventsAdapter),

	withNavigation = require(script.views.withNavigation),

	Events = require(script.NavigationEvents),
	Actions = require(script.NavigationActions),
	StackActions = require(script.StackActions),
}
