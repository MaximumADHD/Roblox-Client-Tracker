local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Modules = CoreGui.RobloxGui.Modules
local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)


--[[
	Helper function for running Rhodium tests that instantiates a component wrapped
	with a configurable set of mock services.

	It will invoke the given test function with a path string that corresponds
	to the component's root Instance.

	@param test The test function to invoke with the path to the component's root Instance
	@param component The component under test
	@param initialStoreState The initial Rodux store staste
	@param props The props to pass to the component under test
	@param reducer The reducer to use when creating the rodux store
]]
return function(test, component, reducer, initialStoreState, props)
	initialStoreState = initialStoreState or {}
	props = props or {}

	local store = Rodux.Store.new(reducer, initialStoreState, { Rodux.thunkMiddleware })

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		Root = Roact.createElement(component, props)
	})

	local name = tostring(component)

	local root = Roact.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		[name] = element,
	})

	local instanceName = "Test-" .. HttpService:GenerateGUID(false)
	local tree = Roact.mount(root, CoreGui, instanceName)

	local path = ("game.CoreGui.%s.*"):format(instanceName)

	local success, result = pcall(function()
		test(path)
	end)

	Roact.unmount(tree)
	if not success then
		error(result)
	end
end
