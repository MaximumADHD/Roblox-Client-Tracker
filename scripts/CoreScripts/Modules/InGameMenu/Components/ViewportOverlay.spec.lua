return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)


	local ViewportOverlay = require(script.Parent.ViewportOverlay)

	local function getMountableTree(props, storeState)
		local store = Rodux.Store.new(reducer, storeState)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ViewportOverlay = Roact.createElement(ViewportOverlay, props)
			}),
		})
	end

	describe("lifecycle", function()
		it("should create and destroy without errors", function()
			local element = getMountableTree()
			local folder = Instance.new("Folder", CoreGui)
			local instance = Roact.mount(element, folder)
			Roact.unmount(instance)
		end)

		it("should should not render input capturer if screen size is not initialized", function()
			local element = getMountableTree(nil, {screenSize = Vector2.new(0,0)})
			local folder = Instance.new("Folder", CoreGui)
			local instance = Roact.mount(element, folder)
			local inputCapturer = folder:FindFirstChild("InputCapturer", true)

			expect(inputCapturer).toBeNil()

			Roact.unmount(instance)
		end)

		it("should should render input capturer if screen size is initialized", function()
			local element = getMountableTree(nil, {screenSize = Vector2.new(1920, 1080)})
			local folder = Instance.new("Folder", CoreGui)
			local instance = Roact.mount(element, folder)
			local inputCapturer = folder:FindFirstChild("InputCapturer", true)

			expect(inputCapturer).never.toBeNil()

			Roact.unmount(instance)
		end)
	end)
end
