local deprecationMessage = [[USAGE OF DEPRECATED %q API
  This version of the router config table has been deprecated. New API is:
    %s(routeConfigs, config).
    - `routeConfigs` is similar to the original `routes` field from the
      previous config API. To preserve the order of the routes, an array
      is used to pass each route.
    - `routerConfig` is the same as the previous `config` parameter in
      the previous API, except that the `routes` field has been removed.
      `initialRouteName` is optional as it's defaulted to the first route
      and `order` is optional since it's known from the routeConfigs.

    Example with the previous API:
    %s({
      routes = {
        firstRoute = FooComponent,
        secondRoute = BarComponent,
      },
      initialRouteName = "secondRoute",
      order = {"firstRoute", "secondRoute"},
    })
    Becomes with the new API:
    %s({
      { firstRoute = FooComponent },
      { secondRoute = BarComponent },
    }, {
      initialRouteName = "secondRoute",
    })
]]

local deprecationMessageShown = {}

return function(routerName)
	if deprecationMessageShown[routerName] == nil then
		deprecationMessageShown[routerName] = true
		local message = deprecationMessage:format(routerName, routerName, routerName, routerName)
		local traceback = debug.traceback(message, 3)
		warn(traceback)
	end
end
