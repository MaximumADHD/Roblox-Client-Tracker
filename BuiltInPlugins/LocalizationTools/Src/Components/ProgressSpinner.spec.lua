return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local ProgressSpinner = require(script.Parent.ProgressSpinner)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(ProgressSpinner))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render nothing when disabled", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(ProgressSpinner))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("ImageLabel")
		expect(main).to.equal(nil)
		Roact.unmount(instance)
	end)

	it("should render nothing when enabled", function()
		local storeState = {
			CloudTable = {
				IsBusy = true,
			}
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(ProgressSpinner), { StoreState = storeState })
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("ImageLabel")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end