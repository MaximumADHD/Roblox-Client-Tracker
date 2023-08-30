--!nonstrict
return function()
	local FocusArea = require(script.Parent.FocusArea)
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local act = ReactRoblox.act

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local RoactNavigation = require(CorePackages.RoactNavigation)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Cryo = require(CorePackages.Cryo)
	local Rodux = require(CorePackages.Rodux)
	local common = require(script.Parent.common)
	local GetGuiServiceSelectEnabled = require(script.Parent.GetGuiServiceSelectEnabled)

	local guiServiceSelectEnabled

	beforeAll(function()
		guiServiceSelectEnabled = GetGuiServiceSelectEnabled()
	end)

	local function createWrapper(props, children)
		local Wrapper = Roact.Component:extend("Wrapper")
		function Wrapper:render()
			return Roact.createElement(
				FocusArea,
				Cryo.Dictionary.join({ subscribeToNavigationEvents = true }, props),
				children
			)
		end

		return Wrapper
	end

	local function createStore()
		local roduxMiddleware = { Rodux.thunkMiddleware }

		local initialState = { ControllerMode = true }

		local reducer = function(state)
			return state
		end

		return Rodux.Store.new(reducer, initialState, roduxMiddleware)
	end

	local function createElement(navigator, testStore)
		local appContainer = RoactNavigation.createAppContainer(navigator)
		local ref = Roact.createRef()

		local element = Roact.createElement(appContainer, {
			[Roact.Ref] = ref,
		})

		if testStore then
			element = Roact.createElement(RoactRodux.StoreProvider, {
				store = testStore,
			}, { element })
		end

		return { element = element, ref = ref }
	end

	local function createTree(navigator, testStore)
		local parent = Instance.new("ScreenGui", CoreGui)
		local createResult = createElement(navigator, testStore)
		local element = createResult.element
		local appContainerRef = createResult.ref

		local returnObj = {
			root = parent,
			element = element,
			appContainerRef = appContainerRef,
			cleanup = function(instance)
				Roact.unmount(instance)
				parent:Destroy()
			end,
			mount = function()
				return Roact.mount(element, parent)
			end,
		}

		return returnObj
	end

	describe("Test functionality based on integrations with RoactNavigation", function()
		local function createNavigator(focusAreaConfig, navOptions)
			local navConfig = {}

			for k, v in pairs(focusAreaConfig) do
				local props = v.props or {}
				local children = v[Roact.Children] or {}

				table.insert(navConfig, { [k] = createWrapper(props, children) })
			end

			return RoactNavigation.createRobloxStackNavigator(navConfig, navOptions)
		end

		local function createMultipleScreens(navigator: any, testStore: any)
			local tree = createTree(navigator, testStore)
			tree.instance = tree.mount()

			-- Allow navigation events to trigger controller updates
			act(function()
				wait()
			end)

			return tree
		end

		local function navigate(screenName: string, focusAreaConfig, navOptions, testStore, mountResult)
			navOptions.initialRouteName = screenName
			local newNavigator = createNavigator(focusAreaConfig, navOptions)
			local newMountResult = createTree(newNavigator, testStore)

			Roact.update(mountResult.instance, newMountResult.element)
			act(function()
				wait()
			end)
		end

		it("should check each screen blurs/focuses on navigation", function()
			if not guiServiceSelectEnabled then
				return
			end

			local testStore = createStore()

			local focusAreaConfig = {
				Screen1 = {
					[Roact.Children] = { Button1 = Roact.createElement("TextButton") },
				},
				Screen2 = {
					[Roact.Children] = { Button2 = Roact.createElement("TextButton") },
				},
			}

			local navOptions = {
				initialRouteName = "Screen1",
				overlayEnabled = true,
				absorbInput = false,
			}

			local navigator = createNavigator(focusAreaConfig, navOptions)
			local mountResult = createMultipleScreens(navigator, testStore)

			-- Check that first selection is as expected
			expect(common.getSelection()).never.toBeNil()
			-- No children so Screen should be selected on screen1
			expect((common.getSelection() :: GuiObject).Name).toBe("Scene")
			expect((common.getSelection() :: GuiObject):FindFirstChild("Button1", true)).never.toBeNil()

			-- Navigate to next screen
			local ref = mountResult.appContainerRef
			expect(ref.current._navigation.navigate).never.toBeNil()
			navigate("Screen2", focusAreaConfig, navOptions, testStore, mountResult)

			-- Check that selection on second screen is as expected
			expect(common.getSelection()).never.toBeNil()
			-- No children so Screen should be selected on screen2
			expect((common.getSelection() :: GuiObject).Name).toBe("Scene")
			expect((common.getSelection() :: GuiObject):FindFirstChild("Button2", true)).never.toBeNil()

			-- Destroy instances
			mountResult.cleanup(mountResult.instance)
		end)
	end)
end
