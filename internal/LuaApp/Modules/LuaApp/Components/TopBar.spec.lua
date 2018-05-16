return function()
	local TopBar = require(script.Parent.TopBar)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local SetStatusBarHeight = require(Modules.LuaApp.Actions.SetStatusBarHeight)
	local SetNavBarHeight = require(Modules.LuaApp.Actions.SetNavBarHeight)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)


	local function MockStore()
		return Rodux.Store.new(AppReducer)
	end

	local function MockTopBarElement(store)
		return mockServices({
			TopBar = Roact.createElement(TopBar, {
				showBackButton = true,
				showBuyRobux = true,
				showNotifications = true,
				showSearch = true,
				textKey = "CommonUI.Features.Label.Game",
			}),
		}, {
			includeStoreProvider = true,
			store = store
		})
	end

	it("should create and destroy without errors", function()
		local store = MockStore()
		local topBar = MockTopBarElement(store)

		local screenGui = Instance.new("ScreenGui")
		local instance = Roact.reify(topBar, screenGui)

		Roact.teardown(instance)
		store:Destruct()
	end)

	it("should update when status bar size changes", function()
		local store = MockStore()

		local defaultNavBarHeight = store:GetState().TopBar.navBarHeight
		local newStatusBarHeight = 100
		store:Dispatch(SetStatusBarHeight(newStatusBarHeight))

		local topBar = MockTopBarElement(store)
		local container = Instance.new("ScreenGui")
		local instance = Roact.reify(topBar, container, "TopBar")

		expect(container.TopBar.AbsoluteSize.Y).to.equal(defaultNavBarHeight + newStatusBarHeight)

		Roact.teardown(instance)
		store:Destruct()
	end)

	it("should update when nav bar size changes", function()
		local store = MockStore()

		local defaultStatusBarHeight = store:GetState().TopBar.statusBarHeight
		local newNavBarHeight = 100
		store:Dispatch(SetNavBarHeight(newNavBarHeight))

		local topBar = MockTopBarElement(store)
		local container = Instance.new("ScreenGui")
		local instance = Roact.reify(topBar, container, "TopBar")

		expect(container.TopBar.AbsoluteSize.Y).to.equal(defaultStatusBarHeight + newNavBarHeight)

		Roact.teardown(instance)
		store:Destruct()
	end)
end